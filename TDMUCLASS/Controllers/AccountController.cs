using System;
using System.Web.Mvc;
using System.Data.SqlClient;
using TDMUCLASS.Models;
using PagedList;
using System.Linq;
using System.IO;
using System.Web;
using System.Collections.Generic;
using System.Reflection;
using System.Web.UI.WebControls;

namespace TDMUCLASS.Controllers
{
    public class AccountController : Controller
    {

        private dbTDMUCLASSDataContext db;

        public AccountController()
        {
            // Khởi tạo đối tượng kết nối
            db = Connect.GetConnect();
        }

        public ActionResult Home()
        {
            // Kiểm tra xem người dùng đã đăng nhập hay chưa
            if (Session["LoggedInUserId"] == null)
            {
                // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
                return RedirectToAction("Login");
            }
            return View();
        }
        public ActionResult NhanVien()
        {
            // Kiểm tra xem người dùng đã đăng nhập hay chưa
            if (Session["LoggedInUserId"] == null)
            {
                // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
                return RedirectToAction("Login");
            }
            return View();
        }

        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Home(Account acc)
        {
            if (string.IsNullOrEmpty(acc.your_name) || string.IsNullOrEmpty(acc.your_pass))
            {
                ViewBag.ErrorMessage = "Hãy nhập Tên đăng nhập và Mật khẩu.";
                return View("Login");
            }

            // Tìm kiếm tài khoản
            var user = db.TAIKHOANs.SingleOrDefault(t => t.TenDangNhap == acc.your_name);
            var nv = db.BOPHANXULYSUCOs.FirstOrDefault(a=>a.MaNhanVien == acc.your_name);

            if (user != null)
            {
                string storedPassword = user.MatKhau;
                string loaiTaiKhoan = user.LoaiTaiKhoan;

                string maSinhVienOrGiangVien = string.Empty;
                string tenHocVienOrGiangVien = string.Empty;
                string avatarPath = user.Avartar;
                string chucvu = (nv != null) ? nv.ChucVu : string.Empty;

                if (loaiTaiKhoan == "SV")
                {
                    // Lấy thông tin sinh viên
                    var student = db.SINHVIENs.SingleOrDefault(s => s.MaSinhVien == acc.your_name);

                    if (student != null)
                    {
                        maSinhVienOrGiangVien = student.MaSinhVien;
                        tenHocVienOrGiangVien = student.HoTen;
                    }
                }
                else if (loaiTaiKhoan == "GV")
                {
                    // Lấy thông tin giảng viên
                    var lecturer = db.GIANGVIENs.SingleOrDefault(g => g.MaGiangVien == acc.your_name);

                    if (lecturer != null)
                    {
                        maSinhVienOrGiangVien = lecturer.MaGiangVien;
                        tenHocVienOrGiangVien = lecturer.HoTen;
                    }
                }
                else if (loaiTaiKhoan == "NV")
                {
                    // Lấy thông tin nhan viên
                    var lecturer = db.BOPHANXULYSUCOs.SingleOrDefault(g => g.MaNhanVien == acc.your_name);

                    if (lecturer != null)
                    {
                        maSinhVienOrGiangVien = lecturer.MaNhanVien;
                        tenHocVienOrGiangVien = lecturer.HoTen;
                    }
                }

                Session["maSinhVienOrGiangVien"] = maSinhVienOrGiangVien;
                Session["tenHocVienOrGiangVien"] = tenHocVienOrGiangVien;
                Session["AvatarPath"] = avatarPath;
                Session["chucvu"] = chucvu;
                Session["loaitaikhoan"] = loaiTaiKhoan;

                if (VerifyPassword(acc.your_pass, storedPassword))
                {
                    Session["LoggedInUserId"] = acc.your_name;

                    switch (loaiTaiKhoan)
                    {
                        case "SV":
                        case "GV":
                            return RedirectToAction("Home", "Account");
                        case "NV":
                            return RedirectToAction("NhanVien", "Account");
                        default:
                            ViewBag.ErrorMessage = "Invalid account type.";
                            return View("Login");
                    }
                }
                else
                {
                    ViewBag.ErrorMessage = "Sai mật khẩu!";
                    return View("Login");
                }
            }
            else
            {
                ViewBag.ErrorMessage = "Tài khoản chưa đăng ký.Hãy liên hệ với phòng công tác sinh viên để được hỗ trợ.";
                return View("Login");
            }
        }

