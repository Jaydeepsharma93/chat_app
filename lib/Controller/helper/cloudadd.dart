import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/modelclass.dart';

class UserSarvice {
  static UserSarvice userSarvice = UserSarvice._();

  UserSarvice._();

  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addUser(DetailsModal details)
  async {
    CollectionReference user = firebaseFirestore.collection('user');
    await user.doc(details.email).set(details.objectToMap(details));
  }


  Stream<QuerySnapshot<Object?>> getUser()
  {
    Stream<QuerySnapshot> collectionStream = FirebaseFirestore.instance.collection('users').snapshots();
    return collectionStream;
  }

  DocumentReference<Object?> cureentUser(DetailsModal details)
  {
    CollectionReference user= firebaseFirestore.collection('user');
    return user.doc(details.email);
  }
}