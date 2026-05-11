# Toolkit Pro

A multi-utility Flutter application featuring:
- **Tip Calculator** - Calculate tips with a 15% default calculation
- **QR Code Scanner** - Scan and read QR codes using your device camera
- **QR Code Generator** - Generate QR codes from text or URLs and share them

## Getting Started

This project is built with Flutter for iOS, Android, macOS, Linux, and Windows platforms.

### Prerequisites
- Flutter SDK (version 3.11.5 or higher)
- iOS: Xcode 14+ (for iOS builds)
- Android: Android Studio and Android SDK

### Installation

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the app on your device or emulator

## Features

- **Dark Material3 Theme** - Modern UI with deepPurple color scheme
- **Real-time QR Generation** - Live preview as you type
- **QR Sharing** - Screenshot and share generated QR codes
- **Camera Integration** - Seamless camera access for QR scanning
- **Cross-platform Support** - Runs on iOS, Android, macOS, Linux, and Windows

## Dependencies

Key packages used in this project:
- `qr_flutter` - QR code generation
- `mobile_scanner` - QR code scanning
- `share_plus` - Share functionality
- `path_provider` - File system access
- `screenshot` - Screenshot capture

## Building

### iOS
```bash
flutter build ios
```

### Android
```bash
flutter build apk
flutter build appbundle  # For Play Store
```

### macOS
```bash
flutter build macos
```

## Permissions

### iOS (Info.plist)
- Camera access for QR scanning
- Photo library access for saving QR codes

### Android (AndroidManifest.xml)
- Camera permission for QR scanning
- Read/write external storage for saving QR codes

## Resources

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
