import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {

  final String title;
  final String description;
  final String imageUrl;
  final VoidCallback onRegister;

  const EventCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.onRegister,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            child: Image.network(
              imageUrl,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(description),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: onRegister,
                  child: Text("Register"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
