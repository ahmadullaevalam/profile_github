import 'package:counterapp/pages/profile_page.dart';
import 'package:flutter/material.dart';

class SingUppPage extends StatefulWidget {
  const SingUppPage({ super.key });

  @override
  // ignore: library_private_types_in_public_api
  _SingUppPageState createState() => _SingUppPageState();
}

class _SingUppPageState extends State<SingUppPage> {

  TextEditingController? name  = TextEditingController() ;
  TextEditingController? work  = TextEditingController() ;
  TextEditingController? number = TextEditingController() ;
  TextEditingController? gmail = TextEditingController() ;

  final snackBar = SnackBar(
    content: Text('Siz hammasini toldiring'),
    action: SnackBarAction(
      label: 'Close',
      onPressed: () {

      },
    ), 
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create you Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller:name,
               decoration: const InputDecoration(
                label: Text('name'),
                border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: 20),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller:work,
               decoration: const InputDecoration(
                label: Text('work'),
                border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: 20),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller:number,
               decoration: const InputDecoration(
                label: Text('number'),
                border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: 20),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller:gmail,
               decoration: const InputDecoration(
                label: Text('gmail'),
                border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: 20),
              
            const SizedBox(height: 30),
            SizedBox(
          width: 150,
          height: 55,
          child: ElevatedButton(
            onPressed: (){                       
           if(name!.text.isNotEmpty &&
              work!.text.isNotEmpty &&
              number!.text.isNotEmpty &&
              gmail!.text.isNotEmpty){
              Navigator.push( 
                context,
                MaterialPageRoute(
                  builder: (context)=>ProfilePage(
                    nameProfile:name!.text,
                    workProfile:work!.text,
                    numberProfile:number!.text,
                    gmailProfile:gmail!.text,
                  ),
                ),
              );
            }else{ 
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
             child: const Text(
              'next',
              style: TextStyle(fontSize: 25,color: Colors.white),
              )))
        ],),
      ),
    );
  }
}
