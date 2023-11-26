using System;
using System.Collections.Generic;
using System.Linq;
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
            QUANLY admin = Session["Admin"] as QUANLY;
            if (admin != null)
            {
                // Store user information in additional sessions
                Session["Hoten"] = admin.HoTen;
                Session["ChucVu"] = admin.ChucVu;
                Session["AnhQL"] = admin.AnhQL;

                // Return the view
                return View();
            }

            // If the user is not logged in, you might want to redirect them to the login page or handle it accordingly.
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

            return View(bookings.OrderBy(n => n.MaSinhVien));
        }
        //SUCOBAOTRI
        public ActionResult DSSuCo()
        {
            QUANLY admin = Session["Admin"] as QUANLY;

            var bookings = data.SUCOBAOTRIs.Where(dp => dp.MaQuanLy == admin.MaQuanLy);

            // Retrieve and store HoTen information in ViewBag
            ViewBag.HoTenDictionary = GetHoTenDictionary1(bookings);

            return View(bookings.OrderBy(n => n.MaSinhVien));
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
                    else if (action == "XetDuyet")
                    {
                        suco.TinhTrangXuLy = "Đã duyệt";
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
