import 'package:flutter/material.dart';
import 'package:instragram_project_02/SignUp/signupscreen.dart';
import 'package:instragram_project_02/loginview/loginscreen.dart';

class Forgetscreen extends StatefulWidget {
  const Forgetscreen({super.key});

  @override
  State<Forgetscreen> createState() => _ForgetscreenState();
}

class _ForgetscreenState extends State<Forgetscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 550,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black87.withOpacity(.3))
              ),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 40),
                        child: Image.asset("assets/image/lock.png",height: 100,),
                      ),
                      SizedBox(height: 15,),
                      Text("Trouble logging in?",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),

                      Text("Enter your email, phone, or username and we'll",style: TextStyle(
                        color: Colors.black.withOpacity(.7)
                      ),),
                      Text("send you a link to get back into your account.",style: TextStyle(
                          color: Colors.black.withOpacity(.7)
                      )),
                      SizedBox(height: 10,),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.withOpacity(.8)),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          hintText: "Email,phone, or Username",
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(.5),
                            fontSize: 14
                          )
                        ),
                      ),
                      ),
                      SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 45),
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

                            ),
                            onPressed: () {

                            },
                            child: Text("Send login link",style: TextStyle(
                              color: Colors.white
                            ),)),
                      ),
                      SizedBox(height: 15,),

                      Text("Can`t reset your Password"),
                      SizedBox(height: 30,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness:0.5,
                                color: Colors.black.withOpacity(.5),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text("OR",style: TextStyle(fontSize: 13),),
                            ),

                            Expanded(
                              child: Divider(
                                thickness:0.5,
                                color: Colors.black.withOpacity(.5)
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),

                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Signupscreen(),));
                          },
                          child: Text("Create new account",style: TextStyle(fontWeight: FontWeight.bold),)),

                      SizedBox(height: 45,),

                      Container(
                        height: 43,
                        width: 380,
                        decoration: BoxDecoration(
                          color: Colors.white70.withOpacity(.2),
                          border: Border.all(color: Colors.black.withOpacity(.3))
                        ),
                        child: Center(child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
                          },
                          child: Text("Back to login",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black),),
                        )),
                      )

                    ],
                  ),
                ),
              ),

            ),



          ],
        ),
      ),
    );
  }
}
