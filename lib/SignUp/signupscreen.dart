import 'package:flutter/material.dart';
import 'package:instragram_project_02/loginview/loginscreen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 650,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 30),
                      child: Image.asset("assets/image/instragram title logo.png",height: 80,),
                      ),
                      
                      Text("Sign up to see photos and videos ",
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),),
                      Text("form your friends ",
                        style: TextStyle(
                            color: Colors.black.withOpacity(.5),
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),),
          
                      SizedBox(height: 10,),
          
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(padding: EdgeInsets.symmetric(),
                                child: Image.asset("assets/image/fblogo.png",height: 23,),
                              ),
                              Text(" Log in with Facebook",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
          
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.black38,
                              ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("  OR  ",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87.withOpacity(.7),
                            ),),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.black38,
                              ),
                            ),
          
                          ],
                        ),
                      ),
          
                      SizedBox(height: 10,),
          
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.black38)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.black38)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.black38)
                          ),
                          hintText: "Mobile Number or Email",
                          hintStyle:TextStyle(
                            color: Colors.black87.withOpacity(.8),
                          ),
                        ),
                      ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black38)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black38)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black38)
                            ),
                            hintText: "Full Name",
                            hintStyle:TextStyle(
                              color: Colors.black87.withOpacity(.8),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black38)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black38)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black38)
                            ),
                            hintText: "UserName",
                            hintStyle:TextStyle(
                              color: Colors.black87.withOpacity(.8),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black38)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black38)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black38)
                            ),
                            hintText: "Password",
                            hintStyle:TextStyle(
                              color: Colors.black87.withOpacity(.8),
                            ),
                          ),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("By signing up, you agree to our ",
                              style: TextStyle(color: Colors.black87.withOpacity(.6)),),
                            Text("Terms, Privacy",style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        )
                      ),
          
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Policy ",style: TextStyle(color: Colors.blue),),
                          Text("and",style: TextStyle(color: Colors.black87.withOpacity(.5)),),
                          Text(" Cookies Policy.",style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                      ),
                      SizedBox(height: 10,),
          
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          minimumSize: Size(double.infinity, 40)
                        ),
                        onPressed: () {
                          
                        },
                        child:Text("Sign up",
                        style: TextStyle(color: Colors.white),),
                      )
                      ),
          
                      
                     
          
          
          
          
          
          
          
          
          
          
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
          
              Container(
                height: 80,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black87.withOpacity(.5))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account? ",style: TextStyle(color: Colors.black87),),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Loginscreen(),));
                        },
                        child: Text("Log in ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
                  ],
                ),
              )
          
            ],
          ),
        ),
      ),


    );
  }
}
