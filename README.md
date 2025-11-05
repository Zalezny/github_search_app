# GitHub Search App

Flutter application for searching GitHub repositories and users with detailed information display.

## 🚀 Running the Application

### Option 1: Run in Development Mode

1. **Install dependencies:**
   ```bash
   flutter pub get
   ```

2. **Generate code (if needed):**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

3. **Run the application:**
   ```bash
   flutter run
   ```

   Or select a specific device:
   ```bash
   flutter devices
   flutter run -d <device-id>
   ```

### Option 2: Build and Install APK on Android Device

Just use `app-release.apk` in repository

## 📁 Project Structure

The project follows **Clean Architecture** principles with a **layer-first** approach:

```
lib/
├── core/                           # Core utilities and helpers
│   └── utils/                      # Date formatting, number formatting
│
├── data/                           # Data Layer
│   ├── datasources/               # API data sources (Retrofit)
│   ├── models/                      # Data Transfer Objects (Freezed)
│   └── repositories/              # Repository implementations
│
├── domain/                         # Domain Layer (Business Logic)
│   ├── entities/                  # Domain models (Freezed)
│   ├── repositories/              # Repository interfaces
│   └── usecases/                  # Use cases (business operations)
│
├── presentation/                   # Presentation Layer (UI)
│   ├── app/                       # Main app and navigation cubit
│   │   └── cubit/                 # HomeCubit (app state management)
│   ├── search/                    # Search page
│   │   └── widgets/               # Search page components
│   │   └── cubit/                 # Cubit page
│   ├── results/                   # Results list page
│   │   └── widgets/               # Results page components
│   └── detail/                    # Detail page
│       ├── cubit/                 # DetailCubit (detail state)
│       └── widgets/               # Detail page components
│
├── settings/                       # App configuration
│   ├── injection.dart             # Dependency injection setup
│   ├── app_module.dart            # App Module
│   ├── routes/                    # Navigation configuration
│   └── theme/                     # Theme and styling
│
└── main.dart                       # Application entry point
```

### Layer Responsibilities

#### **Data Layer**
- Handles external data sources (GitHub API)
- Implements repository interfaces from domain layer
- Converts DTOs to domain entities
- Uses Retrofit for API calls and Freezed for immutable DTOs

#### **Domain Layer**
- Contains business logic and entities
- Defines repository interfaces
- Implements use cases (single responsibility operations)

#### **Presentation Layer**
- UI components and screens
- Cubits for state management (BLoC pattern)
- Widgets organized by feature

## State Management & Architecture

### Clean Architecture

The app follows **Clean Architecture** with clear separation of concerns:

1. **Domain Layer** - Pure business logic, no dependencies on external frameworks
2. **Data Layer** - API communication, data mapping
3. **Presentation Layer** - UI and user interactions

### BLoC Pattern (Cubit)

State management using **flutter_bloc**:

#### Key Features:
- Immutable state using Freezed
- Reactive UI updates
- Separation of business logic from UI

### Dependency Injection

**Injectable + GetIt** for dependency management:

**Configuration:**
- `lib/settings/injection.dart` - DI setup
- Automatic code generation with `injectable_generator`

**Benefits:**
- Easy testing with mock dependencies
- Loose coupling between layers
- Centralized dependency management

### Layer-First Organization

**Advantages:**
- Clear architectural boundaries
- Easy to understand data flow
- Prevents cross-layer dependencies

## 📦 Key Technologies

- **Flutter** - UI framework
- **flutter_bloc** - State management (Cubit)
- **Freezed** - Immutable models and unions
- **Injectable + GetIt** - Dependency injection
- **Retrofit + Dio** - REST API client
- **url_launcher** - Open external URLs
- **Dartz** - Functional programming (Either for error handling)

### Running Tests

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/data/repositories/github_repo_repository_impl_test.dart
```

## 🔧 Code Generation

The project uses code generation for:
- **Freezed** - Immutable models, unions, copyWith
- **Injectable** - Dependency injection setup
- **Retrofit** - API client generation
- **JSON Serializable** - JSON serialization

## Future Improvements

While the current implementation is fully functional, here are potential enhancements that could be implemented:

### 1. **Localization with EasyLocalization**

**Current state:** All strings are hardcoded in the UI  
**Improvement:** Implement `easy_localization` package for multi-language support

**Benefits:**
- Centralized string management in JSON files
- Support for multiple languages (English, Polish, etc.)

### 2. **AutoRoute for Type-Safe Navigation**

**Current state:** Manual navigation management with `HomeCubit` and page switching  
**Improvement:** Implement `auto_route` for declarative, type-safe routing

**Benefits:**
- Type-safe navigation with generated routes
- Deep linking support out of the box
