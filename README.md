# BookSaw Application

## Overview

BookSaw Application is an ASP.NET Web Forms e-commerce platform designed for managing and selling books online. It provides functionality for administrators to manage products and categories, while offering customers a seamless shopping experience with product browsing and cart management.

## Features

### Admin Features
- **Admin Dashboard** (`Admin_Home_Page.aspx`) - Central administrative hub
- **Admin Registration** (`Admin_Register_Page.aspx`) - Admin account creation
- **Product Management** - Add and edit book products
- **Category Management** - Create and manage product categories

### Customer Features
- **User Registration** (`User_Register_Page.aspx`) - Customer account creation
- **User Dashboard** (`User_Home_Page.aspx`) - Customer home page
- **Product Browsing** - View products by category (`Products_Per_Category.aspx`)
- **Shopping Cart** (`View_Cart_Page.aspx`, `Add_To_Cart_Page.aspx`) - Add items to cart and checkout
- **Authentication** (`Login_Page.aspx`) - Secure login system

## Project Structure

```
BookSawApplication/
│
├── Pages (ASP.NET Web Forms)
│   ├── Admin_Home_Page.aspx
│   ├── Admin_Register_Page.aspx
│   ├── User_Home_Page.aspx
│   ├── User_Register_Page.aspx
│   ├── Login_Page.aspx
│   ├── Add_Category_Page.aspx
│   ├── Edit_Category_Page.aspx
│   ├── Add_Product_Page.aspx
│   ├── Edit_Products_Page.aspx
│   ├── Products_Per_Category.aspx
│   ├── Add_To_Cart_Page.aspx
│   └── View_Cart_Page.aspx
│
├── Master Pages
│   └── Master_Page.Master
│
├── Code-Behind Files (.aspx.cs)
│   └── [Corresponding C# logic for each page]
│
├── Configuration
│   ├── Web.config
│   ├── Web.Debug.config
│   └── Web.Release.config
│
├── Styles & Scripts
│   ├── style.css
│   ├── css/
│   │   ├── normalize.css
│   │   └── vendor.css
│   ├── js/
│   │   ├── jquery-1.11.0.min.js
│   │   ├── modernizr.js
│   │   ├── plugins.js
│   │   ├── script.js
│   │   ├── slideNav.js
│   │   └── slideNav.min.js
│   └── icomoon/
│       ├── icomoon.css
│       └── fonts/
│
├── Assets
│   ├── images/
│   └── Img/
│
├── Core Files
│   ├── ConCls.cs (Connection class)
│   ├── BookSawApplication.csproj
│   ├── BookSawApplication.sln
│   ├── packages.config
│   └── Properties/AssemblyInfo.cs
│
├── Build Output
│   ├── bin/ (Compiled assemblies)
│   └── obj/ (Build artifacts)
│
└── Documentation
    └── readme.txt
```

## Technology Stack

| Component | Details |
|-----------|---------|
| **Framework** | ASP.NET Web Forms (.NET Framework) |
| **Language** | C# |
| **IDE** | Visual Studio |
| **Build System** | MSBuild |
| **Compiler** | Roslyn (Microsoft.CodeDom.Providers.DotNetCompilerPlatform 2.0.1) |
| **Frontend** | HTML5, CSS3, JavaScript, jQuery 1.11.0 |
| **Data Access** | ADO.NET (Connection class in ConCls.cs) |

## Prerequisites

- Visual Studio 2015 or later
- .NET Framework 4.5 or later
- SQL Server (for database)
- NuGet Package Manager

## Installation & Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Raisal-A-Salim/Book-E-Commerce-Website.git
   ```

2. **Open the Project**
   - Navigate to the project directory
   - Open `BookSawApplication.sln` in Visual Studio

3. **Restore NuGet Packages**
   - Right-click on the solution in Solution Explorer
   - Select "Restore NuGet Packages"
   - Or use Package Manager Console: `Update-Package -Reinstall`

4. **Configure Database Connection**
   - Update the connection string in `Web.config`
   - Ensure your SQL Server instance is running

5. **Build the Solution**
   - Press `Ctrl+Shift+B` or go to Build > Build Solution

6. **Run the Application**
   - Press `F5` to start debugging
   - The application will open in your default browser

## Configuration

### Web.config
The `Web.config` file contains application settings including:
- Database connection strings
- Authentication settings
- Custom configuration parameters

Make sure to update sensitive information (connection strings, API keys) in this file.

## Key Classes

- **ConCls.cs** - Connection class for database operations
  - Manages database connectivity
  - Provides data access methods

## Build Output

- **bin/** - Contains compiled assemblies and runtime files
  - `BookSawApplication.dll` - Main application assembly
  - `BookSawApplication.dll.config` - Assembly configuration
  - Dependencies and third-party libraries

- **obj/** - Contains build artifacts
  - Debug and Release build outputs
  - Intermediate compilation files

## Development Workflow

1. **Creating New Features**
   - Add new .aspx pages to the root directory
   - Create corresponding .aspx.cs code-behind files
   - Inherit from Master_Page.Master for consistent styling

2. **Database Operations**
   - Use ConCls.cs for database connections
   - Follow existing patterns for CRUD operations

3. **Styling**
   - Use `style.css` for custom styles
   - Reference CSS files from `css/` directory

4. **Client-Side Logic**
   - Use jQuery for DOM manipulation
   - Add scripts to `js/` directory as needed

## Deployment

1. Build the application in Release mode
2. Publish from Visual Studio (Build > Publish)
3. Deploy the published files to your web server
4. Update connection strings for production environment
5. Configure IIS to serve the application

## Browser Compatibility

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Internet Explorer 9+
- Edge

