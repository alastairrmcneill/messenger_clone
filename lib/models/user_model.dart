class User {
  final int id;
  final String name;
  final String imageUrl;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

// Current User
final User currentUser = User(
  id: 0,
  name: 'Alastair',
  imageUrl: 'assets/images/alastair.jpeg',
);
