import 'package:flutter/material.dart';

class SnackBarpage extends StatefulWidget {
  const SnackBarpage({super.key});

  @override
  State<SnackBarpage> createState() => _SnackBarpageState();
}

class _SnackBarpageState extends State<SnackBarpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bintang Putra Sadewa | SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const mySnackBar = SnackBar(
              content: Text("Berhasil membuat SnackBar"),
              duration: Duration(seconds: 3),
              padding: EdgeInsets.all(10),
              backgroundColor: Colors.amberAccent,
            );
            ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
          },
          child: Text(
            "Tampilkan SnackBar",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
