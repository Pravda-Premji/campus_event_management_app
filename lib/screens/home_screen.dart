import 'package:flutter/material.dart';
import '../widgets/event_card.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Campus Events"),
      ),
      body: ListView(
        children: [

          EventCard(
            title: "Tech Fest 2026",
            description: "Annual technical festival of our campus.",
            imageUrl: "https://images.unsplash.com/photo-1511578314322-379afb476865",
            onRegister: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Registered Successfully")),
              );
            },
          ),

          EventCard(
            title: "Cultural Night",
            description: "Music and dance performances.",
            imageUrl: "https://images.unsplash.com/photo-1506157786151-b8491531f063",
            onRegister: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Registered Successfully")),
              );
            },
          ),

        ],
      ),
    );
  }
}

