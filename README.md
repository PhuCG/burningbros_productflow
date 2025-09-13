# Product Flow - Flutter Infinite Scrolling Product List

A Flutter application that implements an infinite scrolling list of products with search functionality and favorite feature.

## Features

- **Infinite Scrolling**: Load 20 products at a time as the user scrolls to the bottom of the list
- **Product Display**: Show product name, price, image, and other relevant information
- **Search Functionality**: Search products by name with debounced API calls
- **Favorites**: Save favorite products to local database using Isar
- **Error Handling**: Proper UI feedback for network issues, loading states, and empty results

## Technical Implementation

### API Integration
- Using [DummyJSON Products API](https://dummyjson.com/docs/products)
- Endpoints:
  - List products: `https://dummyjson.com/products?limit=20&skip=0`
  - Search products: `https://dummyjson.com/products/search?q=keyword`

### Architecture & Libraries
- **State Management**: Riverpod
- **API Client**: Dio
- **Local Storage**: Isar
- **Data Serialization**: Freezed or json_serializable
- **Notifications**: FlutterToast
- **Infinite Scrolling**: Easy Refresh
- **Image Loading**: Cached Network Image

### Project Structure
- `lib/`
  - `main.dart`: Entry point
  - `models/`: Data models
  - `providers/`: Riverpod providers
  - `repositories/`: Data sources and repositories
  - `services/`: API client, local storage
  - `ui/`: UI components
    - `screens/`: Full screens
    - `widgets/`: Reusable components
  - `utils/`: Helper functions and constants

## Getting Started

### Prerequisites
- Flutter SDK (version 3.7.2 or later)
- Dart SDK (version 3.0.0 or later)
- VS Code

### Installation
1. Clone the repository
   ```
   git clone https://github.com/PhuCG/burningbros_productflow.git
   ```
2. Install dependencies
   ```
   flutter pub get
   ```
3. Run the app
   ```
   flutter run
   ```

## Development Roadmap
1. Setup project structure and dependencies
2. Create data models and API client
3. Implement product list with pagination
4. Add search functionality with debouncing
5. Implement favorites feature with local storage
6. Handle error states and edge cases
7. UI polish and performance optimization