# 🛍️ Flutter Shopping App (Dummy)

This is a simple Flutter demo project that simulates a shopping application.  
It focuses only on the **UI/UX flow**.  
Users can explore screens like **Welcome, Sign Up / Sign In, and Shopping Home** with dummy products.

---

## 📌 Project Overview
The goal of this project is to practice **Flutter UI design, navigation, and form validation**.  
It provides a clean structure to demonstrate how users move from authentication screens to a simple shopping page.

---

## 🚀 Features

### 1. Aesthetic Welcome Screen
- Custom AppBar with title.
- Two images displayed in a row (local + online).
- Custom fonts (Suwannaphum-Regular) with bold colors and sizes.
- Centered layout with proper spacing.
- **Buttons:** Sign Up & Sign In (navigate to forms).

### 2. Authentication Screens
#### 🔹 Sign Up
- Form includes:
  - Full Name (First letter uppercase).
  - Email (must include `@`).
  - Password (≥ 6 characters).
  - Confirm Password (matches password).
- Valid submission shows dialog:  
  `"Account created successfully"`, then navigates to shopping screen.

#### 🔹 Sign In
- Form includes:
  - Email (must include `@`).
  - Password (≥ 6 characters).
- Valid submission shows dialog:  
  `"Account sign-in successfully"`, then navigates to shopping screen.

### 3. Shopping Home Screen
- **AppBar** titled: *Our Products*.
- **PageView**: Horizontal slider for featured products.
- **GridView**: Product cards (2 per row) with:
  - Product image.
  - Product title.
  - "Add to Cart" button → SnackBar confirmation.
- **Hot Offers Section**:
  - Scrollable list of 5 dummy offers.
  - Each includes title + description + offer.

---
## 📸 Screenshots

### Welcome Screen
<img width="200" height="400" alt="image" src="https://github.com/user-attachments/assets/f9ba3622-2b7e-4abf-b828-d6307c4a8543" />

### Sign up Screen
<img width="200" height="400" alt="image" src="https://github.com/user-attachments/assets/ed8f08ea-8a39-419e-a637-bf318a6a8648" />

### Sign in Screen
<img width="200" height="400" alt="image" src="https://github.com/user-attachments/assets/8d6115c3-79cc-455a-8507-0bd35b0d1eb0" />

### Success Dialog
<img width="200" height="400" alt="image" src="https://github.com/user-attachments/assets/ea0d2e59-dca6-496e-9d91-de7900fb22c9" />

### Shopping Screen
<img width="200" height="400" alt="image" src="https://github.com/user-attachments/assets/03c668dd-a7c2-4185-9348-c084085d05b6" />
<img width="200" height="400" alt="image" src="https://github.com/user-attachments/assets/6e87d114-1ad2-45a0-a378-d1a8d56f9a88" />




📌 Notes

This is a dummy project with no backend or database connection.

All products, offers, and validations are static/dummy data.

Intended for learning Flutter UI & Navigation only.

This project is for Sprint x Microsoft Summer Camp.
