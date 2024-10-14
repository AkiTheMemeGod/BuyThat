
# BuyThat

**BuyThat** is a Flutter-based e-commerce application designed to provide a smooth shopping experience. Users can browse items, add them to the cart, and proceed to checkout. This README provides details about the app’s core functionality, features, and how the app is structured.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Code Structure](#code-structure)
- [Core Functionality](#core-functionality)
  - [Homepage](#homepage)
  - [Shop Page](#shop-page)
  - [Cart Page](#cart-page)
  - [Main.dart](#maindart)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Cross-platform**: Runs on Android, iOS, Windows, macOS, Linux, and Web.
- **Dynamic Navigation**: Bottom navigation bar for seamless page transitions.
- **Search functionality**: Users can search for products.
- **Hot Picks Section**: Highlights trending items.
- **Shopping Cart**: Add and manage items in a cart with a confirmation dialog for successful additions.

## Installation

### Prerequisites

- Install [Flutter](https://flutter.dev/get-started/).

### Installation Steps

1. Clone the repository:

    ```bash
    git clone https://github.com/AkiTheMemeGod/BuyThat.git
    ```

2. Navigate to the project directory:

    ```bash
    cd BuyThat
    ```

3. Run the app:

    ```bash
    flutter run
    ```

## Code Structure

- **lib/**: Contains the core functionality, UI components, and models.
  - **pages/**: Contains page views like Homepage, Cartpage, and Shoppage.
  - **components/**: Reusable components like the navigation bar and shoe tile.
  - **models/**: Data models for shoes and the cart system.
  - **main.dart**: The app entry point.

## Core Functionality

### Homepage

Located in `homepage.dart`, the homepage manages the bottom navigation bar and allows switching between the Shop page and Cart page. It also includes a custom navigation drawer with options like "Home" and "About".

- **Bottom Navigation**: A dynamic navigation bar implemented through the `MyBottomNavBar` widget, enabling users to toggle between different app pages (`Shoppage`, `Cartpage`).
- **Navigation Drawer**: Offers quick access to "Home", "About", and "Logout" actions.

### Shop Page

The shop page (`shoppage.dart`) displays the product listing (shoes) and allows users to add items to their cart.

- **Product List**: Displays a list of trending products, called "Hot Picks", using the `Shoetile` component.
- **Add to Cart**: Users can add items to their cart, with a confirmation dialog appearing after successful addition.
- **Provider Integration**: Uses the Provider package to manage state. The `Cart` model tracks added items.

### Cart Page

The cart page (`cartpage.dart`) shows a list of products that users have added to their cart.

- **Dynamic Cart**: The cart list dynamically updates based on the items users have added, and uses the `Cartitem` component to display each item.
- **State Management**: The `Cart` model holds the cart's state and updates the UI accordingly.

### Main.dart

The `main.dart` file initializes the app and sets up the `Provider` for state management.

- **Cart Provider**: A `ChangeNotifierProvider` wraps the app to provide access to the `Cart` model across different pages.
- **App Entry**: The app begins by loading the `Intropage()` as the home screen, giving an introductory view of the app.

## Contributing

Feel free to contribute to the project by creating issues or submitting pull requests. Follow these steps:

1. Fork the repository.
2. Create a new feature branch.
3. Commit your changes.
4. Push the branch and submit a PR.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
