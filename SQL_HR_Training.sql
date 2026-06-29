-- 1. Tạo Database HR_Training_DW
CREATE DATABASE HR_Training_DW;
GO

USE HR_Training_DW;
GO

-- 2. Tạo bảng chiều Nhân viên (Dim_Employee)
CREATE TABLE Dim_Employee (
    EmployeeID INT PRIMARY KEY,          -- Mã nhân viên
    EmployeeName NVARCHAR(100),          -- Tên nhân viên
    Department NVARCHAR(255),            -- Phòng ban
    Gender NVARCHAR(50)                  -- Giới tính
);

-- 3. Tạo bảng chiều Khóa học (Dim_Course)
CREATE TABLE Dim_Course (
    CourseID INT PRIMARY KEY,            -- Mã khóa học
    CourseName NVARCHAR(255),            -- Tên khóa học
    Topic NVARCHAR(100),                 -- Chủ đề khóa học
    CostPerEmployee DECIMAL(18,2)        -- Đơn giá đào tạo
);

-- 4. Tạo bảng chiều Thời gian (Dim_Date)
CREATE TABLE Dim_Date (
    DateKey INT PRIMARY KEY,             -- Định dạng YYYYMMDD
    FullDate DATE,
    Day INT,
    Month INT,
    Quarter INT,
    Year INT
);

-- 5. Tạo bảng FactTraining (Fact_Training)
CREATE TABLE Fact_Training (
    RegistrationID INT PRIMARY KEY,      -- Mã đăng ký
    EmployeeID INT NOT NULL,             -- Khóa ngoại Dim_Employee
    CourseID INT NOT NULL,               -- Khóa ngoại Dim_Course
    DateKey INT NOT NULL,                -- Khóa ngoại Dim_Date
    AttendedHours INT,                   -- Số giờ tham gia
    TotalCost DECIMAL(18,2),             -- Chi phí đào tạo

    CONSTRAINT FK_FactTraining_DimEmployee FOREIGN KEY (EmployeeID) REFERENCES Dim_Employee(EmployeeID),
    CONSTRAINT FK_FactTraining_DimCourse FOREIGN KEY (CourseID) REFERENCES Dim_Course(CourseID),
    CONSTRAINT FK_FactTraining_DimDate FOREIGN KEY (DateKey) REFERENCES Dim_Date(DateKey)
);
GO

-- 6. Sinh dữ liệu Dim_Date từ năm 2020 đến 2030
DECLARE @StartDate DATE = '2020-01-01';
DECLARE @EndDate DATE = '2030-12-31';

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO Dim_Date (DateKey, FullDate, Day, Month, Quarter, Year)
    VALUES (
        CONVERT(INT, CONVERT(VARCHAR(8), @StartDate, 112)), 
        @StartDate,
        DAY(@StartDate),
        MONTH(@StartDate),
        DATEPART(QUARTER, @StartDate),
        YEAR(@StartDate)
    );

    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;
GO