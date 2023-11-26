using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TDMUCLASS.Models
{
    public class ThoiKhoaBieuViewModel
    {
        public string MaGiangVien { get; set; }
        public string TenGiangVien { get; set; }
        public int SLSV { get; set; }
        public string MaLop { get; set; }
        public string MaSinhVien { get; set; }
        public string PhongHoc { get; set; }
        public string TenMonHoc { get; set; }
        public int ThuNgayHoc { get; set; }
        public DateTime TuNgay { get; set; }
        public DateTime DenNgay { get; set; }
        public DateTime NgayDat { get; set; }
        public DateTime NgayTra { get; set; }
        public int TietBD { get; set; }
        public int TietKT { get; set; }
        public string MoTaDP { get; set; }
        // Các thuộc tính khác từ THOIKHOABIEU nếu cần
    }
}