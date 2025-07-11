# Test Suitmedia Question 1

Flutter application with GetX Pattern and clean architecture optimized for best performance.

## Main Features

- First Screen with input validation and palindrome dialog
- Second Screen with user name display and navigation
- Third Screen with API fetching from reqres.in, infinite scroll, pull-to-refresh, and skeleton loading

## Screenshots

| First Screen | Popup Check | Second Screen |
| --- | --- | --- |
| ![First Screen](/screenshoot/first_screen.png) | ![Popup Check](/screenshoot/popup_check.png) | ![Second Screen](/screenshoot/second_screen.png) |

| Second Screen Selected | Third Screen |
| --- | --- |
| ![Second Screen Selected](/screenshoot/second_screen_selected.png) | ![Third Screen](/screenshoot/third_screen.png) |

## Clean Architecture Implementation

In this project, we apply clean architecture principles by breaking UI components into separate widgets to facilitate maintenance and testing:

### Widget Structure
- Each screen has a `widgets` folder containing separate UI components
- Widgets are named using the format `w_widgetname.dart`
- UI is separated from business logic with GetX controllers

### Loading Optimization
- Using skeleton loading during data fetching for better UX
- Custom minimal 1-second loading delay for smooth skeleton animation
- Efficient infinite scroll implementation with pagination
- Pull-to-refresh for fetching latest data

### GetX Pattern
- Reactive state management with Rx variables
- Structured navigation and routing
- Simple dependency injection
- Clear separation between Model, View, and Controller
