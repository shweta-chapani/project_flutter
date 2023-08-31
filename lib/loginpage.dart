import 'package:flutter/material.dart';
import 'package:project_flutter/mostpopular.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/image/spotify1.png",
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              Text(
                'To Continue , log in to Spotify',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              SizedBox(
                // height: 200,
                width: 300,
                child: FloatingActionButton.extended(
                  label: Text('CONTINUE WITH FACEBOOK'), // <-- Text
                  backgroundColor: Colors.blue,

                  icon: Icon(
                    // <-- Icon
                    Icons.facebook,
                    size: 24.0,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: FloatingActionButton.extended(
                  label: Text('CONTINUE WITH APPLE'), // <-- Text
                  backgroundColor: Colors.black,
                  icon: Icon(
                    // <-- Icon
                    Icons.apple,
                    size: 24.0,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              SizedBox(
                // height: 200,
                width: 300,
                child: FloatingActionButton.extended(
                  label: Text(
                    'CONTINUE WITH GOOGLE',
                    style: TextStyle(color: Colors.black),
                  ), // <-- Text
                  backgroundColor: Colors.white,

                  icon: Image.asset(
                    "assets/image/google.png",
                    width: 24,
                  ),
                  onPressed: () {},
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Divider(
                          color: Colors.black,
                        )),
                    flex: 4,
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "OR",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Divider(
                          color: Colors.black,
                        )),
                    flex: 4,
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              Container(
                //margin: EdgeInsets.only(left: 200, right: 200),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: SizedBox(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "username , Phone number OR email",
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              Container(
                //margin: EdgeInsets.only(left: 200, right: 200),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: SizedBox(
                    width: 400,
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Enter password",

                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 5,
              ),
              SizedBox(
                width: 300,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                         // margin: EdgeInsets.only(left: 30),
                          child: Checkbox(
                            value: check1,
                            checkColor: Colors.white,
                            activeColor: Colors.green,
                            //controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? value) {
                              setState(() {
                                check1 = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 40),
                          child: Text("Remember me"),
                        ),
                        SizedBox(

                          width: 130,
                          child: FloatingActionButton.extended(
                            label: Text(
                              'LOG IN',
                              style: TextStyle(color: Colors.black),
                            ), // <-- Text
                            backgroundColor: Colors.green,

                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return MostPopular();
                              },));
                            },
                          ),
                        ),
                        //Expanded(child: Container(),flex: 2,),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 5,
              ),
              Text(
                'Don`t have an accoount? ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: FloatingActionButton.extended(
                  label: Text(
                    'SIGN UP FOR SPOTIFY',
                    style: TextStyle(color: Colors.black),
                  ), // <-- Text
                  backgroundColor: Colors.white,

                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
