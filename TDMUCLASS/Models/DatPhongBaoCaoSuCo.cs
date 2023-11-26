using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TDMUCLASS.Models
{
    public class DatPhongBaoCaoSuCo
    {
        public IEnumerable<DATPHONG> DatPhongData { get; set; }
        public IEnumerable<SUCOBAOTRI> SuCoBaoTriData { get; set; }
    }
}