        private bool VerifyPassword(string enteredPassword, string storedPassword)
        {
            return enteredPassword == storedPassword;
        }

        [HttpGet]
        public ActionResult Logout()
        {
            // Xóa phiên đăng nhập bằng cách xóa các Session đã lưu
            Session.Clear();

            // Redirect đến trang chính hoặc trang đăng nhập (tùy bạn)
            return RedirectToAction("Home","TDMUCLASS");
        }

        [HttpGet]
        public ActionResult DatPhong()
        {
            // Kiểm tra xem người dùng đã đăng nhập hay chưa
            if (Session["LoggedInUserId"] == null)
            {
                // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
                return RedirectToAction("Login");
            }
            var viewModel = new DayHocPhongHoc
            {
                DayHocData = db.DAYHOCs.ToList(),
                PhongHocData = db.PHONGHOCs.ToList()
            };

            return View(viewModel);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult DatPhong(DATPHONG datphong, FormCollection f)
        {
            if (ModelState.IsValid)
            {
                datphong.MaPhongHoc = f["maPhongHoc"];
                datphong.MoTa = f["moTa"];
                datphong.TrangThai = f["trangThai"];
                datphong.MaQuanLy = f["maQuanLy"];
                datphong.MaSinhVien = f["maSinhVien"];
                datphong.MaGiangVien = f["maGiangVien"];
                db.DATPHONGs.InsertOnSubmit(datphong);
                db.SubmitChanges();

                TempData["SuccessMessage"] = "Đã đặt phòng thành công";

                // Chuyển đến trang DatPhong sau khi thêm đặt phòng thành công
                return RedirectToAction("DatPhong");
            }
            return View();
        }
        public ActionResult BookingHistory(int? page)
        {
            // Kiểm tra xem người dùng đã đăng nhập hay chưa
            if (Session["LoggedInUserId"] == null)
            {
                // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
                return RedirectToAction("Login");
            }
            int iPageNum = page ?? 1;
            int iPageSize = 100;

            // Lấy loại tài khoản và mã đăng nhập từ Session
            string loaiTaiKhoan = Session["loaitaikhoan"] as string;
            string maSinhVienOrGiangVien = Session["maSinhVienOrGiangVien"] as string;

            if (loaiTaiKhoan == "SV")
            {
                // Lọc danh sách dựa vào mã sinh viên nếu là sinh viên
                var bookings = db.DATPHONGs.Where(dp => dp.MaSinhVien == maSinhVienOrGiangVien);
                return View(bookings.OrderBy(n => n.MaSinhVien).ToPagedList(iPageNum, iPageSize));
            }
            else if (loaiTaiKhoan == "GV")
            {
                // Lọc danh sách dựa vào mã giảng viên nếu là giảng viên
                var bookings = db.DATPHONGs.Where(dp => dp.MaGiangVien == maSinhVienOrGiangVien);
                return View(bookings.OrderBy(n => n.MaGiangVien).ToPagedList(iPageNum, iPageSize));
            }
            else
            {
                // Xử lý trường hợp khác, ví dụ: hiển thị tất cả các đặt phòng
                return View(db.DATPHONGs.OrderBy(n => n.MaGiangVien).ToPagedList(iPageNum, iPageSize));
            }
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            var datphong = db.DATPHONGs.SingleOrDefault(n => n.MaDatPhong == id);
            if (datphong == null)
            {
                return HttpNotFound();
            }

            return View(datphong);
        }

        [HttpPost]
        public ActionResult Edit(DATPHONG datphong)
        {
            if (ModelState.IsValid)
            {
                var existingdatphong = db.DATPHONGs.SingleOrDefault(n => n.MaDatPhong == datphong.MaDatPhong);

                if (existingdatphong != null)
                {
                    existingdatphong.MoTa = datphong.MoTa;
                    existingdatphong.NgayBD = datphong.NgayBD;
                    existingdatphong.NgayKT = datphong.NgayKT;


                    db.SubmitChanges();
                    return RedirectToAction("BookingHistory"); // Chuyển hướng đến trang "BookingHistory"
                }
            }

            return View(datphong);

        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            var datphong = db.DATPHONGs.SingleOrDefault(n => n.MaDatPhong == id);
            if (datphong == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(datphong);
        }
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirm(int id, FormCollection f)
        {
            var datphong = db.DATPHONGs.SingleOrDefault(n => n.MaDatPhong == id);
            if (datphong == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            db.DATPHONGs.DeleteOnSubmit(datphong);
            db.SubmitChanges();

            return RedirectToAction("BookingHistory"); // Chuyển hướng đến trang "BookingHistory"
        }

        public ActionResult SuCoNV()
        {
            // Kiểm tra xem người dùng đã đăng nhập hay chưa
            if (Session["LoggedInUserId"] == null)
            {
                // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
                return RedirectToAction("Login");
            }
            // Lấy loại tài khoản và mã đăng nhập từ Session
            string loaiTaiKhoan = Session["loaitaikhoan"] as string;
            string maSinhVienOrGiangVien = Session["maSinhVienOrGiangVien"] as string;

            List<PHANCONGXULY_SUCO> pcList;

            if (loaiTaiKhoan == "NV")
            {
                // Lọc danh sách dựa vào mã sinh viên nếu là sinh viên
                pcList = db.PHANCONGXULY_SUCOs
                    .Where(dp => dp.MaNhanVien == maSinhVienOrGiangVien)
                    .OrderBy(n => n.NgayGioPhanCong)
                    .ToList();
            }
            else
            {
                // If the user is not a "NV" (Nhân viên), handle the case accordingly.
                pcList = new List<PHANCONGXULY_SUCO>();
            }

            return View(pcList);
        }

        [HttpPost]
        public ActionResult UpdateTrangThaiRB(int masuco, string action)
        {
            string maSinhVienOrGiangVien = Session["maSinhVienOrGiangVien"] as string;
            if (maSinhVienOrGiangVien != null)
            {
                // Retrieve the DATPHONG record based on MaDatPhong
                SUCOBAOTRI suco = db.SUCOBAOTRIs.SingleOrDefault(dp => dp.MaSuCoBaoTri == masuco);
                PHANCONGXULY_SUCO pc = db.PHANCONGXULY_SUCOs.SingleOrDefault(i=>i.MaSuCoBaoTri == masuco);
                QUANLY_TRANGTHIETBI qlttb = db.QUANLY_TRANGTHIETBIs.FirstOrDefault(a => a.MaTrangThietBi == suco.MaTrangThietBi);
                if (suco != null)
                {
                    // Update the TrangThai based on the action
                    if (action == "TiepNhan")
                    {
                        pc.TrangThaiXuLy = "Đã tiếp nhận";
                        suco.TinhTrangXuLy = "Đang xử lý";
                    }
                    else if(action == "TuChoi")
                    {
                        pc.TrangThaiXuLy = "Đã từ chối";
                        suco.TinhTrangXuLy = "Từ chối";
                    }
                    else if (action == "HoanThanh")
                    {
                        qlttb.TinhTrang = "Tốt";
                        pc.TrangThaiXuLy = "Xử lý thành công";
                        suco.TinhTrangXuLy = "Xử lý thành công";
                        pc.NgayGioHoanThanh = DateTime.Now;
                    }

                    // Save changes to the database
                    db.SubmitChanges();
                }

                // Redirect back to the DSDatPhong action
                return RedirectToAction("SuCoNV");
            }

            // If the user is not logged in, you might want to redirect them to the login page or handle it accordingly.
            return RedirectToAction("Login");
        }



















        // GET: BaoCaoSuCo
        private List<QUANLY_TRANGTHIETBI> GetQuanLyTrangThietBiData(int rowCount)
        {
            // Danh sách tạm để lưu dữ liệu từ bảng QUANLY_TRANGTHIETBI
            List<QUANLY_TRANGTHIETBI> temporaryList = new List<QUANLY_TRANGTHIETBI>();

            // Chuỗi kết nối đến cơ sở dữ liệu SQL Server
            //string connectionString = "Data Source=SQL8006.site4now.net;Initial Catalog=db_aa22c6_tdmuclass;User ID=db_aa22c6_tdmuclass_admin;Password=tdmuclass123";
            string connectionString = "Data Source=LAPTOP-SD6JFUCG;Initial Catalog=TDMUCLASS;Integrated Security=True";

            // Tạo kết nối đến cơ sở dữ liệu
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Mở kết nối
                connection.Open();

                // Tạo câu truy vấn SQL với giới hạn số lượng dòng trả về
                string sqlQuery = $"SELECT TOP {rowCount} * FROM QUANLY_TRANGTHIETBI";

                // Tạo đối tượng SqlCommand
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    // Tạo đối tượng SqlDataReader để đọc dữ liệu từ cơ sở dữ liệu
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Đọc từng dòng dữ liệu và thêm vào danh sách tạm
                        while (reader.Read())
                        {
                            // Tạo đối tượng QUANLY_TRANGTHIETBI và gán giá trị từ cơ sở dữ liệu
                            QUANLY_TRANGTHIETBI quanLyItem = new QUANLY_TRANGTHIETBI
                            {
                                MaPhongHoc = reader["MaPhongHoc"].ToString(),
                                MaTrangThietBi = reader["MaTrangThietBi"].ToString(),
                                TenTTB = reader["TenTTB"].ToString()
                            };

                            // Thêm đối tượng vào danh sách tạm
                            temporaryList.Add(quanLyItem);
                        }
                    }
                }
            }

            return temporaryList;
        }

