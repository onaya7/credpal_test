# CredPal Mobile App Developer - Technical Assessment

## Overview

This is a Flutter-based technical assessment for the Mobile App Developer position at CredPal. The project involves implementing a UI design from Figma using Flutter, with the code required to run on web, iOS, or Android devices.

## Assessment Objectives

- Evaluate practical UI implementation skills
- Demonstrate attention to detail in design replication
- Showcase ability to work with Figma designs
- Display proper Flutter development practices and Git workflow

## Instructions

### UI Implementation

You are required to implement the UI design provided in the Figma link below. Pay close attention to the smallest details in the design to ensure accurate replication.

**Note:** Feel free to make reasonable assumptions in areas where interaction or scroll behavior may not be clearly represented in the design.

### Figma Design Reference

The design can be found at: [CredPal UI Design](https://www.figma.com/file/KZKDiLKAnm04rPAKMx350o/Untitled?node-id=0%3A1&t=XHNQBxPrmi0NBVSu-1)

## Deliverables

The completed assessment should include:

1. **GitHub Repository** - Your implementation should be committed progressively to demonstrate your development process
2. **Build Artifacts** - A zip file containing:
   - Web release folder (for web build), OR
   - APK file (for Android build), OR
   - iOS build artifacts
3. **Screenshots** - Screenshots of the finished product
4. **Documentation** - This README with setup instructions and any assumptions made during implementation

## Getting Started

### Prerequisites

- Flutter SDK (version: check `flutter --version`)
- Dart SDK (included with Flutter)
- An IDE (Android Studio, VS Code, or Xcode)
- Git for version control

### Installation & Setup

1. Clone this repository:

   ```bash
   git clone <your-repository-url>
   cd credpal
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the application:

   ```bash
   # For Android
   flutter run -d android

   # For iOS
   flutter run -d ios

   # For Web
   flutter run -d chrome
   ```

### Building Release Artifacts

**Web Release:**

```bash
flutter build web --release
# Output will be in: build/web/
```

**Android APK:**

```bash
flutter build apk --release
# Output: build/app/outputs/flutter-app.apk
```

**iOS Build:**

```bash
flutter build ios --release
# Output will be in: build/ios/
```

## Implementation Notes & Assumptions

_Document any assumptions made during implementation here. Examples:_

- State management approach used
- Navigation structure
- Custom widgets created
- API integration methods (if applicable)
- Responsive design breakpoints
- Any deviations from the Figma design and the reasoning

## Project Structure

```
credpal/
├── lib/
│   ├── main.dart           # Application entry point
│   ├── app/                # App-level configuration
│   ├── core/               # Core utilities and constants
│   └── feature/            # Feature modules
│       └── home/           # Home feature implementation
├── assets/
│   ├── images/             # Image assets
│   ├── icons/              # Icon assets
│   └── fonts/              # Custom fonts
├── pubspec.yaml            # Project dependencies
└── README.md               # This file
```

## Development Guidelines

- Follow [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Use meaningful commit messages
- Keep commits focused and progressive
- Test on both mobile (iOS/Android) and web platforms


