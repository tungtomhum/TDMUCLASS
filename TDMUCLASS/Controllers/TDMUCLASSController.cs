using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TDMUCLASS.Models;

namespace TDMUCLASS.Controllers
{
    public class TDMUCLASSController : Controller
    {
        private string connection;
        private dbTDMUCLASSDataContext db;

        public TDMUCLASSController()
        {
            // Khởi tạo chuỗi kết nối
            db = Connect.GetConnect();
        }



        // GET: TDMUCLASS

        public ActionResult NavPartial()
        {
            return PartialView();
        }
        public ActionResult NavPartialUserSV()
        {
            return PartialView();
        }
        public ActionResult NavPartialUserGV()
        {
            return PartialView();
        }
        public ActionResult NavPartialUserNV()
        {
            return PartialView();
        }
        public ActionResult ChaoMungPartial()
        {
            return PartialView();
        }
        public ActionResult HeaderPartial()
        {
            return PartialView();
        }
        public ActionResult GioiThieuPartial()
        {
            return PartialView();
        }
        public ActionResult DatPhongPartial()
        {
            var viewModel = new DayHocPhongHoc
            {
                DayHocData = db.DAYHOCs.ToList(),
                PhongHocData = db.PHONGHOCs.ToList()
            };

            return PartialView(viewModel); 
        }


        public ActionResult CategoryPartial()
        {
            return PartialView();
        }
        public ActionResult AboutPartial()
        {
            return PartialView();
        }
        public ActionResult Home()
        {    
            return View();
        }
        public ActionResult FooterPartial()
        {
            return PartialView();
        }
        public ActionResult FooterPartialUser()
        {
            return PartialView();
        }
        [HttpPost]
        public ActionResult GuiPhanHoi(string phanhoi, string email)
        {
            // Validate and save the feedback and email to the database
            if (!string.IsNullOrEmpty(phanhoi) && !string.IsNullOrEmpty(email))
            {
                var phanhoiEntity = new PHANHOI
                {
                    NoiDung = phanhoi,
                    Email = email,
                    NgayGui = DateTime.Now // You may need to adjust this based on your database schema
                };

                db.PHANHOIs.InsertOnSubmit(phanhoiEntity);
                db.SubmitChanges(); // Save changes to the database

                // Optionally, you can redirect the user to a success page or perform other actions
                return RedirectToAction("Home");
            }

            // If validation fails, you may want to handle the error accordingly
            return RedirectToAction("Error");
        }


        private List<TINTUC> LayTinMoi(int count)
        {
            return db.TINTUCs.OrderByDescending(a => a.NgayDang).Take(count).ToList();
        }
        public ActionResult TinTucPartial()
        {
            var listTinMoi = LayTinMoi(8);
            return PartialView(listTinMoi);
        }
        public ActionResult test ()
        {
            return View();
        }
    }
}