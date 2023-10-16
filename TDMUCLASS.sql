USE [TDMUCLASS]
GO
/****** Object:  Table [dbo].[BOPHANXULYSUCO]    Script Date: 16/10/2023 7:33:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOPHANXULYSUCO](
	[MaNhanVien] [nvarchar](20) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[ChucVu] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK__BOPHANXU__77B2CA475C5DAE73] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANGKYMONHOC]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGKYMONHOC](
	[MaMonHoc] [nvarchar](20) NOT NULL,
	[MaSinhVien] [nvarchar](20) NOT NULL,
	[NgayGioDangKy] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DATPHONG]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATPHONG](
	[MaDatPhong] [int] IDENTITY(1,1) NOT NULL,
	[MaPhongHoc] [nvarchar](10) NULL,
	[NgayDat] [date] NULL,
	[TietBatDau] [int] NULL,
	[TietKetThuc] [int] NULL,
	[MoTa] [nvarchar](1000) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaQuanLy] [nvarchar](20) NULL,
	[MaSinhVien] [nvarchar](20) NULL,
	[MaGiangVien] [nvarchar](20) NULL,
 CONSTRAINT [PK__DATPHONG__6344ADEAF6DEBE7F] PRIMARY KEY CLUSTERED 
(
	[MaDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DAYHOC]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAYHOC](
	[MaDayHoc] [nvarchar](3) NOT NULL,
	[LoaiDay] [nvarchar](255) NULL,
	[SoLuongPhong] [int] NULL,
	[MaQuanLy] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDayHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIANGVIEN]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIANGVIEN](
	[MaGiangVien] [nvarchar](20) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
	[Email] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](11) NULL,
	[ChuyenNganh] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiangVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOPHOC]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOPHOC](
	[MaLopHoc] [nvarchar](20) NOT NULL,
	[TenLopHoc] [nvarchar](50) NULL,
	[MaMonHoc] [nvarchar](20) NOT NULL,
	[SoLuongSV] [int] NULL,
	[MaGiangVien] [nvarchar](20) NULL,
 CONSTRAINT [PK_LOPHOC] PRIMARY KEY CLUSTERED 
(
	[MaLopHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MaMonHoc] [nvarchar](20) NOT NULL,
	[TenMonHoc] [nvarchar](50) NULL,
	[SoTinChi] [int] NULL,
 CONSTRAINT [PK_MONHOC] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONGXULY_SUCO]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONGXULY_SUCO](
	[MaQuanLy] [nvarchar](20) NOT NULL,
	[MaNguoiXuLy] [nvarchar](20) NULL,
	[MaSuCoBaoTri] [int] NOT NULL,
	[TrangThaiXuLy] [nvarchar](50) NULL,
	[NgayGioPhanCong] [datetime] NULL,
	[NgayGioHoanThanh] [datetime] NULL,
	[MaPhongHoc] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONGHOC]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGHOC](
	[MaPhongHoc] [nvarchar](10) NOT NULL,
	[TrangThai] [nvarchar](20) NULL,
	[MaDayHoc] [nvarchar](3) NULL,
 CONSTRAINT [PK__PHONGHOC__D1254E218F78E4AA] PRIMARY KEY CLUSTERED 
(
	[MaPhongHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLY]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLY](
	[MaQuanLy] [nvarchar](20) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
	[Email] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](11) NULL,
	[ChucVu] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuanLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLY_TRANGTHIETBI]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLY_TRANGTHIETBI](
	[MaPhongHoc] [nvarchar](10) NOT NULL,
	[MaTrangThietBi] [nvarchar](10) NOT NULL,
	[TinhTrang] [nvarchar](100) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_QUANLY_TRANGTHIETBI] PRIMARY KEY CLUSTERED 
(
	[MaPhongHoc] ASC,
	[MaTrangThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MaSinhVien] [nvarchar](20) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[Lop] [nvarchar](20) NULL,
	[NgaySinh] [date] NULL,
	[Email] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](11) NULL,
	[ChuyenNganh] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUCOBAOTRI]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUCOBAOTRI](
	[MaSuCoBaoTri] [int] IDENTITY(1,1) NOT NULL,
	[MaPhongHoc] [nvarchar](10) NOT NULL,
	[MoTaSuCo] [nvarchar](1000) NULL,
	[ThoiGianBaoCao] [datetime] NULL,
	[MaSinhVien] [nvarchar](20) NULL,
	[MaGiangVien] [nvarchar](20) NULL,
	[MaQuanLy] [nvarchar](20) NOT NULL,
	[MaTrangThietBi] [nvarchar](10) NOT NULL,
	[TinhTrangXuLy] [nvarchar](50) NULL,
 CONSTRAINT [PK_SUCOBAOTRI] PRIMARY KEY CLUSTERED 
(
	[MaSuCoBaoTri] ASC,
	[MaPhongHoc] ASC,
	[MaQuanLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TaiKhoanID] [int] IDENTITY(1,1) NOT NULL,
	[MaQuanLy] [nvarchar](20) NULL,
	[MaGiangVien] [nvarchar](20) NULL,
	[MaSinhVien] [nvarchar](20) NULL,
	[MaNhanVien] [nvarchar](20) NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
	[LoaiTaiKhoan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__TAIKHOAN__9A124B65CA2E8710] PRIMARY KEY CLUSTERED 
(
	[TaiKhoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THOIKHOABIEU]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THOIKHOABIEU](
	[MaLopHoc] [nvarchar](20) NOT NULL,
	[MaPhongHoc] [nvarchar](10) NOT NULL,
	[MaQuanLy] [nvarchar](20) NOT NULL,
	[ThuNgayHoc] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[TietBatDau] [int] NULL,
	[TietKetThuc] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGKE]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGKE](
	[ThongKeID] [int] IDENTITY(1,1) NOT NULL,
	[MaPhongHoc] [nvarchar](10) NOT NULL,
	[SoLanSuCo] [int] NULL,
	[ThongTinBaoCao] [nvarchar](1000) NULL,
	[NgayGioBaoCao] [datetime] NULL,
	[MaQuanLy] [nvarchar](20) NULL,
 CONSTRAINT [PK_THONGKE] PRIMARY KEY CLUSTERED 
(
	[ThongKeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANGTHIETBI]    Script Date: 16/10/2023 7:33:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGTHIETBI](
	[MaTrangThietBi] [nvarchar](10) NOT NULL,
	[TenTrangThietBi] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[Loai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTrangThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BOPHANXULYSUCO] ([MaNhanVien], [HoTen], [ChucVu], [DiaChi], [DienThoai], [Email], [NgaySinh]) VALUES (N'NV001', N'Thái Anh Long', N'Sửa Máy Lạnh', N'Bình Phước', N'0145875254', N'anhlong@gamil.com', CAST(N'1985-08-04' AS Date))
GO
INSERT [dbo].[DANGKYMONHOC] ([MaMonHoc], [MaSinhVien], [NgayGioDangKy]) VALUES (N'LING001', N'2124802010859', CAST(N'2023-08-14T09:52:32.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[DATPHONG] ON 
GO
INSERT [dbo].[DATPHONG] ([MaDatPhong], [MaPhongHoc], [NgayDat], [TietBatDau], [TietKetThuc], [MoTa], [TrangThai], [MaQuanLy], [MaSinhVien], [MaGiangVien]) VALUES (1, N'I3-103', CAST(N'2023-08-22' AS Date), 6, 10, N'Học bù', N'Chờ xử lý', N'QL001', NULL, N'GV001')
GO
SET IDENTITY_INSERT [dbo].[DATPHONG] OFF
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'A1', N'Văn phòng', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'A2', N'Phòng thực hành', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'A3', N'Phòng thực hành', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'A4', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'B', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'C', N'Phòng máy', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'D', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'E1', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'E2', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'E3', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'F1', N'Văn phòng', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'F2', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'F3', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'G', N'Văn phòng ', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'H1', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'H2', N'Văn phòng', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'HT1', N'Hội trường', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'I1', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'I2', N'Văn phòng', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'I3', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[DAYHOC] ([MaDayHoc], [LoaiDay], [SoLuongPhong], [MaQuanLy]) VALUES (N'I4', N'Phòng học', NULL, NULL)
GO
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [HoTen], [NgaySinh], [Email], [DienThoai], [ChuyenNganh], [DiaChi]) VALUES (N'GV001', N'Nguyễn Hải Vĩnh Cường', CAST(N'1976-05-15' AS Date), N'cuongvinh@gmail.com', N'0141548751', N'CNTT', N'Bình Dương')
GO
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [HoTen], [NgaySinh], [Email], [DienThoai], [ChuyenNganh], [DiaChi]) VALUES (N'GV002', N'Trần Thị Thắm', CAST(N'1930-08-04' AS Date), N'tham@gmail.com', N'0141542859', N'KET', N'Bình Dương')
GO
INSERT [dbo].[LOPHOC] ([MaLopHoc], [TenLopHoc], [MaMonHoc], [SoLuongSV], [MaGiangVien]) VALUES (N'KTCH-CQ03', N'Lý thuyết đồ thị (3+0)', N'LING001', NULL, NULL)
GO
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoTinChi]) VALUES (N'LING001', N'Lý thuyết đồ thị', 3)
GO
INSERT [dbo].[PHANCONGXULY_SUCO] ([MaQuanLy], [MaNguoiXuLy], [MaSuCoBaoTri], [TrangThaiXuLy], [NgayGioPhanCong], [NgayGioHoanThanh], [MaPhongHoc]) VALUES (N'QL001', N'NV001', 1, N'Chờ xử lý', CAST(N'2023-08-14T08:05:20.000' AS DateTime), CAST(N'2023-08-14T09:15:50.000' AS DateTime), N'I1-205')
GO
INSERT [dbo].[PHANCONGXULY_SUCO] ([MaQuanLy], [MaNguoiXuLy], [MaSuCoBaoTri], [TrangThaiXuLy], [NgayGioPhanCong], [NgayGioHoanThanh], [MaPhongHoc]) VALUES (N'QL001', N'NV001', 2, N'Chờ xử lý', CAST(N'2023-10-06T14:05:00.000' AS DateTime), CAST(N'2023-10-06T15:42:00.000' AS DateTime), N'E1-101')
GO
INSERT [dbo].[PHANCONGXULY_SUCO] ([MaQuanLy], [MaNguoiXuLy], [MaSuCoBaoTri], [TrangThaiXuLy], [NgayGioPhanCong], [NgayGioHoanThanh], [MaPhongHoc]) VALUES (N'QL002', N'NV001', 3, N'Chờ xử lý', CAST(N'2023-10-06T13:15:00.000' AS DateTime), CAST(N'2023-10-06T13:52:00.000' AS DateTime), N'H1-304')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-101', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-102', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-103', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-104', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-105', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-201', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-202', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-203', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-204', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-205', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-301', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-302', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-303', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-304', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A1-305', N'Trống', N'A1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-101', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-102', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-103', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-104', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-105', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-201', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-202', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-203', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-204', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-205', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-301', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-302', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-303', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-304', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A2-305', N'Trống', N'A2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A3-101', N'Trống', N'A3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A3-102', N'Trống', N'A3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A3-103', N'Trống', N'A3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A3-104', N'Trống', N'A3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A3-105', N'Trống', N'A3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A4-101', N'Trống', N'A4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A4-102', N'Trống', N'A4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A4-103', N'Trống', N'A4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A4-104', N'Trống', N'A4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'A4-105', N'Trống', N'A4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-101', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-102', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-103', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-104', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-105', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-201', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-202', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-203', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-204', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-205', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-301', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-302', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-303', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-304', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-305', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-401', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-402', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-403', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-404', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-405', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-501', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-502', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-503', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-504', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'B-505', N'Trống', N'B')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'C-101', N'Trống', N'C')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'C-102', N'Trống', N'C')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'C-103', N'Trống', N'C')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'C-104', N'Trống', N'C')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'C-105', N'Trống', N'C')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'C-201', N'Trống', N'C')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'C-202', N'Trống', N'C')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'C-203', N'Trống', N'C')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'C-204', N'Trống', N'C')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'C-205', N'Trống', N'C')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'D-101', N'Trống', N'D')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'D-102', N'Trống', N'D')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'D-103', N'Trống', N'D')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'D-104', N'Trống', N'D')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'D-105', N'Trống', N'D')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'D-106', N'Trống', N'D')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'D-107', N'Trống', N'D')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'D-108', N'Trống', N'D')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'D-109', N'Trống', N'D')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'D-110', N'Trống', N'D')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-101', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-102', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-103', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-104', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-105', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-201', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-202', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-203', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-204', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-205', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-301', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-302', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-303', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-304', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-305', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-401', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-402', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-403', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-404', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E1-405', N'Trống', N'E1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E2-101', N'Trống', N'E2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E2-102', N'Trống', N'E2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E2-103', N'Trống', N'E2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E2-104', N'Trống', N'E2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E2-105', N'Trống', N'E2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E3-101', N'Trống', N'E3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E3-102', N'Trống', N'E3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E3-103', N'Trống', N'E3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E3-104', N'Trống', N'E3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'E3-105', N'Trống', N'E3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F1-101', N'Trống', N'F1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F1-102', N'Trống', N'F1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F1-103', N'Trống', N'F1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F1-104', N'Trống', N'F1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F1-105', N'Trống', N'F1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F2-101', N'Trống', N'F2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F2-102', N'Trống', N'F2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F2-103', N'Trống', N'F2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F2-104', N'Trống', N'F2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F2-105', N'Trống', N'F2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F3-101', N'Trống', N'F3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F3-102', N'Trống', N'F3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F3-103', N'Trống', N'F3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F3-104', N'Trống', N'F3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'F3-105', N'Trống', N'F3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'G-101', N'Trống', N'G')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'G-102', N'Trống', N'G')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'G-103', N'Trống', N'G')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'G-104', N'Trống', N'G')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'G-105', N'Trống', N'G')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-101', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-102', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-103', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-104', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-105', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-201', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-202', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-203', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-204', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-205', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-301', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-302', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-303', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-304', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H1-305', N'Trống', N'H1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H2-101', N'Trống', N'H2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H2-102', N'Trống', N'H2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H2-103', N'Trống', N'H2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H2-104', N'Trống', N'H2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H2-105', N'Trống', N'H2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H2-106', N'Trống', N'H2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H2-107', N'Trống', N'H2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H2-108', N'Trống', N'H2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H2-109', N'Trống', N'H2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'H2-110', N'Trống', N'H2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'HT1', N'Trống', N'HT1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-101', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-102', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-103', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-104', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-105', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-201', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-202', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-203', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-204', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-205', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-301', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-302', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-303', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-304', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-305', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-401', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-402', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-403', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-404', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-405', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-501', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-502', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-503', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-504', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I1-505', N'Trống', N'I1')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-101', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-102', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-103', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-104', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-105', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-201', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-202', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-203', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-204', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-205', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-301', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-302', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-303', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-304', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-305', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-401', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-402', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-403', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-404', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I2-405', N'Trống', N'I2')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-101', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-102', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-103', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-104', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-105', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-201', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-202', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-203', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-204', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-205', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-301', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-302', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-303', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-304', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I3-305', N'Trống', N'I3')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-101', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-102', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-103', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-104', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-105', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-201', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-202', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-203', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-204', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-205', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-301', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-302', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-303', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-304', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-305', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-401', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-402', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-403', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-404', N'Trống', N'I4')
GO
INSERT [dbo].[PHONGHOC] ([MaPhongHoc], [TrangThai], [MaDayHoc]) VALUES (N'I4-405', N'Trống', N'I4')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL001', N'Lê Thị Thu Trang', NULL, NULL, N'0854215563', N'Quản lý Dãy A1, A2', N'Bình Dương')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL002', N'Trần Tiến Dũng', NULL, NULL, N'0145248876', N'Quản lý Dãy A3, A4', N'Bến Tre')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL003', N'Lê Văn Trí', NULL, NULL, N'0141154457', N'Quản lý Dãy B, C ', N'TP.HCM')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL004', N'Thái Thị Hà', NULL, NULL, N'0525462879', N'Quản lý Dãy D, E1', N'Bình Dương')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL005', N'Nguyễn Văn Châu', NULL, NULL, N'0234445185', N'Quản lý Dãy E2, E3  ', N'Bình Phước')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL006', N'Hoàng Phi Hùng', NULL, NULL, N'0505623589', N'Quản lý Dãy F1, F2 ', N'Lâm Đồng')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL007', N'Trần Nhật Khang', NULL, NULL, N'0151242277', N'Quản lý Dãy F3, G ', N'Bình Dương')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL008', N'Lý Hoài Nhung', NULL, NULL, N'0464588812', N'Quản lý Dãy H1, H2', N'Lâm Đồng')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL009', N'Nguyễn Trần Huyền Trang', NULL, NULL, N'0362452211', N'Quản lý Dãy I1, I2', N'Lâm Đồng')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL010', N'Phan Văn Khải', NULL, NULL, N'0787754547', N'Quản lý Dãy I3, I4', N'Đà Nẵng')
GO
INSERT [dbo].[QUANLY] ([MaQuanLy], [HoTen], [NgaySinh], [Email], [DienThoai], [ChucVu], [DiaChi]) VALUES (N'QL011', N'Thái Anh Hào', NULL, NULL, N'0464253470', N'Quản lý Hội Trường 1, Hội Trường 2', N'Phú Yên')
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-201', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-202', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-203', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-204', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-205', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-301', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-302', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-303', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-304', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A1-305', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-201', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-202', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-203', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-204', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-205', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-301', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-302', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-303', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-304', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A2-305', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'BG-LAB', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'DCTN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A3-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'A4-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-201', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-201', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-201', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-201', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-201', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-201', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-201', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-201', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-201', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-201', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-202', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-202', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-202', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-202', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-202', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-202', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-202', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-202', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-202', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-202', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-203', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-203', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-203', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-203', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-203', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-203', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-203', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-203', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-203', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-203', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-204', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-204', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-204', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-204', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-204', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-204', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-204', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-204', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-204', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-204', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-205', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-205', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-205', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-205', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-205', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-205', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-205', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-205', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-205', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-205', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-301', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-301', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-301', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-301', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-301', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-301', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-301', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-301', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-301', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-301', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-302', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-302', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-302', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-302', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-302', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-302', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-302', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-302', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-302', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-302', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-303', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-303', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-303', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-303', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-303', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-303', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-303', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-303', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-303', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-303', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-304', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-304', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-304', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-304', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-304', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-304', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-304', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-304', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-304', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-304', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-305', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-305', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-305', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-305', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-305', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-305', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-305', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-305', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-305', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-305', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-401', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-401', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-401', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-401', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-401', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-401', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-401', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-401', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-401', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-401', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-402', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-402', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-402', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-402', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-402', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-402', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-402', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-402', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-402', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-402', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-403', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-403', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-403', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-403', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-403', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-403', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-403', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-403', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-403', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-403', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-404', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-404', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-404', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-404', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-404', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-404', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-404', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-404', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-404', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-404', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-405', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-405', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-405', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-405', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-405', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-405', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-405', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-405', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-405', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-405', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-501', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-501', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-501', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-501', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-501', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-501', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-501', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-501', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-501', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-501', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-502', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-502', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-502', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-502', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-502', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-502', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-502', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-502', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-502', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-502', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-503', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-503', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-503', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-503', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-503', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-503', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-503', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-503', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-503', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-503', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-504', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-504', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-504', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-504', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-504', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-504', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-504', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-504', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-504', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-504', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-505', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-505', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-505', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-505', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-505', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-505', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-505', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-505', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-505', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'B-505', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'BG-PM', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'DEN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'MC', N'Tốt', 0)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'ML', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'PC', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'BG-PM', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'DEN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'MC', N'Tốt', 0)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'ML', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'PC', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'BG-PM', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'DEN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'MC', N'Tốt', 0)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'ML', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'PC', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'BG-PM', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'DEN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'MC', N'Tốt', 0)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'ML', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'PC', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'BG-PM', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'DEN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'MC', N'Tốt', 0)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'ML', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'PC', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'BG-PM', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'DEN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'MC', N'Tốt', 0)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'ML', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'PC', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-201', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'BG-PM', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'DEN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'MC', N'Tốt', 0)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'ML', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'PC', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-202', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'BG-PM', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'DEN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'MC', N'Tốt', 0)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'ML', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'PC', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-203', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'BG-PM', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'DEN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'MC', N'Tốt', 0)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'ML', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'PC', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-204', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'BG-PM', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'DEN', N'Tốt', 10)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'MC', N'Tốt', 0)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'ML', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'PC', N'Tốt', 60)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'QT', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'C-205', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-106', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-106', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-106', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-106', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-106', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-106', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-106', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-106', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-106', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-106', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-107', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-107', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-107', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-107', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-107', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-107', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-107', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-107', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-107', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-107', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-108', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-108', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-108', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-108', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-108', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-108', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-108', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-108', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-108', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-108', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-109', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-109', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-109', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-109', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-109', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-109', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-109', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-109', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-109', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-109', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-110', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-110', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-110', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-110', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-110', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-110', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-110', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-110', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-110', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'D-110', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-201', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-201', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-201', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-201', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-201', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-201', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-201', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-201', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-201', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-201', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-202', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-202', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-202', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-202', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-202', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-202', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-202', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-202', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-202', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-202', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-203', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-203', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-203', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-203', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-203', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-203', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-203', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-203', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-203', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-203', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-204', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-204', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-204', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-204', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-204', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-204', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-204', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-204', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-204', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-204', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-205', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-205', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-205', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-205', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-205', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-205', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-205', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-205', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-205', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-205', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-301', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-301', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-301', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-301', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-301', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-301', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-301', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-301', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-301', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-301', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-302', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-302', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-302', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-302', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-302', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-302', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-302', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-302', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-302', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-302', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-303', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-303', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-303', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-303', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-303', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-303', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-303', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-303', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-303', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-303', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-304', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-304', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-304', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-304', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-304', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-304', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-304', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-304', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-304', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-304', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-305', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-305', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-305', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-305', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-305', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-305', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-305', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-305', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-305', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-305', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-401', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-401', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-401', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-401', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-401', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-401', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-401', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-401', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-401', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-401', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-402', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-402', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-402', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-402', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-402', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-402', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-402', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-402', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-402', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-402', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-403', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-403', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-403', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-403', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-403', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-403', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-403', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-403', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-403', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-403', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-404', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-404', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-404', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-404', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-404', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-404', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-404', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-404', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-404', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-404', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-405', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-405', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-405', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-405', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-405', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-405', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-405', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-405', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-405', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E1-405', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E2-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'E3-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F1-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F2-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'F3-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'G-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-201', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-201', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-201', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-201', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-201', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-201', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-201', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-201', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-201', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-201', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-202', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-202', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-202', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-202', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-202', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-202', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-202', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-202', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-202', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-202', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-203', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-203', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-203', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-203', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-203', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-203', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-203', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-203', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-203', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-203', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-204', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-204', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-204', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-204', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-204', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-204', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-204', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-204', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-204', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-204', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-205', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-205', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-205', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-205', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-205', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-205', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-205', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-205', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-205', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-205', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-301', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-301', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-301', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-301', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-301', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-301', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-301', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-301', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-301', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-301', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-302', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-302', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-302', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-302', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-302', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-302', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-302', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-302', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-302', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-302', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-303', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-303', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-303', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-303', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-303', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-303', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-303', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-303', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-303', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-303', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-304', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-304', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-304', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-304', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-304', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-304', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-304', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-304', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-304', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-304', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-305', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-305', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-305', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-305', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-305', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-305', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-305', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-305', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-305', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H1-305', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-106', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-107', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-108', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-109', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'H2-110', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'HT1', N'BG-HT', N'Tốt', 500)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'HT1', N'DEN', N'Tốt', 30)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'HT1', N'LOA-HT', N'Tốt', 20)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'HT1', N'MH-HT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'HT1', N'ML', N'Tốt', 15)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'HT1', N'OA', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'HT1', N'PCCC', N'Tốt', 20)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-201', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-201', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-201', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-201', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-201', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-201', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-201', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-201', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-201', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-201', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-202', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-202', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-202', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-202', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-202', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-202', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-202', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-202', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-202', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-202', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-203', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-203', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-203', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-203', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-203', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-203', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-203', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-203', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-203', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-203', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-204', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-204', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-204', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-204', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-204', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-204', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-204', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-204', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-204', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-204', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-205', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-205', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-205', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-205', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-205', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-205', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-205', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-205', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-205', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-205', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-301', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-301', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-301', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-301', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-301', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-301', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-301', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-301', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-301', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-301', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-302', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-302', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-302', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-302', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-302', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-302', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-302', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-302', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-302', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-302', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-303', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-303', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-303', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-303', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-303', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-303', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-303', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-303', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-303', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-303', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-304', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-304', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-304', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-304', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-304', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-304', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-304', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-304', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-304', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-304', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-305', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-305', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-305', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-305', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-305', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-305', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-305', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-305', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-305', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-305', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-401', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-401', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-401', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-401', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-401', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-401', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-401', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-401', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-401', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-401', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-402', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-402', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-402', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-402', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-402', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-402', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-402', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-402', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-402', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-402', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-403', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-403', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-403', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-403', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-403', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-403', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-403', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-403', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-403', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-403', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-404', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-404', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-404', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-404', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-404', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-404', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-404', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-404', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-404', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-404', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-405', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-405', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-405', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-405', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-405', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-405', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-405', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-405', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-405', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-405', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-501', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-501', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-501', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-501', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-501', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-501', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-501', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-501', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-501', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-501', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-502', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-502', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-502', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-502', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-502', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-502', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-502', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-502', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-502', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-502', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-503', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-503', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-503', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-503', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-503', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-503', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-503', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-503', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-503', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-503', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-504', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-504', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-504', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-504', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-504', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-504', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-504', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-504', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-504', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-504', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-505', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-505', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-505', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-505', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-505', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-505', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-505', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-505', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-505', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I1-505', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-201', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-202', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-203', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-204', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-205', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-301', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-302', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-303', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-304', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-305', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-401', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-402', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-403', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-404', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'BG-VP', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'DEN', N'Tốt', 6)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'M-IN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'ML', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'MLN', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'OA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'PC', N'Tốt', 5)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'PCCC', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'QT', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I2-405', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-201', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-201', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-201', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-201', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-201', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-201', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-201', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-201', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-201', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-201', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-202', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-202', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-202', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-202', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-202', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-202', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-202', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-202', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-202', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-202', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-203', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-203', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-203', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-203', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-203', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-203', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-203', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-203', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-203', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-203', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-204', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-204', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-204', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-204', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-204', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-204', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-204', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-204', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-204', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-204', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-205', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-205', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-205', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-205', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-205', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-205', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-205', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-205', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-205', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-205', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-301', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-301', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-301', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-301', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-301', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-301', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-301', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-301', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-301', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-301', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-302', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-302', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-302', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-302', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-302', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-302', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-302', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-302', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-302', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-302', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-303', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-303', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-303', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-303', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-303', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-303', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-303', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-303', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-303', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-303', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-304', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-304', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-304', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-304', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-304', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-304', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-304', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-304', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-304', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-304', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-305', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-305', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-305', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-305', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-305', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-305', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-305', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-305', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-305', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I3-305', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-101', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-101', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-101', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-101', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-101', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-101', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-101', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-101', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-101', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-101', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-102', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-102', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-102', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-102', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-102', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-102', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-102', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-102', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-102', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-102', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-103', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-103', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-103', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-103', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-103', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-103', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-103', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-103', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-103', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-103', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-104', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-104', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-104', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-104', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-104', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-104', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-104', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-104', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-104', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-104', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-105', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-105', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-105', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-105', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-105', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-105', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-105', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-105', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-105', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-105', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-201', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-201', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-201', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-201', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-201', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-201', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-201', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-201', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-201', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-201', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-202', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-202', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-202', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-202', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-202', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-202', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-202', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-202', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-202', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-202', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-203', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-203', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-203', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-203', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-203', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-203', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-203', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-203', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-203', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-203', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-204', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-204', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-204', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-204', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-204', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-204', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-204', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-204', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-204', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-204', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-205', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-205', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-205', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-205', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-205', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-205', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-205', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-205', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-205', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-205', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-301', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-301', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-301', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-301', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-301', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-301', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-301', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-301', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-301', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-301', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-302', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-302', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-302', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-302', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-302', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-302', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-302', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-302', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-302', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-302', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-303', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-303', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-303', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-303', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-303', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-303', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-303', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-303', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-303', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-303', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-304', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-304', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-304', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-304', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-304', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-304', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-304', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-304', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-304', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-304', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-305', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-305', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-305', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-305', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-305', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-305', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-305', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-305', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-305', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-305', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-401', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-401', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-401', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-401', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-401', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-401', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-401', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-401', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-401', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-401', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-402', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-402', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-402', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-402', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-402', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-402', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-402', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-402', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-402', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-402', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-403', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-403', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-403', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-403', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-403', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-403', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-403', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-403', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-403', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-403', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-404', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-404', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-404', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-404', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-404', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-404', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-404', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-404', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-404', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-404', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-405', N'BANG', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-405', N'BG-GV', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-405', N'BG-PH', N'Tốt', 35)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-405', N'DEN', N'Tốt', 8)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-405', N'LOA', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-405', N'MC', N'Tốt', 1)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-405', N'ML', N'Tốt', 3)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-405', N'PCCC', N'Tốt', 2)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-405', N'QT', N'Tốt', 4)
GO
INSERT [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi], [TinhTrang], [SoLuong]) VALUES (N'I4-405', N'TV', N'Tốt', 1)
GO
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [HoTen], [Lop], [NgaySinh], [Email], [DienThoai], [ChuyenNganh], [DiaChi]) VALUES (N'2124802010859', N'Phan Ngọc Tùng', N'D21CNTT06', CAST(N'2003-12-24' AS Date), N'2124802010859@student.tdmu.edu.vn', N'0919208873', N'CNTT', N'Lâm Đồng')
GO
SET IDENTITY_INSERT [dbo].[SUCOBAOTRI] ON 
GO
INSERT [dbo].[SUCOBAOTRI] ([MaSuCoBaoTri], [MaPhongHoc], [MoTaSuCo], [ThoiGianBaoCao], [MaSinhVien], [MaGiangVien], [MaQuanLy], [MaTrangThietBi], [TinhTrangXuLy]) VALUES (1, N'I1-205', N'Hỏng máy lạnh', CAST(N'2023-10-06T14:25:02.000' AS DateTime), N'2124802010859', NULL, N'QL001', N'ML', N'Chở xử lý')
GO
INSERT [dbo].[SUCOBAOTRI] ([MaSuCoBaoTri], [MaPhongHoc], [MoTaSuCo], [ThoiGianBaoCao], [MaSinhVien], [MaGiangVien], [MaQuanLy], [MaTrangThietBi], [TinhTrangXuLy]) VALUES (2, N'E1-101', N'Mất điện', CAST(N'2023-10-06T15:04:06.000' AS DateTime), NULL, N'GV001', N'QL001', N'DEN', N'Chờ xử lý')
GO
INSERT [dbo].[SUCOBAOTRI] ([MaSuCoBaoTri], [MaPhongHoc], [MoTaSuCo], [ThoiGianBaoCao], [MaSinhVien], [MaGiangVien], [MaQuanLy], [MaTrangThietBi], [TinhTrangXuLy]) VALUES (3, N'H1-304', N'Hỏng máy chiếu', CAST(N'2023-10-06T12:35:00.000' AS DateTime), NULL, N'GV002', N'QL002', N'MC', N'Chờ xử lý')
GO
SET IDENTITY_INSERT [dbo].[SUCOBAOTRI] OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 
GO
INSERT [dbo].[TAIKHOAN] ([TaiKhoanID], [MaQuanLy], [MaGiangVien], [MaSinhVien], [MaNhanVien], [TenDangNhap], [MatKhau], [LoaiTaiKhoan]) VALUES (2, N'QL001', NULL, NULL, NULL, N'QL001', N'QL001', N'QL')
GO
INSERT [dbo].[TAIKHOAN] ([TaiKhoanID], [MaQuanLy], [MaGiangVien], [MaSinhVien], [MaNhanVien], [TenDangNhap], [MatKhau], [LoaiTaiKhoan]) VALUES (3, NULL, N'GV001', NULL, NULL, N'GV001', N'GV001', N'GV')
GO
INSERT [dbo].[TAIKHOAN] ([TaiKhoanID], [MaQuanLy], [MaGiangVien], [MaSinhVien], [MaNhanVien], [TenDangNhap], [MatKhau], [LoaiTaiKhoan]) VALUES (4, NULL, NULL, N'2124802010859', NULL, N'2124802010859', N'2124802010859', N'SV')
GO
INSERT [dbo].[TAIKHOAN] ([TaiKhoanID], [MaQuanLy], [MaGiangVien], [MaSinhVien], [MaNhanVien], [TenDangNhap], [MatKhau], [LoaiTaiKhoan]) VALUES (5, NULL, NULL, NULL, N'NV001', N'NV001', N'NV001', N'NV')
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
INSERT [dbo].[THOIKHOABIEU] ([MaLopHoc], [MaPhongHoc], [MaQuanLy], [ThuNgayHoc], [NgayBatDau], [NgayKetThuc], [TietBatDau], [TietKetThuc]) VALUES (N'KTCH-CQ03', N'H1-205', N'QL001', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[THONGKE] ON 
GO
INSERT [dbo].[THONGKE] ([ThongKeID], [MaPhongHoc], [SoLanSuCo], [ThongTinBaoCao], [NgayGioBaoCao], [MaQuanLy]) VALUES (1, N'E1-101', NULL, NULL, NULL, N'QL001')
GO
SET IDENTITY_INSERT [dbo].[THONGKE] OFF
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'BANG', N'Bảng ', NULL, N'Cái', NULL, N'PH-PM-TH')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'BG-GV', N'Bàn ghế giảng viên', NULL, N'Bộ', N'1 bàn + 1 ghế', N'PH-TH-PM')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'BG-HT', N'Ghế phòng hội trường', NULL, N'Cái', NULL, N'HT')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'BG-LAB', N'Bàn ghế phòng thực hành', NULL, N'Bộ', N'1 bàn + 6 ghế', N'TH')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'BG-PH', N'Bàn ghế phòng học', NULL, N'Bộ ', N'1 bàn + 2 ghế', N'PH')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'BG-PM', N'Bàn Ghế phòng máy', NULL, N'Bộ', N'1 bàn +1 ghế', N'PM')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'BG-VP', N'Bàn ghế văn phòng', NULL, N'Bộ', N'1 bàn + 1 ghế', N'VP')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'DCTN', N'Dụng cụ thí nghiệm', NULL, N'Bộ', NULL, N'TH')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'DEN', N'Đèn', NULL, N'Cái', NULL, N'CHUNG')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'LOA', N'Bộ loa phát thanh', NULL, N'Bộ', N'1 Amply + 1 mic + 2 loa', N'PH-TH-PM')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'LOA-HT', N'Hệ thống âm thanh', NULL, N'Bộ', NULL, N'HT')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'MC', N'Máy chiếu', NULL, N'Bộ', N'1 máy + 1 màn hình cuốn+ 1 điều khiển', N'PH-TH-PM-VP')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'MH-HT', N'Màn hình leb phòng hội trường', NULL, N'Bộ', NULL, N'HT')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'M-IN', N'Máy In', NULL, N'Cái', NULL, N'VP')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'ML', N'Máy lạnh', NULL, N'Cái', N'1 máy + 1 điều kiển', N'CHUNG')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'MLN', N'Máy lọc nước', NULL, N'Cái', NULL, N'VP')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'OA', N'Máy Ổn Áp', NULL, N'Cái', NULL, N'VP-TH-HT')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'PC', N'Máy tính bàn', NULL, N'Bộ', N'1 màn hình + 1 thùng máy + 1 bàn phím + 1 chuột + 1 tai nghe', N'VP-PM')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'PCCC', N'Bình chữa cháy', NULL, N'Bình', N'Bình khí CO2', N'CHUNG')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'QT', N'Quạt trần', NULL, N'Cái', NULL, N'PH-TH-PM-VP')
GO
INSERT [dbo].[TRANGTHIETBI] ([MaTrangThietBi], [TenTrangThietBi], [SoLuong], [DonViTinh], [GhiChu], [Loai]) VALUES (N'TV', N'Ti vi ', NULL, N'Cái', N'1 tivi + 1 điều khiển', N'PH-TH-PM-VP')
GO
ALTER TABLE [dbo].[DANGKYMONHOC]  WITH CHECK ADD  CONSTRAINT [FK_DANGKYMONHOC_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[DANGKYMONHOC] CHECK CONSTRAINT [FK_DANGKYMONHOC_MONHOC]
GO
ALTER TABLE [dbo].[DANGKYMONHOC]  WITH CHECK ADD  CONSTRAINT [FK_DANGKYMONHOC_SINHVIEN1] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[DANGKYMONHOC] CHECK CONSTRAINT [FK_DANGKYMONHOC_SINHVIEN1]
GO
ALTER TABLE [dbo].[DATPHONG]  WITH CHECK ADD  CONSTRAINT [FK__DATPHONG__MaPhon__11158940] FOREIGN KEY([MaPhongHoc])
REFERENCES [dbo].[PHONGHOC] ([MaPhongHoc])
GO
ALTER TABLE [dbo].[DATPHONG] CHECK CONSTRAINT [FK__DATPHONG__MaPhon__11158940]
GO
ALTER TABLE [dbo].[DATPHONG]  WITH CHECK ADD  CONSTRAINT [FK_DATPHONG_GIANGVIEN1] FOREIGN KEY([MaGiangVien])
REFERENCES [dbo].[GIANGVIEN] ([MaGiangVien])
GO
ALTER TABLE [dbo].[DATPHONG] CHECK CONSTRAINT [FK_DATPHONG_GIANGVIEN1]
GO
ALTER TABLE [dbo].[DATPHONG]  WITH CHECK ADD  CONSTRAINT [FK_DATPHONG_QUANLY1] FOREIGN KEY([MaQuanLy])
REFERENCES [dbo].[QUANLY] ([MaQuanLy])
GO
ALTER TABLE [dbo].[DATPHONG] CHECK CONSTRAINT [FK_DATPHONG_QUANLY1]
GO
ALTER TABLE [dbo].[DATPHONG]  WITH CHECK ADD  CONSTRAINT [FK_DATPHONG_SINHVIEN1] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[DATPHONG] CHECK CONSTRAINT [FK_DATPHONG_SINHVIEN1]
GO
ALTER TABLE [dbo].[DAYHOC]  WITH CHECK ADD  CONSTRAINT [FK_DayHoc_QuanLy] FOREIGN KEY([MaQuanLy])
REFERENCES [dbo].[QUANLY] ([MaQuanLy])
GO
ALTER TABLE [dbo].[DAYHOC] CHECK CONSTRAINT [FK_DayHoc_QuanLy]
GO
ALTER TABLE [dbo].[LOPHOC]  WITH CHECK ADD  CONSTRAINT [FK_LOPHOC_GIANGVIEN] FOREIGN KEY([MaGiangVien])
REFERENCES [dbo].[GIANGVIEN] ([MaGiangVien])
GO
ALTER TABLE [dbo].[LOPHOC] CHECK CONSTRAINT [FK_LOPHOC_GIANGVIEN]
GO
ALTER TABLE [dbo].[LOPHOC]  WITH CHECK ADD  CONSTRAINT [FK_LOPHOC_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[LOPHOC] CHECK CONSTRAINT [FK_LOPHOC_MONHOC]
GO
ALTER TABLE [dbo].[PHANCONGXULY_SUCO]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONGXULY_SUCO_BOPHANXULYSUCO1] FOREIGN KEY([MaNguoiXuLy])
REFERENCES [dbo].[BOPHANXULYSUCO] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHANCONGXULY_SUCO] CHECK CONSTRAINT [FK_PHANCONGXULY_SUCO_BOPHANXULYSUCO1]
GO
ALTER TABLE [dbo].[PHANCONGXULY_SUCO]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONGXULY_SUCO_SUCOBAOTRI] FOREIGN KEY([MaSuCoBaoTri], [MaPhongHoc], [MaQuanLy])
REFERENCES [dbo].[SUCOBAOTRI] ([MaSuCoBaoTri], [MaPhongHoc], [MaQuanLy])
GO
ALTER TABLE [dbo].[PHANCONGXULY_SUCO] CHECK CONSTRAINT [FK_PHANCONGXULY_SUCO_SUCOBAOTRI]
GO
ALTER TABLE [dbo].[PHONGHOC]  WITH CHECK ADD  CONSTRAINT [FK_PhongHoc_DayHoc] FOREIGN KEY([MaDayHoc])
REFERENCES [dbo].[DAYHOC] ([MaDayHoc])
GO
ALTER TABLE [dbo].[PHONGHOC] CHECK CONSTRAINT [FK_PhongHoc_DayHoc]
GO
ALTER TABLE [dbo].[QUANLY_TRANGTHIETBI]  WITH CHECK ADD  CONSTRAINT [FK__PHONGHOC___MaPho__7EF6D905] FOREIGN KEY([MaPhongHoc])
REFERENCES [dbo].[PHONGHOC] ([MaPhongHoc])
GO
ALTER TABLE [dbo].[QUANLY_TRANGTHIETBI] CHECK CONSTRAINT [FK__PHONGHOC___MaPho__7EF6D905]
GO
ALTER TABLE [dbo].[QUANLY_TRANGTHIETBI]  WITH CHECK ADD  CONSTRAINT [FK__PHONGHOC___MaTra__7FEAFD3E] FOREIGN KEY([MaTrangThietBi])
REFERENCES [dbo].[TRANGTHIETBI] ([MaTrangThietBi])
GO
ALTER TABLE [dbo].[QUANLY_TRANGTHIETBI] CHECK CONSTRAINT [FK__PHONGHOC___MaTra__7FEAFD3E]
GO
ALTER TABLE [dbo].[SUCOBAOTRI]  WITH CHECK ADD  CONSTRAINT [FK_SUCOBAOTRI_GIANGVIEN] FOREIGN KEY([MaGiangVien])
REFERENCES [dbo].[GIANGVIEN] ([MaGiangVien])
GO
ALTER TABLE [dbo].[SUCOBAOTRI] CHECK CONSTRAINT [FK_SUCOBAOTRI_GIANGVIEN]
GO
ALTER TABLE [dbo].[SUCOBAOTRI]  WITH CHECK ADD  CONSTRAINT [FK_SUCOBAOTRI_QUANLY] FOREIGN KEY([MaQuanLy])
REFERENCES [dbo].[QUANLY] ([MaQuanLy])
GO
ALTER TABLE [dbo].[SUCOBAOTRI] CHECK CONSTRAINT [FK_SUCOBAOTRI_QUANLY]
GO
ALTER TABLE [dbo].[SUCOBAOTRI]  WITH CHECK ADD  CONSTRAINT [FK_SUCOBAOTRI_QUANLY_TRANGTHIETBI] FOREIGN KEY([MaPhongHoc], [MaTrangThietBi])
REFERENCES [dbo].[QUANLY_TRANGTHIETBI] ([MaPhongHoc], [MaTrangThietBi])
GO
ALTER TABLE [dbo].[SUCOBAOTRI] CHECK CONSTRAINT [FK_SUCOBAOTRI_QUANLY_TRANGTHIETBI]
GO
ALTER TABLE [dbo].[SUCOBAOTRI]  WITH CHECK ADD  CONSTRAINT [FK_SUCOBAOTRI_SINHVIEN] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[SUCOBAOTRI] CHECK CONSTRAINT [FK_SUCOBAOTRI_SINHVIEN]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_BOPHANXULYSUCO1] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[BOPHANXULYSUCO] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_BOPHANXULYSUCO1]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_GIANGVIEN1] FOREIGN KEY([MaGiangVien])
REFERENCES [dbo].[GIANGVIEN] ([MaGiangVien])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_GIANGVIEN1]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_QUANLY1] FOREIGN KEY([MaQuanLy])
REFERENCES [dbo].[QUANLY] ([MaQuanLy])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_QUANLY1]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_SINHVIEN1] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_SINHVIEN1]
GO
ALTER TABLE [dbo].[THOIKHOABIEU]  WITH CHECK ADD  CONSTRAINT [FK__THOIKHOAB__MaPho__32767D0B] FOREIGN KEY([MaPhongHoc])
REFERENCES [dbo].[PHONGHOC] ([MaPhongHoc])
GO
ALTER TABLE [dbo].[THOIKHOABIEU] CHECK CONSTRAINT [FK__THOIKHOAB__MaPho__32767D0B]
GO
ALTER TABLE [dbo].[THOIKHOABIEU]  WITH CHECK ADD  CONSTRAINT [FK_THOIKHOABIEU_LOPHOC] FOREIGN KEY([MaLopHoc])
REFERENCES [dbo].[LOPHOC] ([MaLopHoc])
GO
ALTER TABLE [dbo].[THOIKHOABIEU] CHECK CONSTRAINT [FK_THOIKHOABIEU_LOPHOC]
GO
ALTER TABLE [dbo].[THOIKHOABIEU]  WITH CHECK ADD  CONSTRAINT [FK_THOIKHOABIEU_QUANLY] FOREIGN KEY([MaQuanLy])
REFERENCES [dbo].[QUANLY] ([MaQuanLy])
GO
ALTER TABLE [dbo].[THOIKHOABIEU] CHECK CONSTRAINT [FK_THOIKHOABIEU_QUANLY]
GO
ALTER TABLE [dbo].[THONGKE]  WITH CHECK ADD  CONSTRAINT [FK__THONGKE__MaPhong__1A9EF37A] FOREIGN KEY([MaPhongHoc])
REFERENCES [dbo].[PHONGHOC] ([MaPhongHoc])
GO
ALTER TABLE [dbo].[THONGKE] CHECK CONSTRAINT [FK__THONGKE__MaPhong__1A9EF37A]
GO
ALTER TABLE [dbo].[THONGKE]  WITH CHECK ADD  CONSTRAINT [FK_THONGKE_QUANLY] FOREIGN KEY([MaQuanLy])
REFERENCES [dbo].[QUANLY] ([MaQuanLy])
GO
ALTER TABLE [dbo].[THONGKE] CHECK CONSTRAINT [FK_THONGKE_QUANLY]
GO
