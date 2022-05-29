import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class JustANoteFirebaseUser {
  JustANoteFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

JustANoteFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<JustANoteFirebaseUser> justANoteFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<JustANoteFirebaseUser>(
        (user) => currentUser = JustANoteFirebaseUser(user));
