// import 'dart:html';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage ({
   super.key,
   required this.nameProfile,
   required this.workProfile,
   required this.numberProfile,
   required this.gmailProfile,
   });

  String? nameProfile;
  String? workProfile;
  String? numberProfile;
  String? gmailProfile;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: const Color(0xff00695C),
      appBar: AppBar(
        backgroundColor: const Color(0xff00695C),
        title: const Text(
          'ТАПШЫРМА - 04',
        style: TextStyle(color: Colors.white),
        ),
        centerTitle:true ,
      ),
      body: Center (
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius:60,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('assets/images/photo.person.jpg'),
            ),
            const SizedBox(height: 25),
             Text(
             nameProfile.toString(),
              style: const TextStyle(
                fontSize: 40,color: Colors.white, fontFamily: 'Sofia'),
            ),
            const SizedBox(height: 10),
             Text(
              workProfile.toString(),
            style: const TextStyle(
                color: Colors.white,fontSize: 22,fontFamily: 'Sofia'),
            ),
            const Divider(
              thickness: 2,
              indent:120,
              endIndent: 120,
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:Container(
              width: double.infinity,
              height: 55,
              color: Colors.white,
              child:  Row(
                children:[
                  const SizedBox(width: 15),
                  const Icon(Icons.phone,size: 30, color:Color (0xff00695C)),
                  const SizedBox(width: 30),
                  Text(
                    numberProfile.toString(),
                  style:const TextStyle(fontSize: 22,color: Color(0xff00695C)),
                  )
                 ],
               ),
              )
             ),
               const SizedBox(height: 25),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child : Container(
              width: double.infinity,
              height: 55,
              color:  Color.fromRGBO(255, 255, 255, 1),
              child:  Row(
                children:[
                  const SizedBox(width: 15),
                  const Icon(Icons.email,size: 30, color:Color (0xff00695C)),
                  const SizedBox(width: 30),
                  Text(
                    gmailProfile.toString(),
                  style:
                   const TextStyle(fontSize: 16,color: Color(0xff00695C)),
                  )
                 ],
               ),
             )
             )
          ],
        ),
      ),
    );
  }
 }
