import 'package:flutter/material.dart';
import 'package:slack_github_app/webview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slack & GitHub'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Victor Odoh',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/slack_profile.jpg'),
              radius: 50,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                        url: 'https://github.com/victor-onoja'),
                  ),
                );
              },
              child: const Text('Open GitHub'),
            ),
          ],
        ),
      ),
    );
  }
}
