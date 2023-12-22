using Antlr.Runtime.Misc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TDMUCLASS.Controllers;
using TDMUCLASS.Models;

namespace TDMUCLASS.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        private dbTDMUCLASSDataContext data;

        public HomeController()
        {
            data = Connect.GetConnect();
        }

        public ActionResult Home()
        {
            // Check if the user is logged in
            if (Session["Admin"] is QUANLY admin)
            {
                // Get counts from the database based on the logged-in user's MaQuanLy
                int datPhongCount = data.DATPHONGs.Count(dp => dp.TrangThai == "Chờ xử lý" && dp.MaQuanLy == admin.MaQuanLy);
                int suCoBaoTriCount = data.SUCOBAOTRIs.Count(sc => sc.TinhTrangXuLy == "Chờ xử lý" && sc.MaQuanLy == admin.MaQuanLy);

                // Pass counts to the view
                ViewBag.DatPhongCount = datPhongCount;
                ViewBag.SuCoBaoTriCount = suCoBaoTriCount;

                return View();
            }

            // If the user is not logged in, you might want to redirect them to the login page or handle it accordingly.
            return RedirectToAction("Login", "Home");
        }

        public ActionResult HoSo()
        {
            // Retrieve user information from the session
            QUANLY admin = Session["Admin"] as QUANLY; // Retrieve QUANLY object

            if (admin != null)
            {
                // Fetch the updated user information from the database
                var updatedKh = data.QUANLies.SingleOrDefault(n => n.MaQuanLy == admin.MaQuanLy);

                if (updatedKh != null)
                {
                    // Update the session with the new information
                    Session["Admin"] = updatedKh;

                    // Pass the updated user information to the view
                    return View(updatedKh);
                }
            }

            return RedirectToAction("Login");
        }

        public ActionResult NavPartial()
        {
            QUANLY admin = Session["Admin"] as QUANLY;
            if (admin != null)
            {
                Session["Hoten"] = admin.HoTen;
                Session["ChucVu"] = admin.ChucVu;
                Session["AnhQL"] = admin.AnhQL;

                // Assuming dbTDMUCLASSDataContext is your LINQ to SQL DataContext
                using (var data = Connect.GetConnect())
                {
                    // Get the MaPhongHoc based on the specified conditions
                    var maPhongHocList = data.PHONGHOCs
                        .Join(data.DAYHOCs,
                            phongHoc => phongHoc.MaDayHoc,
                            dayHoc => dayHoc.MaDayHoc,
                            (phongHoc, dayHoc) => new { phongHoc, dayHoc })
                        .Where(joinedTables => joinedTables.dayHoc.MaQuanLy == admin.MaQuanLy)
                        .Select(joinedTables => joinedTables.phongHoc.MaPhongHoc)
                        .ToList();

                    // Pass the maPhongHocList to the view
                    ViewBag.MaPhongHocList = maPhongHocList;
                }

                return View();
            }

            return RedirectToAction("Login");
        }


        [HttpGet]
        public ActionResult Login()
        {
            // No need for authentication check on the login page
            return View();
        }

        [HttpPost]
        public ActionResult Login(FormCollection form)
        {
            var username = form["username"];
            var password = form["password"];

            QUANLY admin = data.QUANLies.SingleOrDefault(n => n.MaQuanLy == username && n.MatKhau == password);
            if (admin != null)
            {
                Session["Admin"] = admin;
                Session["Hoten"] = admin.HoTen;
                Session["ChucVu"] = admin.ChucVu;
                Session["AnhQL"] = admin.AnhQL;

                return RedirectToAction("Home", "Home");
            }
            else
            {
                ViewBag.ErrorMessage = "Tên đăng nhập hoặc mật khẩu không đúng";
                ModelState.AddModelError(string.Empty, "Invalid username or password");
                return View();
            }
        }


        //DATPHONG
        public ActionResult DSDatPhong()
        {
            QUANLY admin = Session["Admin"] as QUANLY;

            var bookings = data.DATPHONGs.Where(dp => dp.MaQuanLy == admin.MaQuanLy);

            // Retrieve and store HoTen information in ViewBag
            ViewBag.HoTenDictionary = GetHoTenDictionary(bookings);

            return View(bookings.OrderBy(n => n.TrangThai));
        }
        //SUCOBAOTRI
        [HttpGet]
        public ActionResult DSSuCo()
        {
            QUANLY admin = Session["Admin"] as QUANLY;

            var viewModel = new SuLyModel
            {
                SuCoBaoTriData = data.SUCOBAOTRIs.Where(dp => dp.MaQuanLy == admin.MaQuanLy).ToList(),
                BoPhanSuLyData = data.BOPHANXULYSUCOs.ToList(),
                PhanCongData = data.PHANCONGXULY_SUCOs.ToList()
            };

            ViewBag.HoTenDictionary1 = GetHoTenDictionary1(viewModel.SuCoBaoTriData);

            return View(viewModel);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult DSSuCo(PHANCONGXULY_SUCO phancong, FormCollection f)
        {
            SUCOBAOTRI suco = data.SUCOBAOTRIs.SingleOrDefault(dp => dp.MaSuCoBaoTri == Convert.ToInt32(f["fMaSCBT"]) && dp.MaQuanLy == f["fMaQuanLy"]);

            if (ModelState.IsValid)
            {
                suco.TinhTrangXuLy = "Đã tiếp nhận";
                phancong.MaPhongHoc = f["fMaPhongHoc"];
                phancong.MaQuanLy = f["fMaQuanLy"];
                phancong.MaNhanVien = f["fMaNV"];
                phancong.HoTen = f["fHoTenNV"];
                phancong.MaSuCoBaoTri = Convert.ToInt32(f["fMaSCBT"]);
                phancong.MaTrangThietBi = f["fMaTTB"];
                phancong.MoTa = f["fMoTa"];
                phancong.TrangThaiXuLy = f["fTinhTrang"];
                phancong.NgayGioPhanCong = Convert.ToDateTime(f["fNgayPhanCong"]);
                phancong.AnhSuCo = f["fAnhSuCo"];
                data.PHANCONGXULY_SUCOs.InsertOnSubmit(phancong);
                data.SubmitChanges();

                TempData["SuccessMessage"] = "Đã đặt phòng thành công";

                // Chuyển đến trang phancong sau khi thêm đặt phòng thành công
                return RedirectToAction("DSSuCo");
            }
            return View();
        }



        private Dictionary<string, string> GetHoTenDictionary(IEnumerable<DATPHONG> bookings)
        {
            Dictionary<string, string> hoTenDictionary = new Dictionary<string, string>();

            foreach (var datphong in bookings)
            {
                if (!string.IsNullOrEmpty(datphong.MaGiangVien))
                {
                    var giangVien = data.GIANGVIENs.SingleOrDefault(gv => gv.MaGiangVien == datphong.MaGiangVien);
                    if (giangVien != null)
                    {
                        hoTenDictionary[datphong.MaGiangVien] = giangVien.HoTen;
                    }
                }
                else if (!string.IsNullOrEmpty(datphong.MaSinhVien))
                {
                    var sinhVien = data.SINHVIENs.SingleOrDefault(sv => sv.MaSinhVien == datphong.MaSinhVien);
                    if (sinhVien != null)
                    {
                        hoTenDictionary[datphong.MaSinhVien] = sinhVien.HoTen;
                    }
                }
            }

            return hoTenDictionary;
        }
        private Dictionary<string, string> GetHoTenDictionary1 (IEnumerable<SUCOBAOTRI> bookings)
        {
            Dictionary<string, string> hoTenDictionary1 = new Dictionary<string, string>();

            foreach (var datphong in bookings)
            {
                if (!string.IsNullOrEmpty(datphong.MaGiangVien))
                {
                    var giangVien = data.GIANGVIENs.SingleOrDefault(gv => gv.MaGiangVien == datphong.MaGiangVien);
                    if (giangVien != null)
                    {
                        hoTenDictionary1[datphong.MaGiangVien] = giangVien.HoTen;
                    }
                }
                else if (!string.IsNullOrEmpty(datphong.MaSinhVien))
                {
                    var sinhVien = data.SINHVIENs.SingleOrDefault(sv => sv.MaSinhVien == datphong.MaSinhVien);
                    if (sinhVien != null)
                    {
                        hoTenDictionary1[datphong.MaSinhVien] = sinhVien.HoTen;
                    }
                }
            }

            return hoTenDictionary1;
        }

        [HttpPost]
        public ActionResult UpdateTrangThai(int maDatPhong, string action)
        {
            QUANLY admin = Session["Admin"] as QUANLY;
            if (admin != null)
            {
                // Retrieve the DATPHONG record based on MaDatPhong
                DATPHONG datPhong = data.DATPHONGs.SingleOrDefault(dp => dp.MaDatPhong == maDatPhong && dp.MaQuanLy == admin.MaQuanLy);

                if (datPhong != null)
                {
                    // Update the TrangThai based on the action
                    if (action == "TuChoi")
                    {
                        datPhong.TrangThai = "Từ chối";
                    }
                    else if (action == "XetDuyet")
                    {
                        datPhong.TrangThai = "Đã duyệt";
                    }

                    // Save changes to the database
                    data.SubmitChanges();
                }

                // Redirect back to the DSDatPhong action
                return RedirectToAction("DSDatPhong");
            }

            // If the user is not logged in, you might want to redirect them to the login page or handle it accordingly.
            return RedirectToAction("Login");
        }

        [HttpPost]
        public ActionResult UpdateTrangThaiRB(int masuco, string action)
        {
            QUANLY admin = Session["Admin"] as QUANLY;
            if (admin != null)
            {
                // Retrieve the DATPHONG record based on MaDatPhong
                SUCOBAOTRI suco = data.SUCOBAOTRIs.SingleOrDefault(dp => dp.MaSuCoBaoTri == masuco && dp.MaQuanLy == admin.MaQuanLy);

                if (suco != null)
                {
                    // Update the TrangThai based on the action
                    if (action == "TuChoi")
                    {
                        suco.TinhTrangXuLy = "Từ chối";
                    }

                    // Save changes to the database
                    data.SubmitChanges();
                }

                // Redirect back to the DSDatPhong action
                return RedirectToAction("DSSuCo");
            }

            // If the user is not logged in, you might want to redirect them to the login page or handle it accordingly.
            return RedirectToAction("Login");
        }

        [HttpGet]
        public ActionResult QLSinhVien()
        {
            return View(data.SINHVIENs.ToList().OrderBy(n => n.MaSinhVien));
        }
        public ActionResult QLGiangVien()
        {
            return View(data.GIANGVIENs.ToList().OrderBy(n => n.MaGiangVien));
        }
        [HttpGet]
        public ActionResult QLNhanVien()
        {
            return View(data.BOPHANXULYSUCOs.ToList().OrderBy(n => n.MaNhanVien));
        }
        public ActionResult QuanLyTTB()
        {
            // Check if the user is logged in
            if (Session["Admin"] is QUANLY admin)
            {

                // Thực hiện truy vấn với điều kiện
                var filteredData = (from qlttb in data.QUANLY_TRANGTHIETBIs
                                    join phong in data.PHONGHOCs on qlttb.MaPhongHoc equals phong.MaPhongHoc
                                    join day in data.DAYHOCs on phong.MaDayHoc equals day.MaDayHoc
                                    join ttb in data.TRANGTHIETBIs on qlttb.MaTrangThietBi equals ttb.MaTrangThietBi
                                    where day.MaQuanLy == admin.MaQuanLy
                                    
                                    select new QuanLyTTBViewModel
                                    {
                                        id = qlttb.id,
                                        MaPhongHoc = qlttb.MaPhongHoc,
                                        MaTrangThietBi = qlttb.MaTrangThietBi,
                                        TenTTB = qlttb.TenTTB,
                                        TinhTrang = qlttb.TinhTrang,
                                        SoLuong = Convert.ToInt32(qlttb.SoLuong),
                                        DonViTinh = ttb.DonViTinh,
                                        AnhTB = ttb.AnhTB,
                                        // Các thông tin khác từ THOKHOABIEU nếu cần
                                    }).ToList();

                return View(filteredData);
            }
            return RedirectToAction("Login", "Home");
        }


        [HttpGet]
        public ActionResult AddSV()
        {
           return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult AddSV(SINHVIEN sv, FormCollection f)
        {
            QUANLY admin = Session["Admin"] as QUANLY;

            // Kiểm tra xem TAIKHOAN có sẵn trong data.TAIKHOANs không
            TAIKHOAN tk = data.TAIKHOANs.SingleOrDefault(t => t.MaSinhVien == f["fMaSV"]);

            if (tk == null)
            {
                // Nếu không tồn tại, tạo mới đối tượng TAIKHOAN
                tk = new TAIKHOAN();
                data.TAIKHOANs.InsertOnSubmit(tk);
            }

            // Cập nhật thông tin của đối tượng TAIKHOAN
            tk.MaQuanLy = admin.MaQuanLy;
            tk.MaSinhVien = f["fMaSV"];
            tk.TenDangNhap = f["fMaSV"];
            tk.MatKhau = f["fMaSV"];
            tk.LoaiTaiKhoan = "SV";
            tk.Avartar = "SV.png";

            sv.MaSinhVien = f["fMaSV"];
            sv.HoTen = f["fHoten"];
            sv.Lop = f["fLop"];
            sv.NgaySinh = Convert.ToDateTime(f["fNgaySinh"]);
            sv.Email = f["fEmail"];
            sv.DienThoai = f["fSDT"];
            sv.ChuyenNganh = f["fChuyenNganh"];
            sv.DiaChi = f["fDiaChi"];

            // Nếu là đối tượng mới, thêm vào data.TAIKHOANs
            if (tk.TaiKhoanID == 0)
            {
                data.SINHVIENs.InsertOnSubmit(sv);
            }

            // Lưu thay đổi vào database
            data.SubmitChanges();

            // Chuyển đến trang phancong sau khi thêm đặt phòng thành công
            return RedirectToAction("QLSinhVien");
        }

        [HttpGet]
        public ActionResult EditSV(string id)
        {
            var sv = data.SINHVIENs.SingleOrDefault(n => n.MaSinhVien == id);
            if (sv == null)
            {
                return HttpNotFound();
            }

            return View(sv);
        }

        [HttpPost]
        public ActionResult EditSV(SINHVIEN sv)
        {
            if (ModelState.IsValid)
            {
                var existingSV = data.SINHVIENs.SingleOrDefault(n => n.MaSinhVien == sv.MaSinhVien);

                if (existingSV != null)
                {
                    existingSV.HoTen = sv.HoTen;
                    existingSV.Lop = sv.Lop;
                    existingSV.Email = sv.Email;
                    existingSV.DiaChi = sv.DiaChi;
                    existingSV.DienThoai = sv.DienThoai;
                    existingSV.ChuyenNganh = sv.ChuyenNganh;
                    existingSV.NgaySinh = sv.NgaySinh;

                    data.SubmitChanges();
                    return RedirectToAction("QLSinhVien");
                }
            }

            return View(sv);
        }
        [HttpGet]
        public ActionResult DeleteSV(string id)
        {
            // Get the student from the database
            var studentToDelete = data.SINHVIENs.SingleOrDefault(sv => sv.MaSinhVien == id);

            if (studentToDelete != null)
            {
                // Find and delete related records in DANGKYMONHOCs table
                var dkmhsToDelete = data.DANGKYMONHOCs.Where(dk => dk.MaSinhVien == id);

                // Delete each related DANGKYMONHOC record
                foreach (var dkmh in dkmhsToDelete)
                {
                    data.DANGKYMONHOCs.DeleteOnSubmit(dkmh);
                }

                // Find and delete related TAIKHOAN record
                var taiKhoanToDelete = data.TAIKHOANs.SingleOrDefault(tk => tk.MaSinhVien == id);
                if (taiKhoanToDelete != null)
                {
                    data.TAIKHOANs.DeleteOnSubmit(taiKhoanToDelete);
                }

                // Remove the student from the database
                data.SINHVIENs.DeleteOnSubmit(studentToDelete);

                // Save changes to the database
                data.SubmitChanges();
            }

            // Redirect to the list of students after deletion
            return RedirectToAction("QLSinhVien");
        }



















        [HttpGet]
        public ActionResult AddGV()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult AddGV(GIANGVIEN gv, FormCollection f)
        {
            if (ModelState.IsValid)
            {
                gv.MaGiangVien = f["fMaGV"];
                gv.HoTen = f["fHoten"];
                gv.NgaySinh = Convert.ToDateTime(f["fNgaySinh"]);
                gv.Email = f["fEmail"];
                gv.DienThoai = f["fSDT"];
                gv.ChuyenNganh = f["fChuyenNganh"];
                gv.DiaChi = f["fDiaChi"];
                data.GIANGVIENs.InsertOnSubmit(gv);
                data.SubmitChanges();

                // Chuyển đến trang phancong sau khi thêm đặt phòng thành công
                return RedirectToAction("QLGiangVien");
            }
            return View();
        }
        [HttpGet]
        public ActionResult AddNV()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult AddNV(BOPHANXULYSUCO nv, FormCollection f)
        {
            if (ModelState.IsValid)
            {
                nv.MaNhanVien = f["fMaNV"];
                nv.HoTen = f["fHoten"];
                nv.NgaySinh = Convert.ToDateTime(f["fNgaySinh"]);
                nv.Email = f["fEmail"];
                nv.DienThoai = f["fSDT"];
                nv.ChucVu = f["fChucVu"];
                nv.DiaChi = f["fDiaChi"];
                data.BOPHANXULYSUCOs.InsertOnSubmit(nv);
                data.SubmitChanges();

                // Chuyển đến trang phancong sau khi thêm đặt phòng thành công
                return RedirectToAction("QLNhanVien");
            }
            return View();
        }
        [HttpGet]
        public ActionResult EditMK(string id)
        {
            // Assuming "admin" is stored in session
            string adminSession = Session["Admin"] as string;

            // Check if the user is logged in as admin
            if (string.IsNullOrEmpty(adminSession) || adminSession != "admin")
            {
                // Redirect to a login page or show an unauthorized view
                return RedirectToAction("Login");
            }

            var sp = data.QUANLies.SingleOrDefault(n => n.MaQuanLy == id);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            return View(sp);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult EditMK(FormCollection f)
        {
            // Assuming "admin" is stored in session
            string adminSession = Session["Admin"] as string;

            // Check if the user is logged in as admin
            if (string.IsNullOrEmpty(adminSession) || adminSession != "admin")
            {
                // Redirect to a login page or show an unauthorized view
                return RedirectToAction("Login");
            }

            var kh = data.QUANLies.SingleOrDefault(n => n.MaQuanLy == f["fmakh"]);

            if (ModelState.IsValid)
            {
                kh.MatKhau = f["fmk"];

                data.SubmitChanges();

                // Redirect to the HoSo action after successfully changing the password
                return RedirectToAction("HoSo");
            }

            return View(kh);
        }











        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Login");
        }

        private bool IsAdminLoggedIn()
        {
            return Session["Admin"] != null;
        }

        private ActionResult RedirectToLogin()
        {
            return RedirectToAction("Login", "Home");
        }

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);

            // Check if the action is not the Login action before redirecting
            if (!IsAdminLoggedIn() && filterContext.ActionDescriptor.ActionName != "Login")
            {
                filterContext.Result = RedirectToLogin();
            }
        }
    }
}
