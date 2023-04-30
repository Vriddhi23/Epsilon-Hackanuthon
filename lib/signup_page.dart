import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:qrplease/login_page.dart';
class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xfff3f2de),
        body: Column(
            children: [
              Container(
                width: w,
                height: h-400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "img/loginimage.jpg"
                        ),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left:20,right:20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height:50,),
                    Container(
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset:const Offset(1,1),
                                color: Colors.grey.withOpacity(0.2)
                            )
                          ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter email id",
                            prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:  BorderSide(
                                  color: Colors.black,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height:20,),
                    Container(
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset:Offset(1,1),
                                color: Colors.grey.withOpacity(0.2)
                            )
                          ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            prefixIcon: Icon(Icons.password,color: Colors.deepOrangeAccent),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:  BorderSide(
                                  color: Colors.black,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height:20,),
                    /*Row(
                  children: [
                    Expanded(child: Container(),),
                  ],
                )*/

                  ],
                ),
              ),

              Container(

                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  border: Border.all(color: Colors.pink.shade300, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.only(top: 40, left: 10),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  //onPressed: () => WelcomePage(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Sign In'),
                    ],
                  ),
                ),
              ),
              SizedBox(height:15),
              RichText(text: TextSpan(
                  text: "Already have an account?",
                  style:TextStyle(
                      color: Colors.grey[500],
                      fontSize: 20
                  ),
                  children:[
                    TextSpan(
                      text: "Log in",
                      style:TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                      recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                    )
                  ]
              )
              ),
              SizedBox(height:w*0.1),
            ],
            ),
        );
    }
}