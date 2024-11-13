import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:localization_sample/controller/localization_provider.dart';
import 'generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = Provider.of<LocalizationProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Change ur language'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              icon: const Icon(
                Icons.language,
                color: Colors.white,
                size: 30,
              ),
              items: const [
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'ml', child: Text('മലയാളം')),
                DropdownMenuItem(value: 'ar', child: Text('العربية')),
                DropdownMenuItem(value: 'es', child: Text('Español')),
              ],
              onChanged: (value) {
                if (value != null) {
                  localization.setLanguage(value);
                }
              },
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.deepPurple[200]),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                S.of(context).login,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                S.of(context).welcome,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
