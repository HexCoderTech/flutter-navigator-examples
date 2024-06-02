# navigation_demo

This is a simple navigation demo for the [Flutter](https://flutter.dev/) framework. It demonstrates how to navigate between different screens in a Flutter app.

# Types of Navigation

There are three types of navigation in Flutter:
1. **Simple Navigation**: This is the most basic type of navigation. It involves pushing a new screen onto the navigation stack.  
This is done using the `Navigator.push()` method. 

2. **Named Navigation**: This type of navigation involves pushing a new screen onto the navigation stack using a named route.   Named routes are useful when you have a fixed set of screens in your app and you want to navigate between them using a predefined route name.
This is done using the `Navigator.pushNamed()` method.

3. **Dynamic Navigation**: This type of navigation involves pushing a new screen onto the navigation stack based on some dynamic condition. This helps to create a more flexible navigation system in your app based on user input or other conditions.  
This is done using the `Navigator.pushNamed()` method and defining `onGenerateRoute` callback in the MaterialApp.

