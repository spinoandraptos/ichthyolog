import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 236, 249, 255),
      child: const Center(
        child: SizedBox(
          height: 35.0,
          width: 35.0,
          child: CircularProgressIndicator(
              backgroundColor: Color.fromARGB(255, 91, 170, 255),
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(255, 184, 218, 255)),
              strokeWidth: 8),
        ),
      ),
    );
  }
}

class NoticeDialog extends StatelessWidget {
  final String content;
  const NoticeDialog({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Notice',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      content: Text(content),
      actions: [
        TextButton(
            child: const Text(
              "OK",
              style: TextStyle(color: Color.fromARGB(255, 52, 66, 117)),
            ),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );
  }
}

Widget loadingComment() {
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: const Center(
      child: SizedBox(
        height: 10.0,
        width: 10.0,
        child: CircularProgressIndicator(
            backgroundColor: Color.fromARGB(255, 187, 187, 187),
            valueColor: AlwaysStoppedAnimation<Color>(
                Color.fromARGB(255, 236, 236, 236)),
            strokeWidth: 3),
      ),
    ),
  );
}
