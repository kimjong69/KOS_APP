import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Message{
  final String senderID;
  final String senderEmail;
  final String receiverID;
  final String message;
  final Timestamp timeStamp;

  Message(this.senderID, this.senderEmail, this.receiverID, this.message, this.timeStamp, );

  Map<String,dynamic> toMap(){
    return{
      'senderID': senderID,
      'senderEmail': senderEmail,
      'receiverID':receiverID,
      'message':message,
      'timestamp':timeStamp,
    };
  }
}