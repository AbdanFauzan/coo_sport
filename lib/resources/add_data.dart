// import "dart:js_interop";
// import "dart:typed_data";

// import "package:firebase_storage/firebase_storage.dart";
// import "package:flutter/material.dart";

// final FirebaseStorage _storage = FirebaseStorage.instance;
// final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// class StoreData{

//   Future<String> uploadImageToStorage(String ChildName, Uint8List file) async{

//     Reference ref = _storage.ref().child(childName);
//     UploadTask uploadTask = ref.putData(file);
//       TaskSnapshot snapshot = await uploadTask;
//       String downloadUrl = await snapshot.ref.getDownloadURL();
//       return downloadUrl;
//   }

//   Future<String> saveData({
//     required String Username,
//     required String Email,
//     required String PhoneNumber,
//     required Password,
//     required Uint8List file,
//     }) async {
//       String resp = "Some Error Occurred";
//       try {
//         uploadImageToStorage('ProfileImage', file);
//         await _firestore.collection('userProfile').add({
//           'username' : username,
//           'email' : email,
//           'imageLink' : imageUrl,
//         });
//         resp='success';

//       }
//         catch(err){
//           resp = err.toString();
//         }
//         return resp;
//     }

  

// }