class EventService {

  // Create Event
  Future<void> createEvent(String title, String description) async {
    if (title.isEmpty || description.isEmpty) {
      print("Fields cannot be empty");
      return;
    }

    print("Event Created: $title");
  }

  // Register Event
  Future<void> registerEvent(String eventId, String userId) async {
    if (eventId.isEmpty || userId.isEmpty) {
      print("Invalid registration");
      return;
    }

    print("User $userId registered for $eventId");
  }

}
