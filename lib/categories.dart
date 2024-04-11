// categories.dart

import 'package:flutter/material.dart';
// import '_devices_page.dart'; // Import the AvailableDevicesPage
import 'contact_details_page.dart';
// import 'available_devices_page.dart';
import 'connecting_devices_page.dart';


class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/welcome_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the contact details page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactDetailsPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    textStyle: TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text('Contact'),
                ),
              ),
              SizedBox(height: 16),
              Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the available devices page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ConnectingDevicesPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    textStyle: TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text('Connect Devices'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
