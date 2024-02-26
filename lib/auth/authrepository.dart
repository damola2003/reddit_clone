import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reddit_clone/auth/firebase.provider.dart';
import 'package:reddit_clone/auth/firebase_constance.dart';
import 'package:reddit_clone/models/user_model.dart';

final AuthRepositoryProvider = Provider(
  (ref) => AuthRepository(
    firestore: ref.read(firstoreProvider),
    auth: ref.read(authProvider),
    googleSignIn: ref.read(googleSignInProvider),
  ),
);

class AuthRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  AuthRepository({
    required FirebaseFirestore firestore,
    required FirebaseAuth auth,
    required GoogleSignIn googleSignIn,
  })  : _auth = auth,
        _firestore = firestore,
        _googleSignIn = googleSignIn;

  CollectionReference get _users =>
      _firestore.collection(FirebaseConstance.usersCollection);

  void signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final googelAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googelAuth?.accessToken,
        idToken: googelAuth?.idToken,
      );
      print(credential.accessToken);
      print(credential.idToken);
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      UserModel userModel = UserModel(
        name: userCredential.user!.displayName ?? "Untitle",
        profilepic: userCredential.user!.photoURL ?? "",
        banner: userCredential.user!.displayName ?? "",
        uid: userCredential.user!.uid,
        isAuthenticated: true,
        karma: 0,
        awards: [],
      );

      await _users.doc(userCredential.user!.uid).set(userModel.toMap());
      //(userModel.uid)
    } catch (e) {
      print(e);
    }
  }
}
