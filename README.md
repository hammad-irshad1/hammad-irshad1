# Flutter UI Authentication App

This app includes full UI flows for login, registration, and password recovery, built with Flutter.

## 🧠 Features Covered
- Bottom overflow fix with `SingleChildScrollView` and `MediaQuery`
- Responsive design across screen sizes
- Proper keyboard handling using `resizeToAvoidBottomInset`

## 🛠️ Screens Implemented

### 🔐 Login Screen
- Email & password fields
- Forgot Password flow
- Navigation to Registration

### 📝 Register Screen
- Full name, email, password, confirm password
- Terms and conditions checkbox
- Navigation back to Login

### 🔑 Forgot Password
- Email input
- Navigates to OTP verification screen

### 📩 OTP Verification
- 4-digit OTP input
- Navigate to Set New Password
- Resend OTP option with message popup

### 🔒 Set New Password
- New password and confirm password fields
- On success, navigates back to login

### 🏠 Home / Dashboard
- AppBar with Drawer
- Welcome message
- Drawer options: Profile, Settings, Help, Logout
- Logout shows confirmation and navigates to login

## ✅ Extras
- Navigation with `MaterialPageRoute`
- Custom message popups
- Clean and consistent UI styling

---

## 📦 Built With
- Flutter
- Dart
