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
            connection = "Data Source=LAPTOP-SD6JFUCG\\MSSQLSERVER01;Initial Catalog=TDMUCLASS;Integrated Security=True";
            db = new dbTDMUCLASSDataContext(connection);
        }
        // GET: TDMUCLASS

        public ActionResult NavPartial()
        {
            return PartialView();
        }
        public ActionResult HeaderPartial()
        {
            return PartialView();
        }
        public ActionResult SearchPartial()
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
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult FooterPartial()
        {
            return PartialView();
        }
    }
}