        [HttpGet]
        public ActionResult BaoCaoSuCo()
        {
            var viewModel = new DayHocPhongHoc
            {
                DayHocData = db.DAYHOCs.ToList(),
                PhongHocData = db.PHONGHOCs.ToList(),
                QLTTBData = GetQuanLyTrangThietBiData(2000) // Sử dụng phương thức để lấy dữ liệu
            };

            return View(viewModel);
        }


        [HttpPost]
        [ValidateInput(false)]
        public ActionResult BaoCaoSuCo(SUCOBAOTRI baocaosuco, FormCollection f, HttpPostedFileBase fFileUpload)
        {
            QUANLY_TRANGTHIETBI qlttb = db.QUANLY_TRANGTHIETBIs.FirstOrDefault(a => a.MaTrangThietBi == f["maTTB"]);
            if (ModelState.IsValid)
            {
                qlttb.TinhTrang = "Gặp sự cố";
                // ... Các dòng code khác không thay đổi
                baocaosuco.MaPhongHoc = f["maPhongHoc"];
                baocaosuco.MoTaSuCo = f["moTaSuCo"];
                baocaosuco.ThoiGianBaoCao = Convert.ToDateTime(f["tgBC"]);
                baocaosuco.MaQuanLy = f["maQuanLy"];
                baocaosuco.MaSinhVien = f["maSinhVien"];
                baocaosuco.MaGiangVien = f["maGiangVien"];
                baocaosuco.MaTrangThietBi = f["maTTB"];
                baocaosuco.TenTrangThietBi = f["tenTTB"];
                baocaosuco.TinhTrangXuLy = f["trangThai"];

                // Lưu tên file ảnh vào cột AnhSuCo
                if (fFileUpload != null && fFileUpload.ContentLength > 0)
                {
                    string fileName = Path.GetFileName(fFileUpload.FileName);
                    string path = Path.Combine(Server.MapPath("~/img"), fileName);
                    fFileUpload.SaveAs(path);
                    baocaosuco.AnhSuCo = fileName;
                }

                // ... Các dòng code khác không thay đổi

                db.SUCOBAOTRIs.InsertOnSubmit(baocaosuco);
                db.SubmitChanges();

                TempData["SuccessMessage"] = "Đã đặt phòng thành công";

                // Chuyển đến trang DatPhong sau khi thêm đặt phòng thành công
                return RedirectToAction("BaoCaoSuCo", "Account");
            }

            return View();
        }
        public ActionResult ReportHistory(int? page)
        {
            int iPageNum = page ?? 1;
            int iPageSize = 100;

            // Lấy loại tài khoản và mã đăng nhập từ Session
            string loaiTaiKhoan = Session["loaitaikhoan"] as string;
            string maSinhVienOrGiangVien = Session["maSinhVienOrGiangVien"] as string;

            if (loaiTaiKhoan == "SV")
            {
                // Lọc danh sách dựa vào mã sinh viên nếu là sinh viên
                var reports = db.SUCOBAOTRIs.Where(rp => rp.MaSinhVien == maSinhVienOrGiangVien);
                return View(reports.OrderBy(n => n.MaSinhVien).ToPagedList(iPageNum, iPageSize));
            }
            else if (loaiTaiKhoan == "GV")
            {
                // Lọc danh sách dựa vào mã giảng viên nếu là giảng viên
                var reports = db.SUCOBAOTRIs.Where(rp => rp.MaGiangVien == maSinhVienOrGiangVien);
                return View(reports.OrderBy(n => n.MaGiangVien).ToPagedList(iPageNum, iPageSize));
            }
            else
            {
                // Xử lý trường hợp khác, ví dụ: hiển thị tất cả các đặt phòng
                return View(db.SUCOBAOTRIs.ToPagedList(iPageNum, iPageSize));
            }
        }

