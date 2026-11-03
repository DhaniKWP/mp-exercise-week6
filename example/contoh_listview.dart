import 'package:flutter/material.dart';

void main(){
  runApp(listView());
}

class listView extends StatelessWidget {
  const listView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.amberAccent),
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh list view")),
        body: const Column(
          children: [
            InfoRow(
                icon: Icons.mail,
                label: "Email",
                value: "dhanikusuma256@gmail.com"
            ),
            SizedBox(height: 10),
            InfoRow(
                icon: Icons.tiktok,
                label: "Tiktok",
                value: "@dhanikwp"
            ),
            SizedBox(height: 10),
            InfoRow(
                icon: Icons.telegram,
                label: "Telegram",
                value: "Dhani Kusuma"
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.catatan,
  });

  final IconData icon;
  final String label;
  final String value;
  final String? catatan;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}