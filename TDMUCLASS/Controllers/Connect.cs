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
            //string connectionString = "Data Source=LAPTOP-SD6JFUCG\\MSSQLSERVER01;Initial Catalog=TDMUCLASS;Integrated Security=True";
            string connectionString = "Data Source=SQL8006.site4now.net;Initial Catalog=db_aa22c6_tdmuclass;User ID=db_aa22c6_tdmuclass_admin;Password=tdmuclass123";
            dbTDMUCLASSDataContext dataContext = new dbTDMUCLASSDataContext(connectionString);
            return dataContext;
        }
    }
}