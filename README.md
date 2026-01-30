# Tharad - Flutter Training App

Flutter application for Tharad Tech Training Program with authentication, profile management, caching, and multi-language support.

## 📱 Features

- ✅ Login & Registration with OTP verification
- ✅ Profile management with image upload (Camera/Gallery, max 5MB)
- ✅ Offline support with Hive caching
- ✅ Multi-language (Arabic/English)
- ✅ Persistent login

## 📸 Screenshots

| | | |
|---|---|---|
| ![](https://github.com/user-attachments/assets/2b2febfd-3542-41c8-8225-098d3d18412f) | ![](https://github.com/user-attachments/assets/a7bb8d53-6f3e-4247-9f8a-33cc1fc17e20) | ![](https://github.com/user-attachments/assets/8976be2a-f7bf-43fb-ab6f-d9a3a6beb566) |
| ![](https://github.com/user-attachments/assets/d063b070-0f83-4633-9bb7-d0ca54f2bd16) | ![](https://github.com/user-attachments/assets/a9f4b742-7e1c-44d8-ace1-6cb3a93dcab4) | ![](https://github.com/user-attachments/assets/b4a92eba-a024-4724-b576-2b69f7b91876) |
| ![](https://github.com/user-attachments/assets/c3992a80-6df9-4a4b-beb5-cff6b42e2e4c) |  |  |

## 🛠️ Tech Stack

| Category | Technology |
|----------|------------|
| State Management | flutter_bloc / Cubit |
| API Client | Dio |
| Caching | Hive, Flutter Secure Storage |
| Navigation | go_router |
| DI | get_it |

## 🚀 Getting Started

```bash
# Clone
git clone https://github.com/mosayyyed/tharad.git

# Install
flutter pub get

# Generate code
dart run build_runner build --delete-conflicting-outputs

# Run
flutter run
```

## 🔗 API

**Base URL:** `https://flutter.tharadtech.com/api/`

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/register` | POST | Registration |
| `/login` | POST | Login |
| `/verify-otp` | POST | OTP verification |
| `/profile-details` | GET | Get profile |
| `/update-profile` | POST | Update profile |

## 🎨 Design

- [Figma Design](https://www.figma.com/design/PKJg9JtHqKmkZpovJprzEz/Flutter-Task)
- [Postman Collection](https://drive.google.com/file/d/1B33oRnYC0wy5y87OSfcgtjyJ-ByBSg8Z/view)

## 📄 License

Training project for Tharad Tech.
