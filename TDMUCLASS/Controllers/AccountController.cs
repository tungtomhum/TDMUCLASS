using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TDMUCLASS.Models;
using System.Data.SqlClient;
using Microsoft.SqlServer.Server;

namespace TDMUCLASS.Controllers
{
    public class AccountController : Controller
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;
        void connectionString()
        {
            con.ConnectionString = "data source = LAPTOP-SD6JFUCG\\MSSQLSERVER01; database = TDMUCLASS; Integrated Security = True;";
        }
        // GET: Account
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Verify(Account acc)
        {
            if (string.IsNullOrEmpty(acc.your_name) || string.IsNullOrEmpty(acc.your_pass))
            {
                ViewBag.ErrorMessage = "Please enter both username and password.";
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
                con.Close();

                // Sử dụng một phương thức để kiểm tra mật khẩu có đúng hay không
                if (VerifyPassword(acc.your_pass, storedPassword))
                {
                    // Dựa vào loại tài khoản để định hướng đến trang phù hợp
                    switch (loaiTaiKhoan)
                    {
                        case "SV":
                            return View("ViewStudent");
                        case "GV":
                            return View("ViewTeacher");
                        case "QL":
                            return View("ViewAdmin");
                        case "NV":
                            return View("ViewStaff");
                        default:
                            ViewBag.ErrorMessage = "Invalid account type.";
                            return View("Login");
                    }
                }
                else
                {
                    ViewBag.ErrorMessage = "Invalid password.";
                    return View("Login");
                }
            }
            else
            {
                con.Close();
                ViewBag.ErrorMessage = "Username not found.";
                return View("Login");
            }
        }
        // Phương thức để kiểm tra mật khẩu
        private bool VerifyPassword(string enteredPassword, string storedPassword)
        {
            return enteredPassword == storedPassword;
        }

    }
}