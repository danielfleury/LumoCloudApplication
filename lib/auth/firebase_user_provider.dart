import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LumoimagingFirebaseUser {
  LumoimagingFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

LumoimagingFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LumoimagingFirebaseUser> lumoimagingFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<LumoimagingFirebaseUser>(
      (user) {
        currentUser = LumoimagingFirebaseUser(user);
        return currentUser!;
      },
    );
