import 'package:flutter/material.dart';

class ListChat extends StatefulWidget {
  const ListChat({super.key});

  @override
  State<ListChat> createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  List<Map<String, dynamic>> chat = [
    {
      "nama": "tiyaa",
      "foto": "flower.jpg",
      "chat": "Hallo, assalamualaikum.",
      "tanggal": "07 juli"
    },
    {
      "nama": "andinii",
      "foto": "pantai.jpg",
      "chat": "Hallo, nama kamu siapa?.",
      "tanggal": "07 juli"
    },
    {
      "nama": "aprosah",
      "foto": "WIN.jpg",
      "chat": "Hallo, kamu lagi dimana?.",
      "tanggal": "07 juli"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: chat.map((e) {
        return ListTile(
          leading: Image.asset("assets/image-profil/" + e["foto"]),
          title: Text(e["nama"]),
          subtitle: Text(e["chat"]),
        );
      }).toList(),
    );
  }
}
