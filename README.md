# 🚀 Mahavir Charity Management System

<p align="center">
  <img src="Banner.png" alt="Mahavir Charity Management System Banner" />
</p>

<p align="center">
  <b>A Modern Charity Management Platform built with PHP, MySQL & Bootstrap</b>
</p>

<p align="center">
  <a href="https://mahavir-charity.free.nf/" target="_blank"><b>🌐 Live Demo</b></a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/PHP-8.2.4-777BB4?style=for-the-badge&logo=php" />
  <img src="https://img.shields.io/badge/MySQL-10.4.28-005C84?style=for-the-badge&logo=mysql" />
  <img src="https://img.shields.io/badge/Bootstrap-4.x-7952B3?style=for-the-badge&logo=bootstrap" />
  <img src="https://img.shields.io/badge/Status-Production%20Ready-success?style=for-the-badge" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" />
</p>

---

## 🎮 Overview

**Mahavir Charity Management System** is a complete web-based solution designed to manage charity operations efficiently — including donations, fundraising campaigns, food donation workflows, child adoption processes, event galleries, appointments, and staff/donor administration.

Built using **PHP**, **MySQL**, and **Bootstrap**, the system is optimized for real-world deployment and role-based access control.

---

## ✨ Features

### 🎯 Core Modules
- ✔ Donor registration, login & donation history  
- ✔ Member & orphan management  
- ✔ Staff management with role-based access  
- ✔ Fundraising campaigns & fund collection tracking  
- ✔ Food donation management  
- ✔ Child adoption request handling  
- ✔ Appointment scheduling system  
- ✔ Event gallery & photo albums  

### 🎨 UI & UX
- Responsive Bootstrap design  
- Interactive carousels & galleries  
- DataTables for listings  
- Separate dashboards for Admin, Staff & Donor  

### 🔐 Security
- Role-based authentication (Admin / Staff / Donor)  
- Secure session handling  
- Safe form validation  

---

## 📸 Screenshots & Output Preview

### 🏠 Public Pages
<p align="center">
  <img src="Output_Images/01.HomePage01.png" width="200" />
  <img src="Output_Images/02.AboutPage.png" width="200" />
  <img src="Output_Images/03.FundRaiser.png" width="200" />
  <img src="Output_Images/04.CharityMembers.png" width="200" />
  <img src="Output_Images/05.Gallery.png" width="200" />
</p>

### 🔐 Donor & Staff Authentication
<p align="center">
  <img src="Output_Images/07.DonorRegi.png" width="200" />
  <img src="Output_Images/08.DonorLogin.png" width="200" />
  <img src="Output_Images/10.StaffLogin.png" width="200" />
</p>

### 👨‍💼 Admin & Staff Dashboard
<p align="center">
  <img src="Output_Images/11.AdminDashboard.png" width="200" />
  <img src="Output_Images/12.FundRaiser.png" width="200" />
  <img src="Output_Images/13.FundRaiserReport.png" width="200" />
  <img src="Output_Images/14.FundCollection.png" width="200" />
</p>

### 📷 Gallery & Albums
<p align="center">
  <img src="Output_Images/15.UploadPhoto.png" width="200" />
  <img src="Output_Images/16.ViewPhoto.png" width="200" />
  <img src="Output_Images/17.CreateAlbum.png" width="200" />
  <img src="Output_Images/18.ViewAlbum.png" width="200" />
</p>

### 👶 Orphan, Donation & Staff Management
<p align="center">
  <img src="Output_Images/19.AddMemberOrphan.png" width="200" />
  <img src="Output_Images/20.ViewMemberOrphan.png" width="200" />
  <img src="Output_Images/25.ViewFoodDonor.png" width="200" />
  <img src="Output_Images/26.ChildAdoptionDetail.png" width="200" />
  <img src="Output_Images/29.AddStaff.png" width="200" />
  <img src="Output_Images/30.ViewStaff.png" width="200" />
</p>

---

## 🛠 Technology Stack

| Layer | Technology |
|------|-----------|
| Backend | PHP 8.2.4 |
| Database | MySQL 10.4.28 |
| Frontend | HTML5, CSS3, JavaScript |
| UI Framework | Bootstrap 4.x |
| Server | Apache (XAMPP) |
| Hosting | InfinityFree |

---

## 🚀 Installation & Setup

### ✅ Prerequisites
- XAMPP / WAMP / LAMP  
- PHP 8.2+  
- MySQL  
- phpMyAdmin  

### 📥 Clone Repository
```bash
git clone https://github.com/your-repo/mahavir-charity.git
````

### 🗄 Database Setup

1. Open **phpMyAdmin**
2. Create database: `online_charity`
3. Import: `online_charity.sql`

### ⚙️ Database Configuration

```php
$con = mysqli_connect("localhost", "root", "", "online_charity");
```

---

## ▶️ Run the Project

* Start **Apache & MySQL**
* Visit:

```
http://localhost/mahavir_charity/
```

---

## 📁 Project Structure

```
mahavir_charity/
│── index.php
│── header.php
│── footer.php
│── databaseconnection.php
│── css/
│── js/
│── img/
│── online_charity.sql
│── README.md
```

---

## 🔐 User Roles

### 👤 Donor

* Register & login
* Donate & track history

### 👨‍💼 Staff

* Manage members & donors
* Upload gallery photos

### 👑 Admin

* Full system control
* Staff & module management

---

## 📝 Notes

* 🔒 Never commit database credentials publicly
* 📱 Fully responsive design
* 🎯 Ideal for academic & portfolio use

---

## 🤝 Contributing

Fork → Improve → Pull Request
Contributions are welcome!

---

## 📄 License

Licensed under the **MIT License**

---


<p align="center">
  ❤️ <b>Made with love for Mahavir Charity</b><br/>
  ✨ Helping people. Changing lives.
</p>
