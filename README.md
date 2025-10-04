# 📱 Flutter BLoC Clean Architecture

A **scalable Flutter project** built using **Clean Architecture** and **BLoC State Management**.  
This project demonstrates best practices for structuring Flutter apps for maintainability, scalability, and testability.  

---

## 🚀 Features
- **Clean Architecture** for separation of concerns (Data, Domain, Presentation layers).  
- **BLoC State Management** for predictable state handling.  
- **Dependency Injection** with `get_it`.  
- **Network requests** with `http`.  
- **Immutable data models** with `freezed` and `json_serializable`.  
- **Local secure storage** using `flutter_secure_storage`.  
- **Beautiful UI** with `google_fonts` and responsive layouts.  
- **User feedback** via `fluttertoast` and `another_flushbar`.  
- **Optimized images** with caching using `cached_network_image`.  

---

## 📂 Project Structure
lib/
│── bloc/ # BLoC state management
│── config/ # App configurations (theme, routes, constants)
│── data/ # Data layer (API, repositories, DTOs)
│── repository/ # Business logic, use cases, entities
│── services/ #session manager,spalshm storage
│── models/ # Freezed models
│── utils/ # Helpers, enums, extensions
│── view/ #page
│── main.dart # App entry point


---

## 📦 Dependencies
This project uses the following packages:

```yaml
dependencies:
  http: ^1.5.0
  json_annotation: ^4.9.0
  fluttertoast: ^8.2.14
  cached_network_image: ^3.4.1
  another_flushbar: ^1.12.32
  equatable: ^2.0.7
  flutter_secure_storage: ^9.2.4
  google_fonts: ^6.3.1
  freezed_annotation: ^3.1.0
  bloc: ^9.0.0
  flutter_bloc: ^9.1.1
  get_it: ^8.2.0

dev_dependencies:
  freezed: ^3.2.3
  build_runner:
  json_serializable:

##⚙️ Getting Started
##1️⃣ Clone the repository
 git clone https://github.com/your-username/flutter_bloc_cleaning_coding.git 
 cd flutter_bloc_cleaning_coding 

##2️⃣ Install dependencies
  flutter pub get

##3️⃣ Generate code (models, freezed, json serialization)
 flutter pub run build_runner build --delete-conflicting-outputs
