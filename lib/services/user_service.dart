import 'package:airplane/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final CollectionReference _userRef = FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userRef.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot _snapshot = await _userRef.doc(id).get();
      return UserModel(
          id: id,
          email: _snapshot['email'],
          name: _snapshot['name'],
          hobby: _snapshot['hobby'],
          balance: _snapshot['balance']);
    } catch (e) {
      rethrow;
    }
  }
}
