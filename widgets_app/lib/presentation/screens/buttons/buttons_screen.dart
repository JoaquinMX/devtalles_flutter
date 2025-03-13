import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons_screen";
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("ElevatedButton"),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text("ElevatedButton Disabled"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text("ElevatedButton Icon"),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text("FilledButton"),
            ),
            FilledButton.icon(
              icon: const Icon(Icons.accessibility_new_rounded),
              onPressed: () {},
              label: const Text("FilledButton"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("OutlineButton"),
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.terminal),
              onPressed: () {},
              label: const Text("OutlineButton icon"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("TextButton"),
            ),
            TextButton.icon(
              icon: const Icon(Icons.zoom_in),
              onPressed: () {},
              label: const Text("TextButton icon"),
            ),
            //TODO: CUSTOM BUTTON,
            const CustomButton(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.yard),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.yard),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(colors.primary),
                  iconColor: const WidgetStatePropertyAll(Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              "Hola mundo",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
