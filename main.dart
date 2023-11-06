import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Shop_Vista());
}

class Shop_Vista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
    );
  }
}

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Vista'),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('M.Zaki Saleem'),
              accountEmail: Text('zakisaleem6660@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
            ),
            // Menu Items

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Page'),
              onTap: () {
                // Handle navigation to the Home Page here
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Account'),
              onTap: () {
                // Handle navigation to the My Account page here
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Orders'),
              onTap: () {
                // Handle navigation to the My Orders page here
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories'),
              onTap: () {
                // Handle navigation to the Categories page here
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () {
                // Handle navigation to the Favorites page here
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle navigation to the Settings page here
              },
            ),
            ListTile(
              leading: Icon(
                Icons.info,
              ),
              title: Text('About'),
              onTap: () {
                // Handle navigation to the About page here
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the login screen
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
              },
              child: Text('Login'),
            ),
            CarouselSlider(
              items: [
                Image.asset("assets/1.png"),
                Image.asset("assets/1.jpg"),
                Image.asset("assets/3.jpg"),
              ],
              options: CarouselOptions(
                aspectRatio: 16 / 9, // Adjust as needed
                viewportFraction:
                    0.8, // Determines the fraction of the carousel visible on the screen
                autoPlay: true, // Set to true for automatic scrolling
                autoPlayInterval:
                    Duration(seconds: 2), // Adjust the interval as needed
                autoPlayAnimationDuration:
                    Duration(milliseconds: 800), // Adjust animation duration
                autoPlayCurve: Curves.fastOutSlowIn, // Adjust animation curve
                enableInfiniteScroll:
                    true, // Set to false to disable infinite scrolling
                enlargeCenterPage: true, // Enlarge the center item
                onPageChanged: (index, reason) {
                  // Callback when the page changes
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the signup screen
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SignupScreen(),
                ));
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> login(BuildContext context) async {
    // Add your authentication logic here, such as checking credentials.
    // You can replace this with your app's actual authentication logic.
    if (_usernameController.text == 'Zaki Saleem' &&
        _passwordController.text == '12345') {
      // Successful login, you can navigate to the home screen or user profile.
      // Replace this with your app's actual navigation logic.
      Navigator.of(context).pop(); // Close the login screen
      // Navigate to the home screen or user profile
    } else {
      // Invalid credentials, show an error message
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Login Error'),
            content: Text('Zaki Saleem or 12345'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Zaki Saleem'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: '12345'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () => login(context),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> signUp(BuildContext context) async {
    // Add your registration logic here, such as creating a new user.
    // You can replace this with your app's actual registration logic.
    // After successful signup, you can navigate to the login screen or home screen.
    // Replace this with your app's actual navigation logic.
    Navigator.of(context).pop(); // Close the signup screen
    // Navigate to the login screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Zaki Saleem'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: '12345'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () => signUp(context),
              child: Text('Sign Up'),
            ),
            CarouselSlider(
              items: [
                Image.asset("assets/4.jfif"),
                Image.asset("assets/5.jpg"),
              ],
              options: CarouselOptions(
                aspectRatio: 16 / 9, // Adjust as needed
                viewportFraction:
                    0.8, // Determines the fraction of the carousel visible on the screen
                autoPlay: true, // Set to true for automatic scrolling
                autoPlayInterval:
                    Duration(seconds: 2), // Adjust the interval as needed
                autoPlayAnimationDuration:
                    Duration(milliseconds: 800), // Adjust animation duration
                autoPlayCurve: Curves.fastOutSlowIn, // Adjust animation curve
                enableInfiniteScroll:
                    true, // Set to false to disable infinite scrolling
                enlargeCenterPage: true, // Enlarge the center item
                onPageChanged: (index, reason) {
                  // Callback when the page changes
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
