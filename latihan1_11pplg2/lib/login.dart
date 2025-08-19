import 'package:flutter/material.dart';
import 'register.dart';


class loginpage extends StatefulWidget {
  const loginpage({super.key});
  

  @override
  State<loginpage> createState() => _loginpageState();
}



class _loginpageState extends State<loginpage> {
  
  String statuslogin = "loginstatus";
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(title: Text('login page'),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Center(
            child:Image.asset ('assets/images/manchaster.png',height: 150,),
            ),

            Text('welcome to our application',
            style: TextStyle(
              fontSize: 20,
              color:Colors.blue,
              fontWeight: FontWeight.bold,
            ),),
            Text('please fill username and password',),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: txtusername,
                decoration:  InputDecoration(
                  labelText: 'username',
                  border: OutlineInputBorder()
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: txtpassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder()
                ),
              ),
            ),
            
            Container
            (width: double.infinity,
            margin : EdgeInsets.all(10),
              child: OutlinedButton(onPressed: (){
                if (txtusername.text == "admin" && txtpassword.text == "admin"){
                  setState(() {
                    statuslogin = "sukses login";
                  });
                }
                else{
                  setState(() {
                    statuslogin = "login gagal";
                  });  
                }
                print("status"+statuslogin);
              }, child: Text('Login'))
              ),
              Text(statuslogin),
              TextButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Register ()),
    );
  },
  child: const Text("daftar disini jika belum punya akun"),
  
),

          ],
          
        ),
      ),
    );
  }
}