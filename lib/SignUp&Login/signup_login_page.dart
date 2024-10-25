import 'package:flutter/material.dart';

class SignUpandLogin extends StatefulWidget {
  const SignUpandLogin({super.key});

  @override
  State<SignUpandLogin> createState() => _SignUpandLoginState();
}

class _SignUpandLoginState extends State<SignUpandLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E4F94),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(top: 60),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'RARE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                height: 0,
                              ),
                            ),
                           
                          ],
                        ),
                      ),
            ],
           ),
         ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'NEPAL',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 51,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                height: 0,
                              ),
                            ),
                           
                          ],
                        ),
                      ),
            ],
           ),
             Center(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    top: 40
                  ),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                    child: MaterialButton(
                      child: Text(
                        'SignUP',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpandLogin()));
                        // if (_formkey.currentState!.validate()) {
                        //   print('form submiitted');

                        // }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Color(0xFFE95000),
                    ),

                    width: 150,

                    height: 50,
                  ),
                )),
                   Center(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15
                  ),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                    child: MaterialButton(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpandLogin()));
                        // if (_formkey.currentState!.validate()) {
                        //   print('form submiitted');

                        // }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color:Colors.white,
                    ),

                    width: 150,

                    height: 50,
                  ),
                )),
                SizedBox(height: 15,),
                  Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Browse as a Guest?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                           
                          ],
                        ),
                      ),
        ],
      ),
    
    );
  }
}

