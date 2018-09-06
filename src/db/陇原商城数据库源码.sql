--����¤ԭ�̳����ݿ�
create database ShopLine
on
(
name='ShopLine_data',
filename='E:\����ڶ�ѧ��\�������ʵѵ\Date\ShopLine_data.mdf',
size=3mb,
filegrowth=1mb,
maxsize=30mb
)
log on
(
name='ShopLine_log',
filename='E:\����ڶ�ѧ��\�������ʵѵ\Date\ShopLine_log.ldf',
size=3mb,
filegrowth=1mb,
maxsize=30mb
)


use ShopLine
go
--�����û��� (UserAccount)
create table UserAccount
(
id  int identity(1,1) primary key,
userID int not null ,
loginPassWord varchar(32) not null,
nickName varchar(50) not null,
userType int not null,
insurePassWord varchar(32) not null,
faceID int ,
sex varchar(10),
age varchar(50),
country varchar(20),
provicnce varchar(20),
phone varchar(50),
mobile varchar(50),
email varchar(20),
qq varchar(30),
note varchar(100),
userOrder int 
)
go

--��������Ա��(Admin)
create table Admin
(
adminID int identity(1,1) primary key,
adminName varchar(50) not null,
adminPwd varchar(32) not null,
adminType smallint not null,
adminGroupID int ,
lastLoginIP varchar(32),
lastLoginTime datetime,
isEnabled smallint
)
go

--�û����ܻ����ַ��(AcceptAddr)
create table AcceptAddr
(
id int identity(1,1) primary key,
userID int,
realityName  varchar(50),
rowAddr varchar(200),
provinceID int,
province varchar(50),
cityID int,
city  varchar(50),
countryID int,
country varchar(50),
tel varchar(50),
handSet varchar(50),
zipCode varchar(20),
qqNum  varchar(30),
postTime datetime 
)
go

--������ʾ�� (Bulletin)
create table Bulletin
(
id int identity(1,1) primary key,
bulletinTitle varchar(50),
bulletinContent varchar(2000),
isPost smallint, 
orderNum int,
postTime datetime
)
go

--���ɱ�(Cart)
create table Cart
(
id int identity(1,1) primary key,
userID int,
CartID varchar(50),
productID int not null,
buyNum int not null,
buyTime datetime
)
go

--��Ʒ�����(Category)
create table Category
(
productCategoryID int identity(1,1) primary key,
productCategoryName varchar(20),
parentID int,
categoryDepth int,
)
go

--��Ʒ��(Product)
create table Product
(
productID int identity(1,1) primary key,
proNumber varchar(50),
productName nvarchar(50) not null,
keyWord nvarchar(100),
productCategoryID int,
categoryName nvarchar(50),
parentIDRoute nvarchar(250),
parentNameRounte nvarchar(250),
productImage nvarchar(100) not null,
productsmallImage nvarchar(100) not null,
currentPrice smallmoney not null,
price smallmoney,
menberPrice smallmoney not null,
danwei nvarchar(10),
productStore int,
productDesc ntext,
remainDay int,
clickNum int,
isReviewEnable int,
isPost smallint,
isCommend smallint,
addTime datetime,
linkQQid varchar(30),
linkQQName nvarchar(30),
freightType char(1),
freight smallmoney,
AdminID int
)
go

--���������(HelpClass)
create table HelpClass
(
id int identity(1,1) primary key,
className varchar(50),
parentID int,
depth int,
rootid int,
orders int,
childCount int,
parentIDRount nvarchar(250),
parentNameRount nvarchar(250),
createTime datetime,
state int,
)
go

--������ϸ��(OrderDetail)
create table OrderDetail
(
id bigint identity(1,1) primary key,
orderID nvarchar(50),
productID int,
proNumber varchar(20),
memberPrice money,
bugNum int,
discount float,
freignType char(1),
freign smallmoney
)
go

--������¼��(OrderLog)
create table OrderLog
(
id int identity(1,1) primary key,
orderID nvarchar(50),
operateUserID int,
userType smallint,
operateType smallint,
clientIP varchar(50),
operateDepict nvarchar(50),
operateTime datetime
)
go

--�������(OrderList)
create table OrderList
(
orderID varchar(50) primary key,
userID int not null,
acceptName nvarchar(50),
acceptAddr varchar(200),
handset varchar(50),
tel varchar(50),
zipCode varchar(20),
orderTime datetime not null,
shippedTime datetime,
orderState smallint,
isNew smallint,
adminID int
)
go

--��Ʒ�ۺϱ�
create table ProductClass
(
id int identity(1,1) primary key,
className varchar(50),
parentID int,
depth int,
rootID int,
orders int,
childCount int,
parentIDRoute nvarchar(250),
parentNameRoute nvarchar(250),
createTime datetime,
state int,
productNum int
)
go

--��Ʒ�ռ���
create table ProductCollection
(
id int identity(1,1) primary key,
userID int not null,
productID int not null,
postTime datetime
)
go

--��ƷͼƬ��(ProductPhoto)
create table ProductPhoto
(
id int identity(1,1) primary key,
productID int,
productImages varchar(50),
productContent varchar(50),
addTime datetime
)
go

--��վ������
create table ShopHelp
(
helpID int identity(1,1) primary key,
helpTitle Nvarchar(50),
classID int,
className nvarchar(30),
parentIDRoute nvarchar(250),
parentNameRoute nvarchar(250),
helpContent ntext,
postTime datetime,
isPost smallint
)
go

--�û�������(userScore)
create table UserScore
(
userID int identity(1,1) primary key,
bugScore int
)
go









