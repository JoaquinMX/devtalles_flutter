import 'package:flutter/material.dart';

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colors.secondary,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Hola Mundo",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),

        // Todo: Imagen
        _ImageBubble(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/no/4-122be48db47678331dbef3dd6ac6ff56.gif",
        width: size.width * .7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * .7,
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text("Enviando una imagen..."),
          );
        },
      ),
    );
  }
}
