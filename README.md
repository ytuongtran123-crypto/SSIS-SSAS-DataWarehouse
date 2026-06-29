# SSIS-SSAS-DataWarehouse

## Overview
This project demonstrates a simple Data Warehouse design for HR training, built with SQL scripts and SSIS packages.  
It follows a **star schema** structure, integrating dimension tables (Employee, Course, Date) with a fact table (Training).

## Features
- **[ETL Process](ca://s?q=ETL_process_with_SSIS)**: Extract data from multiple sources, transform and clean, then load into the warehouse.  
- **[Dimension Tables](ca://s?q=Dimension_tables_in_data_warehouse)**: Employee, Course, and Date for structured analysis.  
- **[Fact Table](ca://s?q=Fact_table_in_data_warehouse)**: Tracks training participation, attended hours, and costs.  
- **[Business Intelligence](ca://s?q=Business_Intelligence_with_SSIS)**: Enables reporting and analysis with tools like SSAS or Power BI.

## Practical Application
This exercise simulates how organizations consolidate scattered data into a centralized repository.  
Managers can generate reports such as:
- Monthly revenue and training costs  
- Employee participation in courses  
- Inventory of training hours per department  

## How to Use
1. Run the SQL scripts to create the database schema (`HR_Training_DW`).  
2. Use SSIS packages to automate data loading and transformation.  
3. Connect the warehouse to BI tools for reporting and dashboards.

---

👉 In short, this project illustrates how SSIS and SSAS can be applied to **transform raw data into actionable insights** for business decision-making.
--

# SSIS-SSAS-DataWarehouse

## Tổng quan
Dự án này minh họa thiết kế một **Kho dữ liệu (Data Warehouse)** đơn giản cho hệ thống đào tạo nhân sự, được xây dựng bằng SQL script và gói SSIS.  
Mô hình sử dụng cấu trúc **Star Schema**, kết hợp các bảng chiều (Nhân viên, Khóa học, Thời gian) với bảng sự kiện (Training).

## Tính năng
- **[Quy trình ETL](ca://s?q=Quy_tr%C3%ACnh_ETL_v%E1%BB%9Bi_SSIS)**: Trích xuất dữ liệu từ nhiều nguồn, làm sạch và chuẩn hóa, sau đó nạp vào kho dữ liệu.  
- **[Bảng chiều](ca://s?q=B%E1%BA%A3ng_chi%E1%BB%81_trong_Data_Warehouse)**: Nhân viên, Khóa học, và Thời gian để phục vụ phân tích.  
- **[Bảng sự kiện](ca://s?q=B%E1%BA%A3ng_s%E1%BB%B1_ki%E1%BB%87n_trong_Data_Warehouse)**: Lưu thông tin tham gia đào tạo, số giờ học và chi phí.  
- **[Phân tích BI](ca://s?q=Ph%C3%A2n_t%C3%ADch_BI_v%E1%BB%9Bi_SSIS)**: Kết nối với SSAS hoặc Power BI để tạo báo cáo và dashboard.

## Ứng dụng thực tế
Bài tập này mô phỏng cách doanh nghiệp gom dữ liệu rời rạc thành một kho dữ liệu tập trung.  
Nhờ đó, nhà quản lý có thể tạo báo cáo như:
- Doanh thu và chi phí đào tạo theo tháng  
- Tỷ lệ nhân viên tham gia khóa học  
- Tổng số giờ đào tạo theo phòng ban  

## Cách sử dụng
1. Chạy các script SQL để tạo cơ sở dữ liệu `HR_Training_DW`.  
2. Sử dụng gói SSIS để tự động hóa việc nạp và biến đổi dữ liệu.  
3. Kết nối kho dữ liệu với công cụ BI để phân tích và trực quan hóa.

---

👉 Tóm lại, dự án này minh họa cách SSIS và SSAS giúp doanh nghiệp **biến dữ liệu thô thành thông tin hữu ích cho quản trị và ra quyết định**.
