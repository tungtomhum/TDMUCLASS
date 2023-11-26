using TDMUCLASS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TDMUCLASS.Controllers
{
    public class Connect
    {
        public dbTDMUCLASSDataContext data;
        public static dbTDMUCLASSDataContext GetConnect()
        {
            //string connectionString = "Data Source=LAPTOP-ODTA635P\\SQLEXPRESS01;Initial Catalog=dbNoiThat;Integrated Security=True";
            string connectionString = "Data Source=LAPTOP-SD6JFUCG\\MSSQLSERVER01;Initial Catalog=TDMUCLASS;Integrated Security=True";
            ;
            dbTDMUCLASSDataContext dataContext = new dbTDMUCLASSDataContext(connectionString);
            return dataContext;
        }
    }
}