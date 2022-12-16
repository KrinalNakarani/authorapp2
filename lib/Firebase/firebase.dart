import 'package:cloud_firestore/cloud_firestore.dart';

void insertData(String Name, String Link, String Aname, String Aauthor,
    String Abook, String rating, String Pyear) {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  CollectionReference collectionReference =
      firebaseFirestore.collection("Authar");
  collectionReference
      .add({
        "Name": "$Name",
        "Link": "$Link",
        "Aname": "$Aname",
        "Aauthor": "$Aauthor",
        "Abook": "$Abook",
        "rating": "$rating",
        "Pyear": "$Pyear"
      })
      .then((value) => print("Success"))
      .catchError((errore) => print("Errore $errore"));
}

Stream<QuerySnapshot<Map<String, dynamic>>> readData() {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  return firebaseFirestore.collection("Authar").snapshots();
}
