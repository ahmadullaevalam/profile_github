import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'profile.com',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home:const ProfilePage());
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage ({ super.key});

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
            const Text(
              'Aalam Ahmadullaev',
              style: TextStyle(
                fontSize: 40,color: Colors.white, fontFamily: 'Sofia'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Flutter developer',
            style: TextStyle(
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
              child: const Row(
                children:[
                  SizedBox(width: 15),
                  Icon(Icons.phone,size: 30, color:Color (0xff00695C)),
                  SizedBox(width: 30),
                  Text(
                    '+996 557 00 56 66',
                  style:
                   TextStyle(fontSize: 22,color: Color(0xff00695C)),
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
              color: Colors.white,
              child: const Row(
                children:[
                  SizedBox(width: 15),
                  Icon(Icons.email,size: 30, color:Color (0xff00695C)),
                  SizedBox(width: 30),
                  Text(
                    'alamahmadullaev@gmail.com',
                  style:
                   TextStyle(fontSize: 16,color: Color(0xff00695C)),
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
