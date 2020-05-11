import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,


      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20.0,top: 100.0,right: 20.0,bottom: 2.0),
        child :Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'POEM',
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(height: 20.0, ),
            Text(
              "Patien Out-of-pocket",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            Text(
              "Express Management",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            SizedBox(height: 40.0, ),
            buildTextField("Username*"),
            SizedBox(height: 20.0, ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Forget Username",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0, ),
            buildTextFieldPass("Password*"),
            SizedBox(height: 10.0, ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Forget Password",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 60.0, ),
            buildButtonContainer(),
            SizedBox(height: 20.0, ),
            buildButtonSignupContainer()

          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText){

    return TextField(



      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: labelText,
        hintStyle: TextStyle(
          color:  Colors.grey,
          fontSize: 16.0,
        ),
//        suffixIcon: IconButton(
//          onPressed: (){},
//          icon: Icon(Icons.visibility),
//        ),

      ),
    );
  }

  Widget buildTextFieldPass(String labelText){

    return TextField(



      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: labelText,
        hintStyle: TextStyle(
          color:  Colors.grey,
          fontSize: 16.0,
        ),
        suffixIcon: IconButton(
          onPressed: (){},
          icon: Icon(Icons.visibility),
        ),

      ),
    );
  }
  Widget buildButtonContainer(){
    return Container(
      height: 30.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          "Sign In",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget buildButtonSignupContainer(){
    return Container(
      height: 10.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          "If you have not account | Sign Up",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 11.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
