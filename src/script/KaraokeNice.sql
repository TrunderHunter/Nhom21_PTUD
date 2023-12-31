CREATE DATABASE[KaraokeNice]
GO

USE [KaraokeNice]
GO
/****** Object:  Table [dbo].[ChiTietDichVu]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDichVu](
	[maDichVu] [nvarchar](50) NOT NULL,
	[maHoaDon] [nvarchar](50) NOT NULL,
	[soLuong] [int] NULL,
 CONSTRAINT [pk_ChiTietDichVu] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC,
	[maDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maHoaDon] [nvarchar](50) NOT NULL,
	[maPhong] [nvarchar](50) NOT NULL,
	[thoiLuongSuDung] [int] NULL,
 CONSTRAINT [pk_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC,
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[maDichVu] [nvarchar](50) NOT NULL,
	[maSanPham] [nvarchar](50) NULL,
	[tenDichVu] [nvarchar](50) NULL,
	[donViTinh] [nvarchar](50) NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[trangThaiDichVu] [bit] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[maDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [nvarchar](50) NOT NULL,
	[maNhanVien] [nvarchar](50) NULL,
	[maKhachHang] [nvarchar](50) NULL,
	[ngayLap] [date] NULL,
	[gioNhanPhong] [datetime] NULL,
	[gioKetThuc] [datetime] NULL,
	[thue] [float] NULL,
	[khuyenMai] [float] NULL,
	[tienKhachTra] [decimal](18, 0) NULL,
	[trangThai] [bit] NULL,
	[tongTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKhachHang] [nvarchar](50) NOT NULL,
	[hoTenKhachHang] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [bit] NULL,
	[diaChi] [nvarchar](50) NULL,
	[CCCD] [nvarchar](50) NULL,
	[soDienThoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[maLoaiNhanVien] [nvarchar](50) NOT NULL,
	[tenLoaiNhanVien] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[maLoaiNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[maLoaiPhong] [nvarchar](50) NOT NULL,
	[tenLoai] [nvarchar](50) NULL,
	[sucChua] [int] NULL,
	[giaTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[maLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[maLoaiSanPham] [nvarchar](50) NOT NULL,
	[tenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[maLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [nvarchar](50) NOT NULL,
	[tenNhanVien] [nvarchar](50) NULL,
	[CCCD] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [bit] NULL,
	[diaChi] [nvarchar](50) NULL,
	[soDienThoai] [nvarchar](50) NULL,
	[trangThaiLamViec] [bit] NULL,
	[quanly] [bit] NULL,
	[maLoaiNhanVien] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatPhong]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatPhong](
	[maPhieuDatPhong] [nvarchar](50) NOT NULL,
	[maPhong] [nvarchar](50) NOT NULL,
	[maNhanVien] [nvarchar](50) NOT NULL,
	[maKhachHang] [nvarchar](50) NULL,
	[thoiGianDat] [datetime] NULL,
	[thoiGianNhanPhong] [datetime] NULL,
	[soLuongNguoi] [int] NULL,
	[ghiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_PhieuDatPhong] PRIMARY KEY CLUSTERED 
(
	[maPhieuDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[maPhong] [nvarchar](50) NOT NULL,
	[maTrangThaiPhong] [nvarchar](50) NULL,
	[maLoaiPhong] [nvarchar](50) NULL,
	[dienTich] [float] NULL,
	[chieuCao] [float] NULL,
	[vatLieuCachAm] [nvarchar](50) NULL,
	[tiVi] [nvarchar](100) NULL,
	[soLuongTiVi] [int] NULL,
	[thuongHieuTiVi] [nvarchar](50) NULL,
	[ban] [nvarchar](50) NULL,
	[soLuongBan] [int] NULL,
	[soFa] [nvarchar](50) NULL,
	[soLuongSoFa] [int] NULL,
	[danLoa] [nvarchar](50) NULL,
	[moTa] [nvarchar](max) NULL,
	[tinhTrangBaoTri] [bit] NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[luotCho] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSanPham] [nvarchar](50) NOT NULL,
	[tenSanPham] [nvarchar](50) NULL,
	[soLuongSanPham] [int] NULL,
	[ngayNhapSanPham] [date] NULL,
	[hanSuDung] [date] NULL,
	[noiLayHang] [nvarchar](max) NULL,
	[giaNhap] [decimal](18, 0) NULL,
	[nhaCungCap] [nvarchar](50) NULL,
	[maLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[maTaiKhoan] [nvarchar](50) NOT NULL,
	[maNhanvien] [nvarchar](50) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[passWord] [nvarchar](50) NULL,
	[email] [varchar](50) NOT NULL UNIQUE,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[maTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiPhong]    Script Date: 11/7/2023 10:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiPhong](
	[maTrangThaiPhong] [nvarchar](50) NOT NULL,
	[tenTrangThaiPhong] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrangThaiPhong] PRIMARY KEY CLUSTERED 
(
	[maTrangThaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV001', N'HDA001250922', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA001250922', 10)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV006', N'HDA001550922', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV001', N'HDA001650922', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA001650922', 10)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV001', N'HDA001750922', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA001750922', 10)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV006', N'HDA001750922', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA001850922', 10)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV006', N'HDA001850922', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA002041022', 10)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV006', N'HDA002041022', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV001', N'HDA002750922', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV006', N'HDA002750922', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA002850922', 10)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA002950922', 10)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV012', N'HDA003041022', 8)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV006', N'HDA003050922', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV001', N'HDA003150922', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA003250922', 10)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV001', N'HDA003350922', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA003350922', 7)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV006', N'HDA003450922', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV007', N'HDA003450922', 7)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV001', N'HDA004041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV019', N'HDA004041022', 24)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV017', N'HDA005041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV004', N'HDA007041022', 8)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA008041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV015', N'HDA008041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV016', N'HDA008041022', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV012', N'HDA009041022', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV001', N'HDA010041022', 8)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV002', N'HDA011041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV006', N'HDA011041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV019', N'HDA011041022', 8)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA012041022', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV001', N'HDA013041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA013041022', 10)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV004', N'HDA013041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV015', N'HDA013041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV001', N'HDA014041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV003', N'HDA014041022', 10)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV006', N'HDA014041022', 5)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV014', N'HDA014041022', 8)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV016', N'HDA014041022', 2)
INSERT [dbo].[ChiTietDichVu] ([maDichVu], [maHoaDon], [soLuong]) VALUES (N'DV025', N'HDA014041022', 5)
GO
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA001250922', N'P004', 3)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA001550922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA001650922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA001750922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA001850922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA001950922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002041022', N'P006', 4)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002050922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002150922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002250922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002350922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002450922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002550922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002650922', N'P004', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002750922', N'P009', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002850922', N'P014', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA002950922', N'P015', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA003041022', N'P008', 4)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA003050922', N'P010', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA003150922', N'P011', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA003250922', N'P012', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA003350922', N'P012', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA003450922', N'P017', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA004041022', N'P013', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA005041022', N'P016', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA006041022', N'P011', 4)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA007041022', N'P015', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA008041022', N'P003', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA009041022', N'P015', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA010041022', N'P017', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA011041022', N'P018', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA012041022', N'P020', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA013041022', N'P014', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA014041022', N'P015', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA015041022', N'P014', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA016041022', N'P004', 6)

INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA017041022', N'P014', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA018041022', N'P004', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA019041022', N'P014', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA020041022', N'P011', 5)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA021041022', N'P014', 7)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA022041022', N'P004', 6)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA023041022', N'P014', 3)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA024041022', N'P004', 2)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA025041022', N'P012', 3)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA026041022', N'P003', 2)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA027041022', N'P020', 3)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA028041022', N'P012', 2)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA029041022', N'P014', 3)
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong], [thoiLuongSuDung]) VALUES (N'HDA030041022', N'P004', 2)

GO
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV001', N'SP0030', N'Nước suối(Miễn phí)', N'Lon', N'\\src\\image\\sanPham\\nuocSuoi.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV002', N'SP0001', N'Trái cây Thập cẩm', N'Đĩa', N'\\src\\image\\sanPham\\traiCayThapCam.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV003', N'SP0005', N'Bia 333', N'Lon', N'\\src\\image\\sanPham\\bia333.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV004', N'SP0006', N'Bia SaiGon', N'Lon', N'\\src\\image\\sanPham\\biaSaiGon.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV005', N'SP0003', N'Khô gà', N'Đĩa', N'\\src\\image\\sanPham\\khoGa.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV006', N'SP0004', N'Khô bò', N'Đĩa', N'\\src\\image\\sanPham\\khoBo.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV007', N'SP0014', N'CocaCola', N'Lon', N'\\src\\image\\sanPham\\cocacola.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV008', N'SP0015', N'7up', N'Lon', N'\\src\\image\\sanPham\\7up.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV009', N'SP0016', N'Pepsi', N'Lon', N'\\src\\image\\sanPham\\pepsi.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV010', N'SP0001', N'Trái cây Tự chọn', N'Đĩa', N'\\src\\image\\sanPham\\traiCayTuChon.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV011', N'SP0002', N'Đậu phộng', N'Lon', N'\\src\\image\\sanPham\\dauPhong.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV012', N'SP0007', N'Bia Tiger', N'Lon', N'\\src\\image\\sanPham\\biaTiger.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV013', N'SP0008', N'Bia Ken', N'Lon', N'\\src\\image\\sanPham\\biaKen.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV014', N'SP0009', N'Bia Hà Nội', N'Lon', N'\\src\\image\\sanPham\\biaHaNoi.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV015', N'SP0017', N'Nước suối', N'Lon', N'\\src\\image\\sanPham\\nuocSuoi.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV016', N'SP0010', N'Rượu trắng', N'Lon', N'\\src\\image\\sanPham\\ruouTrang.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV017', N'SP0011', N'Rượu Vang', N'Chai', N'\\src\\image\\sanPham\\ruouVang.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV018', N'SP0019', N'Rượu Nho', N'Chai', N'\\src\\image\\sanPham\\ruouNho.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV019', N'SP0018', N'Fanta', N'Lon', N'\\src\\image\\sanPham\\fanta.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV020', N'SP0020', N'Sting', N'Lon', N'\\src\\image\\sanPham\\sting.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV021', N'SP0025', N'Nước ép trái cây', N'Ly', N'\\src\\image\\sanPham\\nuocEpTraiCay.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV022', N'SP0021', N'Mirinda', N'Lon', N'\\src\\image\\sanPham\\mirinda.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV023', N'SP0022', N'Bia không cồn', N'Lon', N'\\src\\image\\sanPham\\biaKhongCon.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV024', N'SP0023', N'Trà xanh', N'Chai', N'\\src\\image\\sanPham\\traXanh.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV025', N'SP0024', N'Sinh tố trái cây ', N'Ly', N'\\src\\image\\sanPham\\sinhToTraiCay.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV026', N'SP0012', N'Whisky', N'Chai', N'\\src\\image\\sanPham\\whisky.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV027', N'SP0025', N'Cơm chiên dương châu', N'Dĩa', N'\\src\\image\\sanPham\\comChienDuongChau.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV028', N'SP0026', N'Mì xào hải sản', N'Dĩa', N'\\src\\image\\sanPham\\miXaoHaiSan.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV029', N'SP0024', N'Bánh kem', N'Hộp', N'\\src\\image\\sanPham\\banhKem.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV030', N'SP0013', N'Rượu chuối', N'Chai', N'\\src\\image\\sanPham\\ruouChuoi.jpg', 1)
INSERT [dbo].[DichVu] ([maDichVu], [maSanPham], [tenDichVu], [donViTinh], [hinhAnh], [trangThaiDichVu]) VALUES (N'DV031', N'SP0027', N'Gà quay', N'Dĩa', N'\\src\\image\\sanPham\\gaQuay.jpg', 1)
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA001250922', N'NV043201', N'KH04', CAST(N'2023-09-10' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(1155000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA001550922', N'NV043201', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(2155000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA001650922', N'NV043201', N'KH04', CAST(N'2023-09-10' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(3155000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA001750922', N'NV043201', N'KH04', CAST(N'2023-09-11' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(135000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA001850922', N'NV043201', N'KH04', CAST(N'2023-09-12' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(355000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA001950922', N'NV043201', N'KH04', CAST(N'2023-09-13' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(196000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002041022', N'NV043201', N'KH02', CAST(N'2023-10-04' AS Date), CAST(N'2023-10-04T19:00:00.000' AS DateTime), CAST(N'2023-10-04T22:00:00.000' AS DateTime), 10, NULL, CAST(1100000 AS Decimal(18, 0)), 1, CAST(1018000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002050922', N'NV043201', N'KH04', CAST(N'2023-09-14' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(22155000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002150922', N'NV043201', N'KH04', CAST(N'2023-09-15' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(3355000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002250922', N'NV043201', N'KH04', CAST(N'2023-09-16' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(55000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002350922', N'NV043201', N'KH04', CAST(N'2023-09-17' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(355000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002450922', N'NV043201', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(1155000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002550922', N'NV043201', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(3155000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002650922', N'NV043201', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(4155000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002750922', N'NV043201', N'KH04', CAST(N'2023-09-15' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(2255000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002850922', N'NV043201', N'KH04', CAST(N'2023-09-16' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(44000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA002950922', N'NV043201', N'KH04', CAST(N'2023-09-17' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(555000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA003041022', N'NV043201', N'KH05', CAST(N'2023-10-04' AS Date), CAST(N'2023-10-04T20:00:00.000' AS DateTime), CAST(N'2023-10-04T00:00:00.000' AS DateTime), 10, NULL, CAST(1100000 AS Decimal(18, 0)), 1, CAST(1100000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA003050922', N'NV043201', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(655000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA003150922', N'NV043201', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(355000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA003250922', N'NV043201', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(455000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA003350922', N'NV043211', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(1455000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA003450922', N'NV043211', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-09-25T19:00:00.000' AS DateTime), CAST(N'2023-09-25T21:00:00.000' AS DateTime), 10, NULL, CAST(1200000 AS Decimal(18, 0)), 1, CAST(2155000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA004041022', N'NV043201', N'KH09', CAST(N'2023-10-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(2900000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA005041022', N'NV043201', N'KH08', CAST(N'2023-10-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA006041022', N'NV043209', N'KH10', CAST(N'2023-10-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA007041022', N'NV043209', N'KH11', CAST(N'2023-10-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA008041022', N'NV043207', N'KH12', CAST(N'2023-10-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA009041022', N'NV043210', N'KH13', CAST(N'2023-10-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA010041022', N'NV043201', N'KH14', CAST(N'2023-10-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA011041022', N'NV043210', N'KH15', CAST(N'2023-11-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(1058000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA012041022', N'NV043210', N'KH16', CAST(N'2023-12-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(1570000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA013041022', N'NV043210', N'KH17', CAST(N'2023-07-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(3500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA014041022', N'NV043210', N'KH18', CAST(N'2023-08-04' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA015041022', N'NV078901', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))

INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA016041022', N'NV078901', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))

INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA017041022', N'NV078901', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))

INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA018041022', N'NV078901', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))

INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA019041022', N'NV078901', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))

INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA020041022', N'NV078901', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))

INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA021041022', N'NV078901', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))

INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA022041022', N'NV078901', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))

INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA023041022', N'NV078901', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA024041022', N'NV078901', N'KH04', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))


INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA025041022', N'NV078901', N'KH04', CAST(N'2023-09-10' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA026041022', N'NV078901', N'KH04', CAST(N'2023-09-11' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA027041022', N'NV078901', N'KH04', CAST(N'2023-09-12' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA028041022', N'NV078901', N'KH04', CAST(N'2023-09-14' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(4500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA029041022', N'NV078901', N'KH04', CAST(N'2023-09-08' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(55500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([maHoaDon], [maNhanVien], [maKhachHang], [ngayLap], [gioNhanPhong], [gioKetThuc], [thue], [khuyenMai], [tienKhachTra], [trangThai], [tongTien]) VALUES (N'HDA030041022', N'NV078901', N'KH04', CAST(N'2023-09-03' AS Date), CAST(N'2023-10-04T18:00:00.000' AS DateTime), CAST(N'2023-10-04T23:00:00.000' AS DateTime), 10, NULL, NULL, 1, CAST(12500000 AS Decimal(18, 0)))



GO
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH01', N'Nguyễn Thị Minh Khai', CAST(N'2000-12-03' AS Date), 1, N'Hồ Chí Minh', N'251036726', N'0362174592')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH02', N'Phan Văn Trị', CAST(N'1995-12-07' AS Date), 0, N'Hồ Chí Minh', N'251039742', N'0314702589')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH03', N'Nguyễn Oanh', CAST(N'1993-01-12' AS Date), 1, N'Hồ Chí Minh', N'215041208', N'0962017523')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH04', N'Võ Thị Sáu', CAST(N'1992-03-19' AS Date), 1, N'Hồ Chí Minh', N'251823049', N'0371015451')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH05', N'Hồ Thị Kỷ', CAST(N'1999-09-19' AS Date), 1, N'Hồ Chí Minh', N'251668001', N'0967102433')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH06', N'Lê Thị Hồng Gấm', CAST(N'2000-05-26' AS Date), 1, N'Hồ Chí Minh', N'251930175', N'0934021681')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH07', N'Nguyễn Văn Bảo', CAST(N'1993-12-12' AS Date), 0, N'Hồ Chí Minh', N'251119334', N'0947120545')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH08', N'Quang Trung', CAST(N'1997-03-29' AS Date), 0, N'Hồ Chí Minh', N'251033341', N'0632150543')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH09', N'Nguyễn Huệ', CAST(N'1998-12-30' AS Date), 0, N'Hồ Chí Minh', N'251006713', N'0321587541')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH10', N'Tuyết Mai', CAST(N'2002-12-09' AS Date), 1, N'Hồ Chí Minh', N'251033492', N'0362201540')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH11', N'Nguyễn Gia Hy', CAST(N'2000-12-03' AS Date), 1, N'Hồ Chí Minh', N'251036736', N'0362174523')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH12', N'Phan Văn Trị', CAST(N'2002-12-07' AS Date), 0, N'Hồ Chí Minh', N'251039732', N'0314702524')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH13', N'Nguyễn Hiền', CAST(N'2003-01-12' AS Date), 1, N'Hồ Chí Minh', N'215041238', N'0962017524')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH14', N'Võ Thị Chín', CAST(N'2001-03-19' AS Date), 1, N'Hồ Chí Minh', N'251823039', N'0371015436')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH15', N'Hồ Thị Hoàng', CAST(N'2000-09-19' AS Date), 1, N'Hồ Chí Minh', N'251668301', N'0967102427')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH16', N'Lê Thị Hồng Hạng ', CAST(N'2002-05-26' AS Date), 1, N'Hồ Chí Minh', N'231930175', N'0934021638')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH17', N'Nguyễn Văn Bảo Trúc', CAST(N'2002-12-12' AS Date), 0, N'Hồ Chí Minh', N'351119334', N'0947120529')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH18', N'Quang Trung Lâm', CAST(N'2006-03-29' AS Date), 0, N'Hồ Chí Minh', N'251033341', N'06321505430')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH19', N'Nguyễn Huệ Hiền', CAST(N'2007-12-30' AS Date), 0, N'Hồ Chí Minh', N'251036713', N'0321587531')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH20', N'Tuyết Mai Thi ', CAST(N'1999-12-09' AS Date), 1, N'Hồ Chí Minh', N'251033492', N'0362201532')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH22', N'Nguyễn Gia Anh', CAST(N'2000-12-03' AS Date), 1, N'Hồ Chí Minh', N'251236736', N'0362274523')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH23', N'Phan Văn Bình', CAST(N'2002-12-07' AS Date), 0, N'Hồ Chí Minh', N'251029732', N'0312702524')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH24', N'Nguyễn Hiền', CAST(N'2003-01-12' AS Date), 1, N'Hồ Chí Minh', N'215041238', N'0922017524')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH25', N'Võ Thị Lâm', CAST(N'2001-03-19' AS Date), 1, N'Hồ Chí Minh', N'251823029', N'0321015436')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH26', N'Hồ Thị Yến', CAST(N'2000-09-19' AS Date), 1, N'Hồ Chí Minh', N'251668321', N'0927102427')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH27', N'Lê Thị Hồng Nhung ', CAST(N'2002-05-26' AS Date), 1, N'Hồ Chí Minh', N'221930175', N'0234021638')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH28', N'Nguyễn Văn An ', CAST(N'2002-12-12' AS Date), 0, N'Hồ Chí Minh', N'351112334', N'0927120529')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH29', N'Quang Trung Hy', CAST(N'2006-03-29' AS Date), 0, N'Hồ Chí Minh', N'251032341', N'06221505430')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH30', N'Nguyễn Huệ Trâm', CAST(N'2007-12-30' AS Date), 0, N'Hồ Chí Minh', N'251026713', N'0221587531')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTenKhachHang], [ngaySinh], [gioiTinh], [diaChi], [CCCD], [soDienThoai]) VALUES (N'KH31', N'Tuyết Mai Huyền ', CAST(N'1999-12-09' AS Date), 1, N'Hồ Chí Minh', N'251233492', N'0262201532')
GO
INSERT [dbo].[LoaiNhanVien] ([maLoaiNhanVien], [tenLoaiNhanVien]) VALUES (N'LNV01', N'Quản lý nhân viên')
INSERT [dbo].[LoaiNhanVien] ([maLoaiNhanVien], [tenLoaiNhanVien]) VALUES (N'LNV02', N'Nhân viên thu ngân')
GO
INSERT [dbo].[LoaiPhong] ([maLoaiPhong], [tenLoai], [sucChua], [giaTien]) VALUES (N'PL', N'Phòng lớn', 20, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[LoaiPhong] ([maLoaiPhong], [tenLoai], [sucChua], [giaTien]) VALUES (N'PN', N'Phòng nhỏ', 5, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[LoaiPhong] ([maLoaiPhong], [tenLoai], [sucChua], [giaTien]) VALUES (N'PV', N'Phòng vừa', 10, CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[LoaiPhong] ([maLoaiPhong], [tenLoai], [sucChua], [giaTien]) VALUES (N'VIP', N'Phòng VIP', 30, CAST(300000 AS Decimal(18, 0)))
GO
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP01', N'Trái cây')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP02', N'Đồ ăn vặt')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP03', N'Khô')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP04', N'Đồ uống có cồn')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP05', N'Đồ uống không cồn')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP06', N'Đồ ngọt')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP07', N'Món được chế biến')
INSERT [dbo].[LoaiSanPham] ([maLoaiSanPham], [tenLoaiSanPham]) VALUES (N'LSP08', N'Miễn phí')
GO
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043201', N'Lê Thanh Tùng', N'251349432', CAST(N'2002-05-19' AS Date), 0, N'Hồ Chí Minh', N'0632017594', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043202', N'Nguyễn Gia Hy ', N'079202002', CAST(N'2002-11-05' AS Date), 0, N'Hồ Chí Minh', N'03399483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043203', N'Mã Tố Trâm ', N'023202003', CAST(N'2002-12-06' AS Date), 1, N'An Giang ', N'0299483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043204', N'Nguyễn Gia khang  ', N'234242002', CAST(N'2000-09-07' AS Date), 0, N'Bình Định ', N'0439483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043205', N'Nguyễn Gia Hoàng', N'349502002', CAST(N'2001-11-05' AS Date), 0, N'Khánh Hòa', N'0599483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043206', N'Võ Nguyễn Thanh Long  ', N'159202002', CAST(N'2002-07-08' AS Date), 0, N'Gia Lai ', N'0639483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043207', N'Hoàng Gia Bảo ', N'289802003', CAST(N'2002-12-09' AS Date), 0, N'Điện Biên', N'0739483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043208', N'Lê Thái Hoàng  ', N'643202001', CAST(N'2002-11-07' AS Date), 0, N'Long An ', N'08399483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043209', N'Nguyễn Nhất Trí  ', N'089202000', CAST(N'2002-08-06' AS Date), 0, N'Hồ Chí Minh', N'0339483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043210', N'Long Bảo Đại', N'369202000', CAST(N'2000-12-04' AS Date), 0, N'Hồ Chí Minh', N'0329483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043211', N'Nguyễn Thanh Huyền', N'249202001', CAST(N'2001-07-06' AS Date), 1, N'Hồ Chí Minh', N'0313483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043212', N'Lâm Bảo Quốc', N'229404002', CAST(N'2002-09-05' AS Date), 0, N'Hồ Chí Minh', N'0494483301', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043213', N'Phan Hoài Trí', N'251349432', CAST(N'2002-05-19' AS Date), 0, N'Hồ Chí Minh', N'0632017501', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043215', N'Nguyễn Gia Khánh ', N'079202003', CAST(N'2002-11-05' AS Date), 0, N'Hồ Chí Minh', N'03399483303', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043216', N'Mã Tố Huyền ', N'023202005', CAST(N'2002-12-06' AS Date), 1, N'An Giang ', N'0299483304', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043217', N'Nguyễn Gia Vũ  ', N'234242006', CAST(N'2000-09-07' AS Date), 0, N'Bình Định ', N'0439483305', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043218', N'Nguyễn Gia Long', N'349502007', CAST(N'2001-11-05' AS Date), 0, N'Khánh Hòa', N'0599483306', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043219', N'Võ Nguyễn Thanh Tùng  ', N'159202022', CAST(N'2002-07-08' AS Date), 0, N'Gia Lai ', N'0639483307', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043220', N'Hoàng Gia Hưng ', N'289802033', CAST(N'2002-12-09' AS Date), 0, N'Điện Biên', N'0739483306', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043221', N'Lê Thái Cường   ', N'643202031', CAST(N'2002-11-07' AS Date), 0, N'Long An ', N'08399483309', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043222', N'Nguyễn Nhất Anh ', N'089202040', CAST(N'2002-08-06' AS Date), 0, N'Hồ Chí Minh', N'0339483311', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043223', N'Long Bảo Hoàng', N'369202050', CAST(N'2000-12-04' AS Date), 0, N'Hồ Chí Minh', N'03294833012', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043224', N'Nguyễn Thanh Trí', N'249202071', CAST(N'2001-07-06' AS Date), 1, N'Hồ Chí Minh', N'0313483313', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV043225', N'Lâm Bảo Cường', N'229404092', CAST(N'2002-09-05' AS Date), 0, N'Hồ Chí Minh', N'04944833014', 1, 0, N'LNV02')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV078901', N'Trần Văn Hùng', N'251430789', CAST(N'2002-12-28' AS Date), 0, N'Hồ Chí Minh', N'0396209345', 1, 0, N'LNV01')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [CCCD], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [trangThaiLamViec], [quanly], [maLoaiNhanVien]) VALUES (N'NV078914', N'Võ Nguyễn Thanh Tùng', N'251430781', CAST(N'2002-12-02' AS Date), 0, N'Hồ Chí Minh', N'0362147502', 1, 0, N'LNV01')
GO
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP001', N'P014', N'NV043201', N'KH10', CAST(N'2023-10-04T10:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 10, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP002', N'P015', N'NV043201', N'KH01', CAST(N'2023-10-04T15:00:00.000' AS DateTime), CAST(N'2023-10-04T18:00:00.000' AS DateTime), 12, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP003', N'P003', N'NV043201', N'KH03', CAST(N'2023-10-04T15:00:00.000' AS DateTime), CAST(N'2023-10-04T18:00:00.000' AS DateTime), 5, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP004', N'P010', N'NV043201', N'KH07', CAST(N'2023-10-04T16:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 9, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP005', N'P004', N'NV043201', N'KH05', CAST(N'2023-10-04T10:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 10, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP006', N'P015', N'NV043201', N'KH06', CAST(N'2023-10-04T15:00:00.000' AS DateTime), CAST(N'2023-10-04T17:00:00.000' AS DateTime), 12, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP007', N'P002', N'NV043201', N'KH02', CAST(N'2023-10-04T15:00:00.000' AS DateTime), CAST(N'2023-10-04T18:00:00.000' AS DateTime), 5, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP008', N'P006', N'NV043201', N'KH04', CAST(N'2023-10-04T16:00:00.000' AS DateTime), CAST(N'2023-10-04T20:00:00.000' AS DateTime), 9, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP009', N'P016', N'NV043207', N'KH08', CAST(N'2023-10-04T10:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 10, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP010', N'P007', N'NV043208', N'KH09', CAST(N'2023-10-04T13:00:00.000' AS DateTime), CAST(N'2023-10-04T16:00:00.000' AS DateTime), 22, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP011', N'P016', N'NV043207', N'KH08', CAST(N'2023-10-04T10:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 10, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP012', N'P007', N'NV043208', N'KH09', CAST(N'2023-10-04T13:00:00.000' AS DateTime), CAST(N'2023-10-04T16:00:00.000' AS DateTime), 22, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP013', N'P016', N'NV043207', N'KH08', CAST(N'2023-10-04T10:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 10, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP014', N'P007', N'NV043208', N'KH09', CAST(N'2023-10-04T13:00:00.000' AS DateTime), CAST(N'2023-10-04T16:00:00.000' AS DateTime), 22, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP015', N'P016', N'NV043211', N'KH10', CAST(N'2023-10-04T10:00:00.000' AS DateTime), CAST(N'2023-05-04T19:00:00.000' AS DateTime), 10, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP016', N'P016', N'NV043211', N'KH10', CAST(N'2023-05-04T10:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 20, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP017', N'P017', N'NV043212', N'KH11', CAST(N'2023-06-04T14:00:00.000' AS DateTime), CAST(N'2023-10-04T16:00:00.000' AS DateTime), 21, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP018', N'P018', N'NV043213', N'KH12', CAST(N'2023-07-04T13:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 22, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP019', N'P020', N'NV043215', N'KH14', CAST(N'2023-09-04T15:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 25, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP020', N'P020', N'NV043215', N'KH14', CAST(N'2023-09-04T15:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 25, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP021', N'P018', N'NV043216', N'KH15', CAST(N'2023-10-04T13:00:00.000' AS DateTime), CAST(N'2023-10-04T16:00:00.000' AS DateTime), 26, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP022', N'P016', N'NV043217', N'KH16', CAST(N'2023-11-04T10:00:00.000' AS DateTime), CAST(N'2023-10-04T19:00:00.000' AS DateTime), 15, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP023', N'P017', N'NV043218', N'KH17', CAST(N'2023-12-04T13:00:00.000' AS DateTime), CAST(N'2023-10-04T16:00:00.000' AS DateTime), 17, NULL)
--INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP024', N'P001', N'NV043201', N'KH16', CAST(N'2023-11-07T22:17:21.000' AS DateTime), CAST(N'2023-11-08T22:17:00.000' AS DateTime), 5, N'null')
--INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP025', N'P001', N'NV043201', N'KH23', CAST(N'2023-11-07T22:17:35.000' AS DateTime), CAST(N'2023-11-09T22:17:00.000' AS DateTime), 5, N'null')
--INSERT [dbo].[PhieuDatPhong] ([maPhieuDatPhong], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDat], [thoiGianNhanPhong], [soLuongNguoi], [ghiChu]) VALUES (N'PDP026', N'P001', N'NV043201', N'KH30', CAST(N'2023-11-07T22:17:47.000' AS DateTime), CAST(N'2023-11-12T22:17:00.000' AS DateTime), 5, N'null')
GO
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P001', N'PT', N'PN', 25, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Samsung 70inch', 1, N'Samsung Electronics', N'Vuông nhỏ', 2, N'Dài', 1, N'Loa karaoke BIK BSP 412', N'Đây là mẫu phòng karaoke mang chất hiện đại. Những hình khối khỏe khoắn rõ ràng nhưng thể hiện được sự hiện đại tinh tế đẳng cấp. Phòng karaoke này được khách hàng ưa chuộng bởi sự đơn giản nhưng tinh tế, ấm cúng và đẳng cấp.', 0, N'\\src\\image\\phong\\phong1.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P002', N'PT', N'PN', 25, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Samsung 70inch', 1, N'Samsung Electronics', N'Vuông nhỏ', 2, N'Dài', 1, N'Loa karaoke BIK BSP 412', N'Đây là mẫu phòng karaoke mang chất hiện đại. Những hình khối khỏe khoắn rõ ràng nhưng thể hiện được sự hiện đại tinh tế đẳng cấp. Phòng karaoke này được khách hàng ưa chuộng bởi sự đơn giản nhưng tinh tế, ấm cúng và đẳng cấp.', 0, N'\\src\\image\\phong\\phong1.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P003', N'PT', N'PN', 25, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Samsung 70inch', 1, N'Samsung Electronics', N'Vuông nhỏ', 2, N'Dài', 1, N'Loa karaoke BIK BSP 412', N'Đây là mẫu phòng karaoke mang chất hiện đại. Những hình khối khỏe khoắn rõ ràng nhưng thể hiện được sự hiện đại tinh tế đẳng cấp. Phòng karaoke này được khách hàng ưa chuộng bởi sự đơn giản nhưng tinh tế, ấm cúng và đẳng cấp.', 0, N'\\src\\image\\phong\\phong1.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P004', N'PT', N'PN', 25, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Samsung 70inch', 1, N'Samsung Electronics', N'Vuông nhỏ', 2, N'Dài', 1, N'Loa karaoke BIK BSP 412', N'Đây là mẫu phòng karaoke mang chất hiện đại. Những hình khối khỏe khoắn rõ ràng nhưng thể hiện được sự hiện đại tinh tế đẳng cấp. Phòng karaoke này được khách hàng ưa chuộng bởi sự đơn giản nhưng tinh tế, ấm cúng và đẳng cấp.', 0, N'\\src\\image\\phong\\phong1.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P005', N'PT', N'PN', 25, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Samsung 70inch', 1, N'Samsung Electronics', N'Vuông nhỏ', 2, N'Dài', 1, N'Loa karaoke BIK BSP 412', N'Đây là mẫu phòng karaoke mang chất hiện đại. Những hình khối khỏe khoắn rõ ràng nhưng thể hiện được sự hiện đại tinh tế đẳng cấp. Phòng karaoke này được khách hàng ưa chuộng bởi sự đơn giản nhưng tinh tế, ấm cúng và đẳng cấp.', 0, N'\\src\\image\\phong\\phong1.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P006', N'PT', N'PV', 30, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Samsung 70inch', 1, N'Samsung Electronics', N'Dài', 1, N'Dài', 2, N'Loa karaoke BIK BSP 412', N'Lung linh, ảo diệu, đơn giản, đẳng cấp… là những từ ngữ để mô tả cho mẫu thiết kế phòng karaoke dạng này. Phát huy tối đa khả năng của lập trình màn hình led kết hợp các hình khối kiến trúc rõ ràng khỏe khoắn tạo nên phòng karaoke rất được ưa chuộng hiện nay của các chủ đầu tư.', 0, N'\\src\\image\\phong\\phong2.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P007', N'PT', N'PV', 30, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Samsung 70inch', 1, N'Samsung Electronics', N'Dài', 1, N'Dài', 2, N'Loa karaoke BIK BSP 412', N'Lung linh, ảo diệu, đơn giản, đẳng cấp… là những từ ngữ để mô tả cho mẫu thiết kế phòng karaoke dạng này. Phát huy tối đa khả năng của lập trình màn hình led kết hợp các hình khối kiến trúc rõ ràng khỏe khoắn tạo nên phòng karaoke rất được ưa chuộng hiện nay của các chủ đầu tư.', 0, N'\\src\\image\\phong\\phong2.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P008', N'PT', N'PV', 30, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Samsung 70inch', 1, N'Samsung Electronics', N'Dài', 1, N'Dài', 2, N'Loa karaoke BIK BSP 412', N'Lung linh, ảo diệu, đơn giản, đẳng cấp… là những từ ngữ để mô tả cho mẫu thiết kế phòng karaoke dạng này. Phát huy tối đa khả năng của lập trình màn hình led kết hợp các hình khối kiến trúc rõ ràng khỏe khoắn tạo nên phòng karaoke rất được ưa chuộng hiện nay của các chủ đầu tư.', 0, N'\\src\\image\\phong\\phong2.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P009', N'PT', N'PV', 30, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Samsung 70inch', 1, N'Samsung Electronics', N'Dài', 1, N'Dài', 2, N'Loa karaoke BIK BSP 412', N'Lung linh, ảo diệu, đơn giản, đẳng cấp… là những từ ngữ để mô tả cho mẫu thiết kế phòng karaoke dạng này. Phát huy tối đa khả năng của lập trình màn hình led kết hợp các hình khối kiến trúc rõ ràng khỏe khoắn tạo nên phòng karaoke rất được ưa chuộng hiện nay của các chủ đầu tư.', 0, N'\\src\\image\\phong\\phong2.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P010', N'PT', N'PV', 30, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Samsung 70inch', 1, N'Samsung Electronics', N'Dài', 1, N'Dài', 2, N'Loa karaoke BIK BSP 412', N'Lung linh, ảo diệu, đơn giản, đẳng cấp… là những từ ngữ để mô tả cho mẫu thiết kế phòng karaoke dạng này. Phát huy tối đa khả năng của lập trình màn hình led kết hợp các hình khối kiến trúc rõ ràng khỏe khoắn tạo nên phòng karaoke rất được ưa chuộng hiện nay của các chủ đầu tư.', 0, N'\\src\\image\\phong\\phong2.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P011', N'PT', N'PL', 35, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi LG 70inch', 2, N'LG Electronics', N'Dài', 3, N'Dài', 3, N'Loa karaoke BIK BSP 412', N'Đây là mẫu phòng karaoke rất được ưa chuộng bởi sự cầu kỳ của hệ thống màn hình led p10 tạo ra không gian ảo diệu hòa quện giữa không gian và ánh sáng. Với những phòng karaoke dạng này là sự kết hợp tinh tuy nhất giữ công nghệ hiện đại và hình khối kiến trúc mạnh mẽ, khác biệt. Khách hàng hát karaoke ở những phòng karaoke thế này sẽ được sống và hòa quyện trong không gian 3d ngập tràn hiệu ứng. Phòng karaoke loại này cần xử lý nhiều màn hình led nên giá thành có cao hơn đôi chút.', 0, N'\\src\\image\\phong\\phong3.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P012', N'PT', N'PL', 35, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi LG 70inch', 2, N'LG Electronics', N'Dài', 3, N'Dài', 3, N'Loa karaoke BIK BSP 412', N'Đây là mẫu phòng karaoke rất được ưa chuộng bởi sự cầu kỳ của hệ thống màn hình led p10 tạo ra không gian ảo diệu hòa quện giữa không gian và ánh sáng. Với những phòng karaoke dạng này là sự kết hợp tinh tuy nhất giữ công nghệ hiện đại và hình khối kiến trúc mạnh mẽ, khác biệt. Khách hàng hát karaoke ở những phòng karaoke thế này sẽ được sống và hòa quyện trong không gian 3d ngập tràn hiệu ứng. Phòng karaoke loại này cần xử lý nhiều màn hình led nên giá thành có cao hơn đôi chút.', 0, N'\\src\\image\\phong\\phong3.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P013', N'PT', N'PL', 35, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi LG 70inch', 2, N'LG Electronics', N'Dài', 3, N'Dài', 3, N'Loa karaoke BIK BSP 412', N'Đây là mẫu phòng karaoke rất được ưa chuộng bởi sự cầu kỳ của hệ thống màn hình led p10 tạo ra không gian ảo diệu hòa quện giữa không gian và ánh sáng. Với những phòng karaoke dạng này là sự kết hợp tinh tuy nhất giữ công nghệ hiện đại và hình khối kiến trúc mạnh mẽ, khác biệt. Khách hàng hát karaoke ở những phòng karaoke thế này sẽ được sống và hòa quyện trong không gian 3d ngập tràn hiệu ứng. Phòng karaoke loại này cần xử lý nhiều màn hình led nên giá thành có cao hơn đôi chút.', 0, N'\\src\\image\\phong\\phong4.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P014', N'PT', N'PL', 35, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi LG 70inch', 2, N'LG Electronics', N'Dài', 3, N'Dài', 3, N'Loa karaoke BIK BSP 412', N'Đây là mẫu phòng karaoke rất được ưa chuộng bởi sự cầu kỳ của hệ thống màn hình led p10 tạo ra không gian ảo diệu hòa quện giữa không gian và ánh sáng. Với những phòng karaoke dạng này là sự kết hợp tinh tuy nhất giữ công nghệ hiện đại và hình khối kiến trúc mạnh mẽ, khác biệt. Khách hàng hát karaoke ở những phòng karaoke thế này sẽ được sống và hòa quyện trong không gian 3d ngập tràn hiệu ứng. Phòng karaoke loại này cần xử lý nhiều màn hình led nên giá thành có cao hơn đôi chút.', 0, N'\\src\\image\\phong\\phong4.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P015', N'PT', N'PL', 35, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi LG 70inch', 2, N'LG Electronics', N'Dài', 3, N'Dài', 3, N'Loa karaoke BIK BSP 412', N'Đây là mẫu phòng karaoke rất được ưa chuộng bởi sự cầu kỳ của hệ thống màn hình led p10 tạo ra không gian ảo diệu hòa quện giữa không gian và ánh sáng. Với những phòng karaoke dạng này là sự kết hợp tinh tuy nhất giữ công nghệ hiện đại và hình khối kiến trúc mạnh mẽ, khác biệt. Khách hàng hát karaoke ở những phòng karaoke thế này sẽ được sống và hòa quyện trong không gian 3d ngập tràn hiệu ứng. Phòng karaoke loại này cần xử lý nhiều màn hình led nên giá thành có cao hơn đôi chút.', 0, N'\\src\\image\\phong\\phong4.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P016', N'PT', N'VIP', 40, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Sony 80inch', 3, N'Sony Electronics', N'Dài', 3, N'Dài', 4, N'Loa karaoke BIK BSP 412', N'Đây là phòng karaoke phong cách hoàng gia rất được khách hàng ưa chuộng. Với công nghệ mạ crome tạo nên sự lung linh hào nhoáng cho phòng karaoke phong cách này. Những vật liệu như alu vàng gương, inoc vàng… được áp dụng.Có thể trang trí theo yêu cầu', 0, N'\\src\\image\\phong\\phong5.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P017', N'PT', N'VIP', 40, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Sony 80inch', 3, N'Sony Electronics', N'Dài', 3, N'Dài', 4, N'Loa karaoke BIK BSP 412', N'Đây là phòng karaoke phong cách hoàng gia rất được khách hàng ưa chuộng. Với công nghệ mạ crome tạo nên sự lung linh hào nhoáng cho phòng karaoke phong cách này. Những vật liệu như alu vàng gương, inoc vàng… được áp dụng.Có thể trang trí theo yêu cầu', 0, N'\\src\\image\\phong\\phong5.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P018', N'PT', N'VIP', 40, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Sony 80inch', 3, N'Sony Electronics', N'Dài', 3, N'Dài', 4, N'Loa karaoke BIK BSP 412', N'Đây là phòng karaoke phong cách hoàng gia rất được khách hàng ưa chuộng. Với công nghệ mạ crome tạo nên sự lung linh hào nhoáng cho phòng karaoke phong cách này. Những vật liệu như alu vàng gương, inoc vàng… được áp dụng.Có thể trang trí theo yêu cầu', 0, N'\\src\\image\\phong\\phong6.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P019', N'PT', N'VIP', 40, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Sony 80inch', 3, N'Sony Electronics', N'Dài', 3, N'Dài', 4, N'Loa karaoke BIK BSP 412', N'Đây là phòng karaoke phong cách hoàng gia rất được khách hàng ưa chuộng. Với công nghệ mạ crome tạo nên sự lung linh hào nhoáng cho phòng karaoke phong cách này. Những vật liệu như alu vàng gương, inoc vàng… được áp dụng.Có thể trang trí theo yêu cầu', 0, N'\\src\\image\\phong\\phong7.jpg', 0)
INSERT [dbo].[Phong] ([maPhong], [maTrangThaiPhong], [maLoaiPhong], [dienTich], [chieuCao], [vatLieuCachAm], [tiVi], [soLuongTiVi], [thuongHieuTiVi], [ban], [soLuongBan], [soFa], [soLuongSoFa], [danLoa], [moTa], [tinhTrangBaoTri], [hinhAnh], [luotCho]) VALUES (N'P020', N'PT', N'VIP', 40, 3, N'Khung xương thạch cao vĩnh tường', N'Tivi Sony 80inch', 3, N'Sony Electronics', N'Dài', 3, N'Dài', 4, N'Loa karaoke BIK BSP 412', N'Đây là phòng karaoke phong cách hoàng gia rất được khách hàng ưa chuộng. Với công nghệ mạ crome tạo nên sự lung linh hào nhoáng cho phòng karaoke phong cách này. Những vật liệu như alu vàng gương, inoc vàng… được áp dụng.Có thể trang trí theo yêu cầu', 0, N'\\src\\image\\phong\\phong8.jpg', 0)
GO
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0001', N'Trái cây các loại', 150, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-06' AS Date), N'Chợ gò vấp', CAST(15000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP01')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0002', N'Đậu phộng', 150, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-06' AS Date), N'Chợ gò vấp', CAST(15000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP02')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0003', N'Khô gà', 150, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-06' AS Date), N'Chợ gò vấp', CAST(15000 AS Decimal(18, 0)), N'Khô gà Như Lan', N'LSP03')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0004', N'Khô bò', 150, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-06' AS Date), N'Chợ gò vấp', CAST(15000 AS Decimal(18, 0)), N'Khô gà Như Lan', N'LSP03')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0005', N'Bia 333', 100, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(35000 AS Decimal(18, 0)), N'Công ty CPTM Bia Sài Gòn Trung Tâm', N'LSP04')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0006', N'Bia SaiGon', 100, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(35000 AS Decimal(18, 0)), N'Công ty CPTM Bia Sài Gòn Trung Tâm', N'LSP04')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0007', N'Bia Tiger', 100, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(37000 AS Decimal(18, 0)), N'Công ty CPTM Bia Sài Gòn Trung Tâm', N'LSP04')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0008', N'Bia Ken', 100, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(32000 AS Decimal(18, 0)), N'Công ty CPTM Bia Sài Gòn Trung Tâm', N'LSP04')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0009', N'Bia Hà Nội', 100, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(33000 AS Decimal(18, 0)), N'Công ty CPTM Bia Sài Gòn Trung Tâm', N'LSP04')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0010', N'Rượu trắng', 10, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(200000 AS Decimal(18, 0)), N'Công ty CPTM Rượu Sài Gòn Trung Tâm', N'LSP04')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0011', N'Rượu Vang', 10, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(300000 AS Decimal(18, 0)), N'Công ty CPTM Rượu Sài Gòn Trung Tâm', N'LSP04')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0012', N'Whisky', 10, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(350000 AS Decimal(18, 0)), N'Công ty CPTM Rượu Sài Gòn Trung Tâm', N'LSP04')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0013', N'Rượu chuối', 10, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(300000 AS Decimal(18, 0)), N'Công ty CPTM Rượu Sài Gòn Trung Tâm', N'LSP04')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0014', N'CocaCola', 50, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-06' AS Date), N'Chợ gò vấp', CAST(20000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0015', N'7up', 50, CAST(N'2023-09-01' AS Date), CAST(N'2023-11-01' AS Date), N'Hồ Chí Minh', CAST(20000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0016', N'Pepsi', 50, CAST(N'2023-09-01' AS Date), CAST(N'2023-11-01' AS Date), N'Hồ Chí Minh', CAST(20000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0017', N'Nước suối', 50, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-06' AS Date), N'Chợ gò vấp', CAST(20000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0018', N'Fanta', 50, CAST(N'2023-09-01' AS Date), CAST(N'2023-11-01' AS Date), N'Hồ Chí Minh', CAST(20000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0019', N'Rượu Nho', 50, CAST(N'2023-09-01' AS Date), CAST(N'2023-11-01' AS Date), N'Hồ Chí Minh', CAST(20000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0020', N'Sting', 50, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-06' AS Date), N'Chợ gò vấp', CAST(20000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0021', N'Mirinda', 50, CAST(N'2023-09-01' AS Date), CAST(N'2023-11-01' AS Date), N'Hồ Chí Minh', CAST(20000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0022', N'Bia không cồn', 50, CAST(N'2023-09-01' AS Date), CAST(N'2023-11-01' AS Date), N'Hồ Chí Minh', CAST(20000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0023', N'Trà xanh', 50, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-06' AS Date), N'Chợ gò vấp', CAST(20000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0024', N'Sinh tố trái cây ', 25, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-06' AS Date), N'Chợ gò vấp', CAST(50000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0025', N'Nước ép trái cây ', 25, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-06' AS Date), N'Chợ gò vấp', CAST(50000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP05')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0026', N'Bánh kem', 10, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(200000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP06')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0027', N'Cơm chiên dương châu', 10, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(200000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP07')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0028', N'Mì xào hải sản', 10, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(220000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP07')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0029', N'Gà quay', 10, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(350000 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP07')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [soLuongSanPham], [ngayNhapSanPham], [hanSuDung], [noiLayHang], [giaNhap], [nhaCungCap], [maLoaiSanPham]) VALUES (N'SP0030', N'Nước suối(Miễn phí)', 100, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'Hồ Chí Minh', CAST(0 AS Decimal(18, 0)), N'Chợ Gò Vấp', N'LSP08')
GO
INSERT [dbo].[TaiKhoan] ([maTaiKhoan], [maNhanvien], [userName], [passWord], [email]) VALUES (N'TK01', N'NV043201', N'NV01', N'12345678', 'phucnguyen1122@gmail.com')
INSERT [dbo].[TaiKhoan] ([maTaiKhoan], [maNhanvien], [userName], [passWord], [email]) VALUES (N'TK02', N'NV078901', N'QL01', N'12345678', 'hungtran2002a2@gmail.com')
GO
INSERT [dbo].[TrangThaiPhong] ([maTrangThaiPhong], [tenTrangThaiPhong]) VALUES (N'PC', N'Phòng chờ')
INSERT [dbo].[TrangThaiPhong] ([maTrangThaiPhong], [tenTrangThaiPhong]) VALUES (N'PT', N'Phòng trống')
INSERT [dbo].[TrangThaiPhong] ([maTrangThaiPhong], [tenTrangThaiPhong]) VALUES (N'SD', N'Phòng đang sử dụng')
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDichVu_DichVu] FOREIGN KEY([maDichVu])
REFERENCES [dbo].[DichVu] ([maDichVu])
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [FK_ChiTietDichVu_DichVu]
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDichVu_HoaDon] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [FK_ChiTietDichVu_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Phong] FOREIGN KEY([maPhong])
REFERENCES [dbo].[Phong] ([maPhong])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Phong]
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD FOREIGN KEY([maSanPham])
REFERENCES [dbo].[SanPham] ([maSanPham])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([maLoaiNhanVien])
REFERENCES [dbo].[LoaiNhanVien] ([maLoaiNhanVien])
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatPhong_Phong] FOREIGN KEY([maPhong])
REFERENCES [dbo].[Phong] ([maPhong])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [FK_PhieuDatPhong_Phong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD FOREIGN KEY([maLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([maLoaiPhong])
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD FOREIGN KEY([maTrangThaiPhong])
REFERENCES [dbo].[TrangThaiPhong] ([maTrangThaiPhong])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([maLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([maLoaiSanPham])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([maNhanvien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
/*
SELECT * FROM HoaDon
SELECT * FROM NhanVien
SELECT * FROM TaiKhoan
SELECT * FROM PhieuDatPhong
SELECT * FROM ChiTietHoaDon
SELECT * FROM ChiTietDichVu
SELECT * FROM KhachHang
SELECT * FROM Phong

*/