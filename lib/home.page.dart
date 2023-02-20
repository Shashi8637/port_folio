import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _numberCtrl = TextEditingController();
  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "8637883946";
  }
  Widget build(BuildContext context) {
    return  ColorfulSafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(child: Text("POrT FoLio")),
          backgroundColor: Colors.black12,
          foregroundColor: Colors.yellowAccent,
        ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
    children: [
            CircleAvatar(
              backgroundImage: AssetImage("image/shashi.jpeg"),
              radius: 60,
      ),
              SizedBox(
              height: 10,
      ),
              Text("SHASHI SINGH",
               style:TextStyle(
                   fontWeight: FontWeight.bold,
                 fontSize: 30,
                 fontStyle: FontStyle.italic,
                 color: Colors.white,
        ),
      ),
             SizedBox(
          height: 5,
        ),
              Text("FLUTTER DEVELOPER",
          style:TextStyle(

            color:Colors.white70,

          ),
        ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 5,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.call),
                  title: ElevatedButton(
                      child: const Text("8637883946"),
                    onPressed: () async {
                      FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                    },
                  ),
                ),
              ),   SizedBox(
               height: 10,
              ),
                  Card(
                child: ListTile(
                  leading: Icon(Icons.mail),
                  title: ElevatedButton(
                    onPressed: (){
                       launch ('mailto:shashi863788@gmail.com'

                       );
                    },
                      child: Text("shashi863788@gmail.com"),
                  ),
                ),
      ),

    ],
            ),
          ),


      ),
    );
  }
}
