import 'package:cloud_firestore/cloud_firestore.dart';

class EventService {

  Future<void> createEvent(String title, String description) async {
    if (title.isEmpty || description.isEmpty) {
      print("Fields cannot be empty");
      return;
    }

    await FirebaseFirestore.instance.collection("events").add({
      "title": title,
      "description": description,
      "createdAt": Timestamp.now(),
    });

    print("Event stored in Firestore");
  }

  Future<void> registerEvent(String eventId, String userId) async {
    if (eventId.isEmpty || userId.isEmpty) {
      print("Invalid registration");
      return;
    }

    await FirebaseFirestore.instance.collection("registrations").add({
      "eventId": eventId,
      "userId": userId,
      "registeredAt": Timestamp.now(),
    });

    print("Registration stored in Firestore");
  }
}

