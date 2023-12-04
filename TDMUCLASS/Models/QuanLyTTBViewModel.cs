using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TDMUCLASS.Models
{
    public class QuanLyTTBViewModel
    {
        public int id { get; set; }
        public string MaPhongHoc { get; set; }
        public string MaTrangThietBi { get; set; }
        public string TenTTB { get; set; }
        public string TinhTrang { get; set; }
        public int SoLuong { get; set; }
        public string DonViTinh { get; set; }
        public string AnhTB { get; set; }
    }
}