        [HttpGet]
        public ActionResult EditRB(int id)
        {
            var baocao = db.SUCOBAOTRIs.SingleOrDefault(n => n.MaSuCoBaoTri == id);
            if (baocao == null)
            {
                return HttpNotFound();
            }

            return View(baocao);
        }

        [HttpPost]
        public ActionResult EditRB(SUCOBAOTRI baocao)
        {
            if (ModelState.IsValid)
            {
                var existingbaocao = db.SUCOBAOTRIs.SingleOrDefault(n => n.MaSuCoBaoTri == baocao.MaSuCoBaoTri);

                if (existingbaocao != null)
                {
                    db.SubmitChanges();
                    return RedirectToAction("ReportHistory"); // Chuyển hướng đến trang "BookingHistory"
                }
            }

            return View(baocao);

        }

        [HttpGet]
        public ActionResult DeleteRB(int id)
        {
            var baocao = db.SUCOBAOTRIs.SingleOrDefault(n => n.MaSuCoBaoTri == id);
            if (baocao == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(baocao);
        }
        [HttpPost, ActionName("DeleteRB")]
        public ActionResult DeleteConfirmRB(int id, FormCollection f)
        {
            var baocao = db.SUCOBAOTRIs.SingleOrDefault(n => n.MaSuCoBaoTri == id);
            if (baocao == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            db.SUCOBAOTRIs.DeleteOnSubmit(baocao);
            db.SubmitChanges();

            return RedirectToAction("ReportHistory"); // Chuyển hướng đến trang "BookingHistory"
        }

        public ActionResult ThoiKhoaBieu()
        {
            List<ThoiKhoaBieuViewModel> thoiKhoaBieuList = new List<ThoiKhoaBieuViewModel>();

            try
            {
                // Lấy đối tượng kết nối từ AccountController
                var dbContext = db;

                var thoiKhoaBieuQuery = from tkb in dbContext.THOIKHOABIEUs
                                        join lop in dbContext.LOPHOCs on tkb.MaLopHoc equals lop.MaLopHoc
                                        join gv in dbContext.GIANGVIENs on lop.MaGiangVien equals gv.MaGiangVien
                                        join dk in dbContext.DANGKYMONHOCs on lop.MaMonHoc equals dk.MaMonHoc
                                        join mh in dbContext.MONHOCs on dk.MaMonHoc equals mh.MaMonHoc
                                        join sv in dbContext.SINHVIENs on dk.MaSinhVien equals sv.MaSinhVien
                                        where sv.MaSinhVien == Session["LoggedInUserId"].ToString()
                                        select new ThoiKhoaBieuViewModel
                                        {
                                            MaSinhVien = sv.MaSinhVien,
                                            TenGiangVien =gv.HoTen,
                                            PhongHoc = tkb.MaPhongHoc,
                                            TenMonHoc = mh.TenMonHoc,
                                            MaLop = lop.MaLopHoc,
                                            ThuNgayHoc = Convert.ToInt32(tkb.ThuNgayHoc),
                                            TuNgay = Convert.ToDateTime(tkb.NgayBatDau),
                                            DenNgay = Convert.ToDateTime(tkb.NgayKetThuc),
                                            TietBD = Convert.ToInt32(tkb.TietBatDau),
                                            TietKT = Convert.ToInt32(tkb.TietKetThuc),

                                            // Các thông tin khác từ THOKHOABIEU nếu cần
                                        };

                thoiKhoaBieuList = thoiKhoaBieuQuery.ToList();

                return View(thoiKhoaBieuList);
            }
            catch (Exception ex)
            {
                // Xử lý lỗi kết nối cơ sở dữ liệu
                ViewBag.ErrorMessage = $"Lỗi kết nối cơ sở dữ liệu: {ex.Message}";
                return View("Error");
            }
        }
        public ActionResult TKBDatPhongSV()
        {
            List<ThoiKhoaBieuViewModel> thoiKhoaBieuList = new List<ThoiKhoaBieuViewModel>();

            try
            {
                // Lấy đối tượng kết nối từ AccountController
                var dbContext = db;

                var thoiKhoaBieuQuery = from dp in dbContext.DATPHONGs
                                        join sv in dbContext.SINHVIENs on dp.MaSinhVien equals sv.MaSinhVien
                                        where sv.MaSinhVien == Session["LoggedInUserId"].ToString() && dp.TrangThai == "Đã duyệt"
                                        select new ThoiKhoaBieuViewModel
                                        {
                                            MaGiangVien = sv.MaSinhVien,
                                            TenGiangVien = sv.HoTen,
                                            PhongHoc = dp.MaPhongHoc,
                                            MoTaDP = dp.MoTa,
                                            TuNgay = Convert.ToDateTime(dp.NgayBD),
                                            DenNgay = Convert.ToDateTime(dp.NgayKT),
                                            // Các thông tin khác từ THOKHOABIEU nếu cần
                                        };

                thoiKhoaBieuList = thoiKhoaBieuQuery.ToList();

                return PartialView(thoiKhoaBieuList);
            }
            catch (Exception ex)
            {
                // Xử lý lỗi kết nối cơ sở dữ liệu
                ViewBag.ErrorMessage = $"Lỗi kết nối cơ sở dữ liệu: {ex.Message}";
                return PartialView("Error");
            }
        }

        public ActionResult LichGiangDay()
        {
            List<ThoiKhoaBieuViewModel> thoiKhoaBieuList = new List<ThoiKhoaBieuViewModel>();

            try
            {
                // Lấy đối tượng kết nối từ AccountController
                var dbContext = db;

                var thoiKhoaBieuQuery = from tkb in dbContext.THOIKHOABIEUs
                                        join lop in dbContext.LOPHOCs on tkb.MaLopHoc equals lop.MaLopHoc
                                        join mh in dbContext.MONHOCs on lop.MaMonHoc equals mh.MaMonHoc
                                        join gv in dbContext.GIANGVIENs on lop.MaGiangVien equals gv.MaGiangVien
                                        where gv.MaGiangVien == Session["LoggedInUserId"].ToString()
                                        select new ThoiKhoaBieuViewModel
                                        {
                                            MaGiangVien = gv.MaGiangVien,
                                            TenGiangVien = gv.HoTen,
                                            SLSV = Convert.ToInt32(lop.SoLuongSV),
                                            MaLop = lop.MaLopHoc,
                                            PhongHoc = tkb.MaPhongHoc,
                                            TenMonHoc = mh.TenMonHoc,
                                            ThuNgayHoc = Convert.ToInt32(tkb.ThuNgayHoc),
                                            TuNgay = Convert.ToDateTime(tkb.NgayBatDau),
                                            DenNgay = Convert.ToDateTime(tkb.NgayKetThuc),
                                            TietBD = Convert.ToInt32(tkb.TietBatDau),
                                            TietKT = Convert.ToInt32(tkb.TietKetThuc),
                                            // Các thông tin khác từ THOKHOABIEU nếu cần
                                        };

                thoiKhoaBieuList = thoiKhoaBieuQuery.ToList();

                return View(thoiKhoaBieuList);
            }
            catch (Exception ex)
            {
                // Xử lý lỗi kết nối cơ sở dữ liệu
                ViewBag.ErrorMessage = $"Lỗi kết nối cơ sở dữ liệu: {ex.Message}";
                return View("Error");
            }
        }
        public ActionResult TKBDatPhongGV()
        {
            List<ThoiKhoaBieuViewModel> thoiKhoaBieuList = new List<ThoiKhoaBieuViewModel>();

            try
            {
                // Lấy đối tượng kết nối từ AccountController
                var dbContext = db;

                var thoiKhoaBieuQuery = from dp in dbContext.DATPHONGs
                                        join gv in dbContext.GIANGVIENs on dp.MaGiangVien equals gv.MaGiangVien
                                        where gv.MaGiangVien == Session["LoggedInUserId"].ToString() && dp.TrangThai == "Đã duyệt"
                                        select new ThoiKhoaBieuViewModel
                                        {
                                            MaGiangVien = gv.MaGiangVien,
                                            TenGiangVien = gv.HoTen,
                                            PhongHoc = dp.MaPhongHoc,
                                            MoTaDP = dp.MoTa,
                                            TuNgay = Convert.ToDateTime(dp.NgayBD),
                                            DenNgay = Convert.ToDateTime(dp.NgayKT),
                                            // Các thông tin khác từ THOKHOABIEU nếu cần
                                        };

                thoiKhoaBieuList = thoiKhoaBieuQuery.ToList();

                return PartialView(thoiKhoaBieuList);
            }
            catch (Exception ex)
            {
                // Xử lý lỗi kết nối cơ sở dữ liệu
                ViewBag.ErrorMessage = $"Lỗi kết nối cơ sở dữ liệu: {ex.Message}";
                return PartialView("Error");
            }
        }
        // Phương thức kiểm tra trạng thái đăng nhập
        private bool IsUserLoggedIn()
        {
            // Kiểm tra xem Session["LoggedInUserId"] có giá trị hay không
            return Session["LoggedInUserId"] != null;
        }
        public ActionResult DangKyMonHoc()
        {
            // Fetch data needed for the view and pass it to the view
            var lopHocData = FetchLopHocData();
            return View(lopHocData);
        }

        private List<LopHocViewModel> FetchLopHocData()
        {
            // Lấy mã sinh viên từ session hoặc từ đâu đó
            string maSinhVien = Session["maSinhVienOrGiangVien"] as string;

            // Lấy danh sách các lớp học chưa được đăng ký bởi sinh viên
            var lopHocData = (from lh in db.LOPHOCs
                              join mh in db.MONHOCs on lh.MaMonHoc equals mh.MaMonHoc
                              where !db.DANGKYMONHOCs.Any(dk => dk.MaMonHoc == lh.MaMonHoc && dk.MaSinhVien == maSinhVien)
                              select new LopHocViewModel
                              {
                                  MaLopHoc = lh.MaLopHoc,
                                  MaMonHoc = lh.MaMonHoc,
                                  SoLuongSV = Convert.ToInt32(lh.SoLuongSV),
                                  MaGiangVien = lh.MaGiangVien,
                                  TenMonHoc = mh.TenMonHoc
                              }).ToList();

            return lopHocData;
        }

        [HttpPost]
        public ActionResult DangKyMonHoc(string maLopHoc)
        {
            // Lấy thông tin của sinh viên đang đăng nhập (giả sử thông tin này đã được lưu trong Session)
            string maSinhVien = Session["maSinhVienOrGiangVien"] as string;

            // Kiểm tra mã sinh viên có tồn tại không
            if (string.IsNullOrEmpty(maSinhVien))
            {
                // Redirect hoặc xử lý khi không tìm thấy thông tin đăng nhập
                return RedirectToAction("Login");
            }

            // Lấy thông tin về lớp học theo maLopHoc
            var lopHoc = db.LOPHOCs.FirstOrDefault(lh => lh.MaLopHoc == maLopHoc);

            // Kiểm tra lớp học có tồn tại không
            if (lopHoc != null)
            {
                // Tạo đối tượng DANGKYMONHOC và thêm vào cơ sở dữ liệu
                var dangKyMonHoc = new DANGKYMONHOC
                {
                    MaSinhVien = maSinhVien,
                    MaMonHoc = lopHoc.MaMonHoc,
                    NgayGioDangKy = DateTime.Now
                    // Các thông tin khác nếu có
                };

                db.DANGKYMONHOCs.InsertOnSubmit(dangKyMonHoc);
                db.SubmitChanges();

                // Redirect hoặc thực hiện các hành động khác sau khi đăng ký thành công
                return RedirectToAction("ThoiKhoaBieu");
            }

            // Trả về trang 404 hoặc trang thông báo lỗi nếu không tìm thấy lớp học
            return HttpNotFound();
        }

    }
}
