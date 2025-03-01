import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_app/myicons.dart';

class SettingsPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotificationEnabled = false;
  bool isCloudEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(Myicons.arrow2),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            /// 🔹 **Notification Switch**
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notification",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Switch(
                  value: isNotificationEnabled,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      isNotificationEnabled = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),

            /// 🔹 **Enable Cloud Checkbox**
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Enable Cloud",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Checkbox(
                  value: isCloudEnabled,
                  activeColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onChanged: (value) {
                    setState(() {
                      isCloudEnabled = value!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
