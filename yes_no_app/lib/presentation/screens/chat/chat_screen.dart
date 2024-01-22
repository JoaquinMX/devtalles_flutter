import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/other_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://media.licdn.com/dms/image/D4E35AQHqeQxoFohWcw/profile-framedphoto-shrink_200_200/0/1687466564704?e=1706497200&v=beta&t=e_kMahg4mx2s548qp7dat6EqmYgvfuF6MuhREn2Aosg"),
          ),
        ),
        title: const Text("Joaquin Beltran"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return (index % 2 == 0)
                      ? const OtherMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),
            //Caja de Texto
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
