Got you, Bhavya! 🔥  
You want a **complete, premium‑quality README.md** that includes **your hosted website URL** (`https://mahavir-charity.free.nf/`), with **perfect styling, clean formatting, professional tone**, and everything arranged *top‑tier GitHub style*.

Here is your **final polished README**, fully ready for GitHub — including **live demo link**, badges, features, installation, project structure, screenshots section (you can add images later), and more.

***

# 🚀 **Mahavir Charity Management System**

A powerful and modern **Charity Management Platform** designed to streamline donation handling, fundraising, event management, food donation, child adoption workflows, and complete staff/donor administration — built using **PHP**, **MySQL**, and **Bootstrap**.

***

<div align="center">

### 🌐 **Live Demo**

🔗 **<https://mahavir-charity.free.nf/>**

![PHP](https://img.shields.io/badge/PHP-8.2.4-777BB4?style=for-the-badge\&logo=php)
![MySQL](https://img.shields.io/badge/MySQL-10.4.28-005C84?style=for-the-badge\&logo=mysql)
![Bootstrap](https://img.shields.io/badge/Bootstrap-4.x-7952B3?style=for-the-badge\&logo=bootstrap)
!Status
![License](https://img.shields.io/badge/LICENSE-MIT-green?style=for-the-badge)

</div>

***

## 📚 **Table of Contents**

*   [✨ Features](#-features)
*   [🌐 Live Demo](#-live-demo)
*   [🛠 Technology Stack](#-technology-stack)
*   [📋 Prerequisites](#-prerequisites)
*   [🚀 Installation](#-installation)
*   [⚙️ Configuration](#️-configuration)
*   [🏃‍♂️ Running the Project](#️-running-the-project)
*   [📁 Project Structure](#-project-structure)
*   [📸 Screenshots](#-screenshots)
*   [🔧 Customization Guide](#-customization-guide)
*   [📊 Database Schema](#-database-schema)
*   [🔐 User Roles](#-user-roles)
*   🐛 Troubleshooting
*   🤝 Contributing
*   📄 License
*   📞 Support

***

## ✨ **Features**

### 🎯 Core Modules

*   ✔ Donor registration, login & history tracking
*   ✔ Member management (types, profiles, photos)
*   ✔ Staff panel with role management
*   ✔ Fundraising campaigns & fund collections
*   ✔ Event photo albums & gallery system
*   ✔ Food donation management
*   ✔ Child adoption request system
*   ✔ Appointments & scheduling system

### 🎨 UI Features

*   Responsive Bootstrap UI
*   Carousels & galleries
*   DataTables for listing
*   Different dashboards for admin/staff/donor

### 🔐 Security

*   Role-based access (Admin/Staff/Donor)
*   Session authentication
*   Safe form handling

***

## 🌐 **Live Demo**

🔗 Visit the deployed website:

### 👉 <https://mahavir-charity.free.nf/>

Hosted using **InfinityFree** (Free Hosting + MySQL + PHP 8 Support).

***

## 🛠 **Technology Stack**

| Layer     | Tech            | Version      |
| --------- | --------------- | ------------ |
| Backend   | PHP             | 8.2.4        |
| Database  | MySQL           | 10.4.28      |
| Frontend  | HTML5, CSS3, JS | ES6          |
| Framework | Bootstrap       | 4.x          |
| Server    | Apache          | XAMPP        |
| Hosting   | InfinityFree    | Free Hosting |

***

## 📋 **Prerequisites**

*   XAMPP / LAMP / WAMP
*   Apache + MySQL running
*   PHP 8.2+
*   phpMyAdmin

***

## 🚀 **Installation Steps**

### 1️⃣ Clone Project

```bash
git clone https://github.com/your-repo/mahavir-charity.git
```

### 2️⃣ Move to Server Root

*   Windows: `C:/xampp/htdocs/`
*   macOS/Linux: `/opt/lampp/htdocs/`

### 3️⃣ Import SQL Database

1.  Open phpMyAdmin
2.  Create DB → `online_charity`
3.  Import → `online_charity.sql`

### 4️⃣ Configure DB Connection

`databaseconnection.php`

```php
$con = mysqli_connect("localhost", "root", "", "online_charity");
```

***

## ⚙️ **Configuration**

### Timezone

```php
date_default_timezone_set("Asia/Calcutta");
```

### Currency Format

```php
$rupeesymbol = "₹";
```

***

## 🏃‍♂️ Running the Project

### ✔ XAMPP (Recommended)

Start Apache + MySQL  
Visit:

    http://localhost/mahavir_charity/

### ✔ PHP Development Server

```bash
php -S localhost:8000
```

***

## 📁 **Project Structure**

    mahavir_charity/
    ├── index.php
    ├── header.php
    ├── footer.php
    ├── databaseconnection.php
    ├── common.class.php
    │
    ├── css/
    ├── js/
    ├── img/
    ├── fonts/
    │
    └── online_charity.sql

***

## 📸 **Screenshots**

> Add your screenshots here for better presentation  
> Example:

    /screenshots/homepage.png
    /screenshots/admin-dashboard.png
    /screenshots/donor-panel.png

***

## 🔧 **Customization Guide**

### Editing UI Theme

    /css/style.css
    /css/bootstrap.min.css

### Adding New Modules

*   Create new `.php` file
*   Add DB logic
*   Include header/footer
*   Add link in navigation

### Editing Gallery Images

    /img/charity/
    /img/events/
    /img/donor/

***

## 📊 **Database Schema Overview**

**Main Tables:**

*   donor
*   staff
*   member
*   fundraiser
*   fundcollection
*   album
*   appointment
*   adoption
*   fooddonation

Supports many-to-one and one-to-many relationships.

***

## 🔐 **User Roles & Permissions**

### 👤 Donor

*   View profile
*   Donate
*   View donation history

### 👨‍💼 Staff

*   Manage donors/members
*   Manage campaigns
*   Upload gallery images

### 👑 Admin

*   Full CRUD on all modules
*   Add staff
*   Configure system

***

## 🐛 **Troubleshooting Guide**

### ❌ Database Connection Error

✔ MySQL running?  
✔ DB imported?  
✔ Correct credentials?

### ❌ Images Missing

✔ Correct folder path?  
✔ Uploaded to hosting?

### ❌ “500 Server Error” on Hosting

✔ PHP version supported  
✔ No incorrect `.htaccess` rules

### Enable Developer Debug Mode

```php
error_reporting(E_ALL);
ini_set('display_errors', 1);
```

***

## 🤝 **Contributing**

1.  Fork this repo
2.  Create branch:

```bash
git checkout -b feature-name
```

3.  Commit & push
4.  Create Pull Request

***

## 📄 **License**

This project is licensed under the **MIT License**.

***

## 📞 **Support**

If you face any issues, feel free to reach out:

📧 <support@mahavircharity.com>  
🌐 Website → <https://mahavir-charity.free.nf/>

***

<div align="center">

### ❤️ *Made with love for Mahavir Charity*

### ✨ Helping people. Changing lives.

</div>

***
