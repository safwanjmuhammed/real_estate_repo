# iroid_application

A new Flutter project designed to showcase real estate listings with a modern UI and state management using Riverpod.

## Overview
This application leverages Flutter to create a responsive real estate listing interface. It uses Riverpod for state management, `freezed` for immutable data models, and `json_serializable` for JSON data handling. The app fetches and displays property data with features like horizontal scrolling cards and dynamic UI updates.

## Getting Started

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version compatible with SDK ^3.29.2) NB: Versions after this have issues so sticking with this.
- An IDE (e.g., VS Code, Android Studio) with Flutter support
- A connected emulator or physical device

### Installation

1. **Install Dependencies**
   Run the following command to fetch the project dependencies listed in `pubspec.yaml`:
   ```bash
   flutter pub get
   ```

2. **Run Build Runner**
   - This project uses `freezed` and `json_serializable`, which require generating files. Run the build runner to generate these files:
     ```bash
     flutter pub run build_runner build --delete-conflicting-outputs
     ```
 

3. **Run the Application**
   - Ensure an emulator or device is connected.
   - Start the app:
     ```bash
     flutter run
     ```

## Project Structure
- `lib/main.dart`: Entry point of the application.
- `src/feature/home_screen/`: Contains the home screen feature.
  - `data/model/`: Data models (e.g., `property_model.dart`).
  - `domain/use_cases.dart`: Business logic for fetching data.
  - `presentation/`: UI and provider logic.
    - `provider/`: State management (e.g., `home_notifier.dart`, `home_state.dart`).
    - `utils/`: Utility functions (e.g., `property_utils.dart`).
    - `widgets/`: Reusable widgets (e.g., `property_card.dart`).
    - `screen/`: Screen implementations (e.g., `home_screen.dart`).

## Dependencies
- `flutter_riverpod`: ^2.6.1 - State management.
- `freezed_annotation`: ^2.4.4 - Immutable data models.
- `json_annotation`: ^4.9.0 - JSON serialization.
- `dio`: ^5.7.0 - HTTP requests (for future API integration).
- `google_fonts`: ^6.2.1 - Custom fonts.
- `go_router`: ^14.6.2 - Navigation.



