import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kos_app/model/message.dart';

class ChatService extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  Future<void> sendMessage(String receiverID, String message) async {
    final String currentUserID = _firebaseAuth.currentUser!.uid;
    final String currentUserEmail = _firebaseAuth.currentUser!.email.toString();
    final Timestamp timeStamp = Timestamp.now();

    Message newMessage = Message(
        currentUserID, currentUserEmail, receiverID, message, timeStamp);

    List<String> ids = [currentUserID, receiverID];
    ids.sort();
    String chatRoomID = ids.join('_');

    //add new messages
    await _fireStore
        .collection('chat_rooms')
        .doc(chatRoomID)
        .collection('messages')
        .add(newMessage.toMap());



  }
  //get messages
  Stream<QuerySnapshot> getMessages(String userID,String otherUserID){
    List<String> ids =[userID,otherUserID];
    ids.sort();
    String chatRoomID=ids.join('_');

    return _fireStore.collection('chat_rooms').doc(chatRoomID).collection('messages').orderBy('timestamp',descending: false).snapshots();
  }
}
