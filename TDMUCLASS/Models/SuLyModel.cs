using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TDMUCLASS.Models
{
    public class SuLyModel
    {
        public IEnumerable<SUCOBAOTRI> SuCoBaoTriData { get; set; }
        public IEnumerable<BOPHANXULYSUCO> BoPhanSuLyData { get; set; }
        public List<PHANCONGXULY_SUCO> PhanCongData { get; set; }
    }
}