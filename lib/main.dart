import 'package:flutter/material.dart';
import 'package:flutter_button/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: darkColorScheme,
          filledButtonTheme: FilledButtonThemeData(
              style: ButtonStyle(
            mouseCursor: MaterialStateMouseCursor.textable,
            backgroundColor: MaterialStateProperty.all(Colors.red),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            overlayColor: MaterialStateProperty.all(Colors.red[900]),
            shadowColor: MaterialStateProperty.all(Colors.red[900]),
            elevation: MaterialStateProperty.all(2),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ))),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.icon(
              onPressed: () {},
              label: const Text('Button'),
              icon: const Icon(Icons.add),
            ),
            const Gap(10),
            TextButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const Gap(20),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const Gap(10),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const Gap(10),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            showDragHandle: true,
            isScrollControlled: true,
            useSafeArea: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (context) => ListView(
              children: [
                for (var i = 0; i < 10; i++)
                  Card(
                    elevation: 2,
                    clipBehavior: Clip.antiAlias,
                    shadowColor: Colors.transparent,
                    child: ListTile(
                      title: Text('Item $i'),
                      onTap: () {},
                    ),
                  ),
              ],
            ),
          );
        },
        label: const Text('Button'),
        icon: const Icon(Icons.add),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Gap extends SizedBox {
  const Gap(double size, {super.key}) : super(height: size);
}
