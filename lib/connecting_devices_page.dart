import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class ConnectingDevicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connecting Devices'),
      ),
      body: DeviceList(), // Display DeviceList widget
    );
  }
}

class DeviceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ScanResult>>(
      stream: FlutterBlue.instance.scanResults,
      initialData: [],
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator()); // Show loading indicator while scanning
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}')); // Show error message if any
        } else {
          final List<ScanResult> scanResults = snapshot.data!;
          return ListView.builder(
            itemCount: scanResults.length,
            itemBuilder: (context, index) {
              final device = scanResults[index].device;
              return ListTile(
                title: Text(device.name ?? 'Unknown'), // Handle null device names
                subtitle: Text(device.id.toString()),
                onTap: () {
                  // Implement logic to connect to the selected device
                },
              );
            },
          );
        }
      },
    );
  }
}
