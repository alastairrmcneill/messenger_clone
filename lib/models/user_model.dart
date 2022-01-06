class User {
  final int id;
  final String firstName;
  final String lastName;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
    required this.isOnline,
  });
}

// Current User
final User currentUser = User(
  id: 0,
  firstName: 'Alastair',
  lastName: 'McNeill',
  imageUrl: 'assets/images/alastair.jpeg',
  isOnline: true,
);

// Other Users
final User aislingBarton = User(id: 1, firstName: 'Aisling', lastName: 'Barton', imageUrl: 'assets/images/aisling.jpeg', isOnline: true);
final User cameronAgnew = User(id: 2, firstName: 'Cameron', lastName: 'Agnew', imageUrl: 'assets/images/agnew.jpeg', isOnline: false);
final User cameronMackie = User(id: 3, firstName: 'Cameron', lastName: 'Mackie', imageUrl: 'assets/images/mackie.jpeg', isOnline: true);
final User christineIrvine = User(id: 4, firstName: 'Christine', lastName: 'Irvine', imageUrl: 'assets/images/christine.jpeg', isOnline: true);
final User gemmaHenry = User(id: 5, firstName: 'Gemma', lastName: 'Henry', imageUrl: 'assets/images/gemma.jpeg', isOnline: false);
final User jackHughes = User(id: 6, firstName: 'Jack', lastName: 'Hughes', imageUrl: 'assets/images/jack.jpeg', isOnline: true);
final User jakeBurgess = User(id: 7, firstName: 'Jake', lastName: 'Burgess', imageUrl: 'assets/images/jake.jpeg', isOnline: false);
final User jonnyShaw = User(id: 8, firstName: 'Jonny', lastName: 'Shaw', imageUrl: 'assets/images/jonny.jpeg', isOnline: true);
final User kateWensley = User(id: 9, firstName: 'Kate', lastName: 'Wensley', imageUrl: 'assets/images/Kate.jpeg', isOnline: true);
final User laurenBurgess = User(id: 10, firstName: 'Lauren', lastName: 'Burgess', imageUrl: 'assets/images/lauren.jpeg', isOnline: false);
final User leanneRule = User(id: 11, firstName: 'Leanne', lastName: 'Rule', imageUrl: 'assets/images/leanne.jpeg', isOnline: true);
