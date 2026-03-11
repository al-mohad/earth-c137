# Rick and Morty Explorer

A simple, responsive, and robust Flutter application that fetches and displays characters from the [Rick and Morty API](https://rickandmortyapi.com/). 
The project leverages industry-standard tools and practices such as **Riverpod**, **Dio**, **Retrofit**, and **Freezed**.

## Technology Stack

- **Frontend**: Flutter (Material 3)
- **State Management**: [Riverpod](https://pub.dev/packages/flutter_riverpod) combined with code generation (`riverpod_generator`)
- **Network Client**: [Dio](https://pub.dev/packages/dio) & [Retrofit](https://pub.dev/packages/retrofit)
- **Data Models**: [Freezed](https://pub.dev/packages/freezed) & `json_serializable`

## Features

- **Data Listing**: Gracefully fetches and displays a list of characters.
- **Search Functionality**: A debounce-enabled search bar allows users to filter the list based on character names.
- **Detail View**: Tapping on a character displays their full profile, including status, species, gender, type, and origin location.
- **Clean UI & Theming**: Employs modern Material 3 design, natively supporting both light and dark mode visually.
- **Error Handling**: Clear error and loading states, featuring retry mechanisms when network requests or data parsing fails.

## Setup Instructions

1. Ensure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed on your machine.
2. Clone this repository to your local machine:
   ```bash
   git clone <repository_url>
   cd <repository_folder>
   ```
3. Get the project dependencies:
   ```bash
   flutter pub get
   ```
4. Run the code generation framework to build all the Riverpod, Freezed, and Retrofit files:
   ```bash
   dart run build_runner build -d
   ```
5. Run the application on an emulator or a physical device:
   ```bash
   flutter run
   ```

## Generating the APK

To assemble a release build APK for Android, run the following command in the project's root directory:

```bash
flutter build apk --release
```

Once the process finishes, the compiled APK will be located inside the `build/app/outputs/flutter-apk/app-release.apk` directory.

## Project Architecture

We follow a feature-based architecture pattern for clear separation of concerns (SOLID principles):

- `lib/core/`: Application-wide configurations, such as the base network provider (Dio instance setup).
- `lib/features/characters/data/`: Houses the Freezed models, Retrofit API definition, and the `CharacterRepository` layer.
- `lib/features/characters/presentation/`: Contains UI components, cleanly segmented into screens, widgets, and Riverpod state controllers.
# earth-c137
