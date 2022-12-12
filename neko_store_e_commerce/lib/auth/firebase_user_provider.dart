import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NekoStoreECommerceFirebaseUser {
  NekoStoreECommerceFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

NekoStoreECommerceFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NekoStoreECommerceFirebaseUser> nekoStoreECommerceFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NekoStoreECommerceFirebaseUser>(
      (user) {
        currentUser = NekoStoreECommerceFirebaseUser(user);
        return currentUser!;
      },
    );
