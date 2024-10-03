# Three Planets

**Three Planets** is a cross-platform application developed in Flutter with support for iOS, Android, Web, and Windows. The app allows users to explore detailed information about various planets, view key scientific data, and mark their favorite planets.

## Features

- Detailed information about each planet (name, orbital distance, mass, density, and more).
- Filtering planets by various criteria.
- Marking planets as favorites with data persistence.
- Full support for iOS, Android, Web, and Windows.
- Smooth navigation between screens using GoRouter.
- State management with Riverpod.

## Installation

### Requirements

- Flutter 3.0 or higher
- Xcode (for iOS)
- Android Studio (for Android)
- Compatible browser (for Web)
- Visual Studio (for Windows)

### Clone the repository

```bash
git clone https://github.com/your-username/three_planets.git
cd three_planets
```

### Install dependencies

```bash
flutter pub get
```

### Run on device or emulator

Ensure you have a device or emulator set up and run:

```bash
flutter run
```

### Architecture

**Three Planets** follows clean architecture principles to ensure modular, maintainable code. The app uses Riverpod for state management and SharedPreferences for local data persistence, such as storing favorite planets.

## License

[MIT License](https://opensource.org/license/mit)
