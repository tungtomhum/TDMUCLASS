using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TDMUCLASS.Models
{
    public class DayHocPhongHoc
    {
        public IEnumerable<DAYHOC> DayHocData { get; set; }
        public IEnumerable<PHONGHOC> PhongHocData { get; set; }
        public List<QUANLY_TRANGTHIETBI> QLTTBData { get; set; }
    }
}
