using System;
using System.Web.Mvc;
using System.Data.SqlClient;
using TDMUCLASS.Models;
using PagedList;
using System.Linq;

namespace TDMUCLASS.Controllers
{
    public class AccountController : Controller
    {

        private string connection;
        private dbTDMUCLASSDataContext db;

        public AccountController()
        {
            // Khởi tạo chuỗi kết nối
            connection = "Data Source=LAPTOP-SD6JFUCG\\MSSQLSERVER01;Initial Catalog=TDMUCLASS;Integrated Security=True";
            db = new dbTDMUCLASSDataContext(connection);
        }
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;

        void connectionString()
        {
            con.ConnectionString = "data source = LAPTOP-SD6JFUCG\\MSSQLSERVER01; database = TDMUCLASS; Integrated Security = True;";
        }

        public ActionResult Home()
        {
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

            connectionString();
            con.Open();
            com.Connection = con;
            com.CommandText = "SELECT * FROM TAIKHOAN WHERE TenDangNhap = @TenDangNhap";
            com.Parameters.AddWithValue("@TenDangNhap", acc.your_name);

            dr = com.ExecuteReader();
            if (dr.Read())
            {
                string storedPassword = dr["MatKhau"].ToString();
                string loaiTaiKhoan = dr["LoaiTaiKhoan"].ToString();

                string maSinhVienOrGiangVien = string.Empty;
                string tenHocVienOrGiangVien = string.Empty;
                string avatarPath = dr["Avartar"].ToString();

                if (loaiTaiKhoan == "SV")
                {
                    // Thực hiện truy vấn để lấy thông tin sinh viên
                    com.CommandText = "SELECT MaSinhVien, HoTen FROM SinhVien WHERE MaSinhVien = @MaSinhVien";
                    com.Parameters.AddWithValue("@MaSinhVien", acc.your_name); // Giả sử Tên đăng nhập là MaSinhVien
                    dr.Close();
                    dr = com.ExecuteReader();

                    if (dr.Read())
                    {
                        maSinhVienOrGiangVien = dr["MaSinhVien"].ToString();
                        tenHocVienOrGiangVien = dr["HoTen"].ToString();
                    }
                }
                else if (loaiTaiKhoan == "GV")
                {
                    // Thực hiện truy vấn để lấy thông tin giảng viên
                    com.CommandText = "SELECT MaGiangVien, HoTen FROM GiangVien WHERE MaGiangVien = @MaGiangVien";
                    com.Parameters.AddWithValue("@MaGiangVien", acc.your_name); // Giả sử Tên đăng nhập là MaGiangVien
                    dr.Close();
                    dr = com.ExecuteReader();

                    if (dr.Read())
                    {
                        maSinhVienOrGiangVien = dr["MaGiangVien"].ToString();
                        tenHocVienOrGiangVien = dr["HoTen"].ToString();
                    }
                }

                Session["maSinhVienOrGiangVien"] = maSinhVienOrGiangVien;
                Session["tenHocVienOrGiangVien"] = tenHocVienOrGiangVien;
                Session["AvatarPath"] = avatarPath;
                Session["loaitaikhoan"] = loaiTaiKhoan;
                con.Close();

                if (VerifyPassword(acc.your_pass, storedPassword))
                {
                    Session["LoggedInUserId"] = acc.your_name;

                    switch (loaiTaiKhoan)
                    {
                        case "SV":
                            return RedirectToAction("Home", "Account");
                        case "GV":
                            return RedirectToAction("Home", "Account");
                        case "QL":
                            return RedirectToAction("Home", "Admin", new { area = "Admin" });
                        case "NV":
                            return RedirectToAction("Index", "NhanVien", new { area = "NhanVien" });
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
                con.Close();
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
                datphong.NgayDat = Convert.ToDateTime(f["ngayDat"]);
                datphong.TietBatDau = int.Parse(f["tietBatDau"]);
                datphong.TietKetThuc = int.Parse(f["tietKetThuc"]);
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

        public ActionResult BookingHistory(DATPHONG datphong, FormCollection f)
        {
            // Lấy `masinhvien` hoặc `magiangvien` đang đăng nhập
            var masv = datphong.MaSinhVien;
            var magv = datphong.MaGiangVien;

            // Truy vấn dữ liệu `datphong` dựa trên `masinhvien` hoặc `magiangvien` đang đăng nhập.
            var datphongList = db.DATPHONGs
                .Where(d => d.MaSinhVien == masv || d.MaGiangVien == magv)
                .ToList();

            return View(datphongList);
        }
        public ActionResult BookingHistory(int? page)
        {
            int iPageNum = (page ?? 1);
            int iPageSize = 5;
            return View(db.DATPHONGs.ToList().OrderBy(n => n.MaGiangVien).ToPagedList(iPageNum, iPageSize));
        }

    }
}
