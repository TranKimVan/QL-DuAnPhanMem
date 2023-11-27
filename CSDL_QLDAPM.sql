--create database shop

use shop;

create table danhmuc
(
	madm int primary key identity(1, 1),
	ten nvarchar(100) not null
);
go

create table mathang
(
	mamh int primary key identity(1, 1),
	ten nvarchar(100) not null,
	giagoc int default 0,
	giaban int default 0,
	soluong smallint default 0,
	mota nvarchar(1000),
	hinhanh varchar(255),
	madm int not null foreign key (madm) references danhmuc(madm),
	luotxem int default 0,
	luotmua int default 0
);
go

create table khachhang
(
	makh int primary key identity(1, 1),
	ten nvarchar(100) not null,
	dienthoai varchar(20),
	email varchar(50),
	matkhau varchar(50)
);
go

create table diachi
(
	madc int primary key identity(1, 1),
	makh int not null foreign key (makh) references khachhang(makh),
	diachi nvarchar(100) not null,
	phuongxa nvarchar(50),
	quanhuyen nvarchar(50),
	tinhthanh nvarchar(50),
	macdinh int
);
go

create table hoadon
(
	mahd int primary key identity(1, 1),
	ngay datetime,
	tongtien int default 0,
	makh int not null foreign key (makh) references khachhang(makh),
	trangthai int
);
go

create table cthoadon
(
	macthd int primary key identity(1, 1),
	mahd int not null foreign key (mahd) references hoadon(mahd),
	mamh int not null foreign key (mamh) references mathang(mamh),
	dongia int default 0,
	soluong smallint default 0,
	thanhtien int default 0
);
go

create table chucvu
(
	macv int primary key identity(1, 1),
	ten nvarchar(100) not null,
	heso float default 0
);
go

create table nhanvien
(
	manv int primary key identity(1, 1),
	ten nvarchar(100) not null,
	macv int not null foreign key (macv) references chucvu(macv),
	dienthoai varchar(20),
	email varchar(50),
	matkhau varchar(50)
);
go

-- chen du lieu
insert into danhmuc(ten) values (N'Quần thể thao');
insert into danhmuc(ten) values (N'Áo thể thao');
insert into danhmuc(ten) values (N'Giày thể thao');
go

insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Giày Nike Đen', N'Kích thước (Rộng × Dày).\n Thiết kế tinh tế.\nMang lại cảm giác thoải mái.', 200000, 200000, 10, 'anh1.jpg', 3);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Giày Nike Xanh Dương', N'Màu sắc hài hòa, tạo cảm giác nhẹ nhàng khi vận động, Nike là một mẫu giày vô cùng hot hiện nay. Vô cùng tiện dụng cho các hoạt động thể thao.', 757000, 757000, 20, 'anh2.jpg', 3);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Áo Thun Nam Đỏ A10s ', N'Mẫu áo được thiết kế - tính tế, thể hiện tính cách nổi trội và độ thanh lịch của thời trang thể thao… để đáp ứng nhu cầu và phù hợp với những bạn trẻ Việt Nam.', 820000, 820000, 20, 'h1.jpg', 2);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Áo Thun Nam Vàng A10s', N'Áo thun nam có thiết kế hiện đại, cá tính.  Máy mỏng nhẹ với chất liệu bền bỉ, mềm mại.', 635000, 635000, 30, 'h2.jpg',2);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Áo Puma P10 Unisex', N'Màu sắc trang nhã. Phù hợp với nam và nữ, thời thượng. Thể hiện cá tính tăng sự tự tin, thoải mái, chất liệu mềm mại.', 178000, 178000, 25, 'h3.jpg', 2);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Áo Puma P10 Nam', N'Sản phẩm được làm từ chất liệu vải mềm mịn, mỏng nhẹ. Sản phẩm có kích thước phù hợp với nhiều size khác nhau. Logo Puma ấn tượng tạo điểm nhấn thêm cho chiếc áo', 52000, 52000, 50, 'h4.jpg', 2);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Giày Puma Đen Nam ', N'Sản phẩm đế được làm bằng nhựa cao cấp, thân thiện với môi . \nThiết kế hiện đại, đơn giản nhưng tinh tế với kiểu dáng nhỏ gọn tiện dụng.', 600000, 600000, 30, 'h5.jpg', 3);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Giày Puma Xanh Nữ', N'Sản phẩm đế được làm bằng nhựa cao cấp, màu sắc đẹp và bắt mắt. \nSản phẩm được thiết kế với kiểu dáng đơn giản, kích thước nhỏ gọn.', 60000, 60000, 20, 'h6.jpg', 3);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Áo Thể Thao 285B - Màu Xanh', N'Có thiết kế rộng rãi thoải mái đáp ứng tốt việc vận động thể chất. \nCó kích cỡ, phù hợp với hầu hết các bạn nam. Xuất đảm bảo chất lượng sản phẩm. \nChất liệu bằng cotton cao cấp. Mát mẻ thoải mái.', 85000, 85000, 10, 'h8.jpg', 2);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Giày Thể Thao Adidas - Xanh 6642', N'- Sản xuất từ chất liệu chắc chắn, vừa vặn tạo cảm giác thoải mái khi sử dụng \n- Đa dạng đủ mọi kích cỡ từ 36 - 42 size phù hợp với mọi nhu cầu.', 85000, 850000, 20, 'h9.jpg', 3);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Giày Thể Thao Adidas - Cam 6642,', N'Sản phẩm thiết kế tinh tế từ thương hiệu logo Adidas. Sản phẩm đang hot và bán chạy nhiều nhất  trong những năm gần đây.\nThiết kế sản phẩm nhỏ gọn, tiện lợi', 550000, 550000, 20, 'h10.jpg', 3);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Giày Fila Nữ Yalong 19020', N'Giày Fila nữ được thiết kế rất sang trọng, độ bền cao.\nSản phẩm có thiết kế chắc chắn, dễ sử dụng, phù hợp với mọi outfic.', 530000, 530000, 20, 'h12.jpg', 3);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Áo Thun Fila Nữ PB-2011C', N'Áo Fila được thiết kế với Logo ấn tượng, Tạo nên cá tính trong phong cách.Đơn giản màu sắc đơn giản dễ phối đồ.', 70000, 70000, 20, 'h13.jpg', 2);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Quần Short Nam Xanh N110', N'Chất liệu: cotton \nSố Lượng/quần: 100 \nTrọng lượng (gr): 800\nKích Thước: full size', 74000, 74000, 20, 'h14.jpg', 1);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Quần Short Nam Cam N110 - Viền Cam', N'Sản phẩm quần thể thao dành cho các hoạt động thể thao, đẹp và logo Nike ấn tượng, nhỏ gọn, tiện lợi.', 104000, 104000, 20, 'h15.jpg', 1);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Quần Thể Thao Nike Nam', N'Sản phẩm vô cùng tiện lợi, tạo nên sự tin tế và tươi trẻ. Với logo Nike đã trở thành một trong những thương hiệu thể thao nổi tiếng của thế giới và sự hứng cho người dùng.', 320000, 320000, 20, 'h16.jpg', 3);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Quần Thể Thao Nike Nữ KR971430', N'Màu Xanh Mint đang là xu hướng... Sản phẩm được làm bằng chất liệu vải cotton mát mịn, thân trong, và sắc nét. \nQuần thể thao nữ Nike tiện dụng xinh xắn, gọn nhẹ, dễ dàng thoải mái.', 290000, 290000, 20, 'h17.jpg', 1);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Quần Thể Thao Adidas Xanh Đen Q110', N'Thương hiệu Adidas có mặt phổ biến trên nhiều quốc gia, với chất lượng sản phẩm đáng tin cậy. Tạo nên xu hướng thời trang thanh lịch sang trong với những thiết kế đơn giản, đẹp, luôn đảm bảo chất lượng và uy tín cho người tiêu dùng.', 84000, 84000, 20, 'h18.jpg', 1);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Quần Thể Thao Adidas Xám Trắng Q110', N'Thương hiệu Adidas có mặt phổ biến trên nhiều quốc gia, với chất lượng sản phẩm đáng tin cậy. Tạo nên xu hướng thời trang thanh lịch sang trong với những thiết kế đơn giản, đẹp, thoải mái khi tham gia các hoạt động', 108000, 108000, 20, 'h19.jpg', 1);
insert into mathang(ten, mota, giagoc, giaban, soluong, hinhanh, madm) values(N'Áo Adidas Unisex Campus NBADFL96', N'Thương hiệu Adidas có mặt phổ biến trên nhiều quốc gia, với chất lượng sản phẩm đáng tin cậy. Tạo nên xu hướng thời trang thanh lịch sang trong với những thiết kế đơn giản, đẹp.\n- Thiết kế: trẻ trung, bắt mắt và là thiết kế độc quyền của Adidas. ', 270000, 270000, 20, 'h20.jpg', 1);
go
