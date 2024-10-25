import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
import 'package:flutter/material.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  // final bool _customIcon = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1200,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          // toolbarHeight: 90,
          titleSpacing: 50,
          elevation: 0,
          title: Text(
            " Patient Demographic Information",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0E4F94),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
              bottom: size.height * 0.1,
              top: size.height * 0.1,
              left: size.height * 0.1,
              right: size.height * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Patient ID',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '*',
                          style: TextStyle(
                            color: Color(0xFFDA0000),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 47,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'Enter Your First Name',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            // formData.username = value;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Name',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 47,
                          width: 330,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'Enter Your First Name',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            onChanged: (value) {
                              // formData.username = value;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Container(
                          height: 47,
                          width: 330,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Last Name',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            onChanged: (value) {
                              // formData.username = value;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'First Name',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 285,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Last Name',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Birth Date',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: '*',
                                style: TextStyle(
                                  color: Color(0xFFDA0000),
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 47,
                            width: 231,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black)),
                            child: ExpansionTile(
                              minTileHeight: 40,
                              iconColor: Colors.black,
                              collapsedIconColor: Colors.black,
                              title: Text(
                                "Please select a month",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            height: 47,
                            width: 225,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black)),
                            child: ExpansionTile(
                              minTileHeight: 40,
                              iconColor: Colors.black,
                              collapsedIconColor: Colors.black,
                              title: Text(
                                "Please select a day",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            height: 47,
                            width: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black)),
                            child: ExpansionTile(
                              minTileHeight: 40,
                              iconColor: Colors.black,
                              collapsedIconColor: Colors.black,
                              title: Text(
                                "Please select a year",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Month',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 190,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Day',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 205,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Year',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Gender',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: '*',
                                style: TextStyle(
                                  color: Color(0xFFDA0000),
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                   Row(
                    children: [
                       Container(
                        height: 47,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black)),
                        child: Expanded(
                          child: ExpansionTile(
                            minTileHeight: 40,
                            iconColor: Colors.black,
                            collapsedIconColor: Colors.black,
                            title: Text(
                              "Please select",
                              style: TextStyle(color: Colors.black, fontSize: 14),
                                                 
                            ),
                            // children: [
                            //   ListTile(
                            //     title: Text("Male", style: TextStyle(color: Colors.black, fontSize: 14),),
                            //   )
                            // ],
                          ),
                        )),
                    ],
                   ),
                   SizedBox(height: 20,),
                     Center(
                    child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                    child: MaterialButton(
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ClinicalInfo()));
                        // if (_formkey.currentState!.validate()) {
                        //   print('form submiitted');

                        // }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color:Color(0xFF0E4F94),
                    ),

                    width: 200,

                    height: 30,
                  ),
                )),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
