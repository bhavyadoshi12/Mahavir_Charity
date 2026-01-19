# 🚀 Mahavir Charity Management System

[![PHP](https://img.shields.io/badge/PHP-8.2.4-blue.svg)](https://www.php.net/)
[![MySQL](https://img.shields.io/badge/MySQL-10.4.28-orange.svg)](https://www.mysql.com/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-4.x-purple.svg)](https://getbootstrap.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A comprehensive web-based charity management system built with PHP and MySQL, designed to streamline charitable operations including donor management, member administration, fundraising, and event coordination.

## 📋 Table of Contents

- [✨ Features](#-features)
- [🛠️ Technology Stack](#️-technology-stack)
- [📋 Prerequisites](#-prerequisites)
- [🚀 Installation & Setup](#-installation--setup)
- [⚙️ Configuration](#️-configuration)
- [🏃‍♂️ How to Run](#️-how-to-run)
- [📁 Project Structure](#-project-structure)
- [🔧 Customization Guide](#-customization-guide)
- [📊 Database Schema](#-database-schema)
- [🔐 User Roles & Permissions](#-user-roles--permissions)
- [🐛 Troubleshooting](#-troubleshooting)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

## ✨ Features

### 🎯 Core Functionality
- **Donor Management**: Registration, login, profile management, donation tracking
- **Member Administration**: Member types, detailed profiles, photo management
- **Staff Management**: Staff accounts, role-based access, profile updates
- **Fundraising**: Create and manage fundraising campaigns, track collections
- **Event Management**: Photo albums, event galleries, appointment scheduling
- **Food Donation**: Track food donations and donors
- **Child Adoption**: Adoption applications and management

### 🎨 User Interface
- **Responsive Design**: Mobile-friendly Bootstrap interface
- **Interactive Elements**: Owl Carousel sliders, DataTables for listings
- **Image Galleries**: Photo management with organized albums
- **Dashboard Views**: Role-specific dashboards for different user types

### 🔒 Security Features
- **Session Management**: Secure user authentication
- **Role-Based Access**: Different permissions for donors, staff, and admins
- **Input Validation**: Form validation and error handling

## 🛠️ Technology Stack

| Component | Technology | Version |
|-----------|------------|---------|
| **Backend** | PHP | 8.2.4 |
| **Database** | MySQL | 10.4.28 |
| **Frontend** | HTML5, CSS3, JavaScript | ES6+ |
| **CSS Framework** | Bootstrap | 4.x |
| **JavaScript Libraries** | jQuery, Owl Carousel, DataTables | Latest |
| **Server** | Apache (XAMPP) | 2.4.x |
| **Icons** | Font Awesome | 4.x |

## 📋 Prerequisites

Before running this project, ensure you have the following installed:

### 🖥️ System Requirements
- **Operating System**: Windows 10/11, macOS, or Linux
- **RAM**: Minimum 4GB (8GB recommended)
- **Disk Space**: 500MB free space
- **Web Browser**: Chrome, Firefox, Safari, or Edge (latest versions)

### 📦 Required Software
- **XAMPP** (Windows/Mac) or **LAMP** (Linux)
  - Apache Web Server
  - MySQL Database Server
  - PHP 8.2.4 or higher
  - phpMyAdmin (optional, for database management)

### 🔧 Development Tools (Optional)
- **VS Code** or any PHP-compatible IDE
- **Git** for version control
- **Composer** for PHP dependency management

## 🚀 Installation & Setup

### Step 1: Download and Install XAMPP
1. Visit [Apache Friends](https://www.apachefriends.org/) and download XAMPP for your OS
2. Install XAMPP in the default directory (`C:\xampp` on Windows)
3. Start XAMPP Control Panel and start **Apache** and **MySQL** services

### Step 2: Clone or Download the Project
```bash
# If using Git
git clone https://github.com/your-repo/mahavir-charity.git

# Or download ZIP and extract to:
# Windows: C:\xampp\htdocs\
# macOS/Linux: /Applications/XAMPP/htdocs/ or /opt/lampp/htdocs/
```

### Step 3: Database Setup
1. Open your browser and go to `http://localhost/phpmyadmin`
2. Create a new database named `online_charity`
3. Import the SQL file:
   - Click on `online_charity` database
   - Go to **Import** tab
   - Choose file: `online_charity.sql`
   - Click **Go**

### Step 4: Configure Database Connection
The database connection is already configured in `databaseconnection.php`:

```php
<?php
session_start();
// Create connection
$con = mysqli_connect("localhost", "root", "", "online_charity");
echo mysqli_connect_error();
?>
```

**Note**: This uses default XAMPP credentials. For production, update with secure credentials.

## ⚙️ Configuration

### Database Configuration
Edit `databaseconnection.php` to match your database settings:

```php
$con = mysqli_connect("YOUR_HOST", "YOUR_USERNAME", "YOUR_PASSWORD", "YOUR_DATABASE");
```

### Time Zone Configuration
Located in `header.php`:
```php
date_default_timezone_set("Asia/Calcutta"); // Change to your timezone
```

### Currency Symbol
Also in `header.php`:
```php
$rupeesymbol = "₹"; // Change to your currency symbol
```

## 🏃‍♂️ How to Run

### Method 1: Using XAMPP (Recommended)
1. **Start Services**:
   - Open XAMPP Control Panel
   - Start **Apache** (🟢)
   - Start **MySQL** (🟢)

2. **Access the Application**:
   - Open browser
   - Navigate to: `http://localhost/mahavir_charity/`
   - Or: `http://localhost/mahavir_charity/index.php`

### Method 2: Using Built-in PHP Server (Development Only)
```bash
cd C:\xampp\htdocs\mahavir_charity
php -S localhost:8000
```
Then visit: `http://localhost:8000`

### Method 3: Using Apache Virtual Host
Add to `C:\xampp\apache\conf\extra\httpd-vhosts.conf`:
```apache
<VirtualHost *:80>
    DocumentRoot "C:/xampp/htdocs/mahavir_charity"
    ServerName mahavir-charity.local
    <Directory "C:/xampp/htdocs/mahavir_charity">
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
```

## 📁 Project Structure

```
mahavir_charity/
├── 📄 PHP Files (Core Logic)
│   ├── index.php                 # 🏠 Homepage
│   ├── header.php                # 🔝 Header & Navigation
│   ├── footer.php                # 🔻 Footer
│   ├── databaseconnection.php    # 🗄️ Database Connection
│   ├── common.class.php          # 🛠️ Common Functions Class
│   └── [Other PHP files...]      # Various pages & functionalities
│
├── 🎨 Assets
│   ├── css/                      # 🎨 Stylesheets
│   │   ├── bootstrap.min.css
│   │   ├── style.css
│   │   └── ...
│   ├── js/                       # 📜 JavaScript Files
│   │   ├── jquery-3.3.1.js
│   │   ├── bootstrap.min.js
│   │   └── ...
│   ├── img/                      # 🖼️ Images
│   │   ├── charity/
│   │   ├── imgdonor/
│   │   └── ...
│   └── fonts/                    # 🔤 Font Files
│
├── 📊 Database
│   └── online_charity.sql        # 🗃️ Database Schema & Data
│
└── 📖 Documentation
    └── README.md                 # 📚 This file
```

## 🔧 Customization Guide

### 🎨 Changing Theme & Styling
1. **Main Styles**: Edit `css/style.css`
2. **Bootstrap Theme**: Replace `css/bootstrap.min.css` with custom theme
3. **Colors & Fonts**: Modify CSS variables in `style.css`

### 🖼️ Adding Images
- **Charity Images**: Place in `img/charity/`
- **User Photos**: Upload via admin panel (stored in respective folders)
- **Image Optimization**: Use WebP format for better performance

### 🌐 Adding New Pages
1. Create new `.php` file
2. Include `header.php` and `footer.php`
3. Add database logic as needed
4. Update navigation in `header.php`

### 👥 Adding New User Roles
1. Add new table to database
2. Create role-specific PHP files
3. Update authentication logic in `header.php`
4. Add navigation items

### 📧 Email Configuration
Currently uses basic PHP mail. For production:
1. Install PHPMailer: `composer require phpmailer/phpmailer`
2. Configure SMTP settings
3. Update mail functions

## 📊 Database Schema

### Core Tables
- **`donor`** - Donor information and authentication
- **`member`** - Charity members with types
- **`staff`** - Staff accounts and profiles
- **`album`** - Photo albums for events
- **`fundraiser`** - Fundraising campaigns
- **`fundcollection`** - Donation tracking
- **`appointment`** - Scheduled appointments

### Relationships
- Members can have multiple photos
- Donors can make multiple donations
- Staff manage various aspects
- Albums contain multiple photos

## 🔐 User Roles & Permissions

### 👤 Donor
- Register and login
- View profile and donation history
- Make donations
- Update contact information

### 👨‍💼 Staff
- All donor permissions
- Manage members and donors
- Create and manage events
- Handle fundraising campaigns
- View detailed reports

### 👑 Administrator
- All staff permissions
- System configuration
- User management
- Database maintenance

## 🐛 Troubleshooting

### Common Issues & Solutions

#### ❌ Database Connection Error
```
Solution: Check MySQL service is running in XAMPP
Verify database name in databaseconnection.php
Ensure SQL file is imported correctly
```

#### ❌ Page Not Loading
```
Solution: Check Apache service is running
Verify file permissions (755 for directories, 644 for files)
Check PHP error logs in XAMPP control panel
```

#### ❌ Images Not Displaying
```
Solution: Check image file paths
Verify folder permissions
Ensure images are in correct directories
```

#### ❌ Form Submissions Not Working
```
Solution: Check PHP error reporting
Verify database connection
Ensure form action URLs are correct
```

#### ❌ JavaScript Errors
```
Solution: Check browser console for errors
Verify jQuery and other libraries are loaded
Check for conflicting scripts
```

### Debug Mode
Enable debugging by modifying `header.php`:
```php
error_reporting(E_ALL);
ini_set('display_errors', 1);
```

### Logs Location
- **Apache Logs**: `C:\xampp\apache\logs\`
- **PHP Logs**: `C:\xampp\php\logs\`
- **MySQL Logs**: `C:\xampp\mysql\data\`

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. **Fork** the repository
2. **Create** a feature branch: `git checkout -b feature-name`
3. **Commit** changes: `git commit -m 'Add feature'`
4. **Push** to branch: `git push origin feature-name`
5. **Create** a Pull Request

### Development Guidelines
- Follow PHP PSR standards
- Use meaningful variable names
- Add comments for complex logic
- Test thoroughly before submitting

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For support and questions:
- 📧 Email: support@mahavircharity.com
- 📱 Phone: +91-XXXXXXXXXX
- 🏢 Address: [Your Charity Address]

## 🙏 Acknowledgments

- **Bootstrap Team** for the amazing CSS framework
- **jQuery Team** for the JavaScript library
- **Owl Carousel** for the image slider
- **DataTables** for table functionality
- **Font Awesome** for icons

---

**Made with ❤️ for Mahavir Charity**

*Helping communities, changing lives, one donation at a time.*#   M a h a v i r _ C h a r i t y  
 