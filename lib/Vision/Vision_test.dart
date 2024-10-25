import 'dart:ui';

import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/Obstacle%20Details/obstacledetails.dart';
import 'package:demographic_information/SignUp&Login/signup_login_page.dart';
import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
import 'package:flutter/material.dart';

class VisionScreen extends StatefulWidget {
  const VisionScreen({super.key});

  @override
  State<VisionScreen> createState() => _VisionScreenState();
}

class _VisionScreenState extends State<VisionScreen> {
  bool isLoading = false;
  int? selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Container(
        constraints:const BoxConstraints(
          maxWidth: 834,
        ),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 242, 241, 241),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white,
            toolbarHeight: 80,
            title: Container(
              height: 80,
              width: 834,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0),
                    offset:const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TabletPage()));
                            },
                            child: Container(
                                // margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 231, 228, 228),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child:const Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 3,
                          width: 70,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Clinical()));
                          },
                          child: Container(
                              // margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 231, 228, 228),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child:const Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 3,
                          width: 70,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SystemCondandEyeExam()));
                          },
                          child: Container(
                              // margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 231, 228, 228),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child:const Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 3,
                          width: 70,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF0E4F94),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.check,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 3,
                          width: 70,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ObstacleDetailsPage()));
                          },
                          child: Expanded(
                            child: Container(
                                // margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 231, 228, 228),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child:const Center(
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Personal info",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Clinical & Spectale info",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Systm Cond & Eye Exam",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "Vision test",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: Text(
                            "Obstacle details & payment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Scrollbar(
            scrollbarOrientation: ScrollbarOrientation.left,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                // bottom: size.height * 0.1,
                top: 15,
                left: 30,
                // right: size.height * 0.1
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 115),
                        child: Container(
                          height: 1600,
                          width: 480,
                          // decoration: BoxDecoration(
                          //   border: Border.all(color: const Color.fromARGB(255, 242, 241, 241)),
                          //   borderRadius: BorderRadius.circular(5),
                          // ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 250,
                                width: 780,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      offset: Offset(0, 1),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                   const Padding(
                                      padding: EdgeInsets.only(left: 10, top: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Visual Acuity',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '*',
                                                  style: TextStyle(
                                                    color: Color(0xFFDA0000),
                                                    fontSize: 14,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 150,
                                          ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 20),
                                            child: Row(
                                              children: [
                                                Text.rich(TextSpan(children: [
                                                  TextSpan(
                                                    text: 'RE',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w500,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ])),
                                                SizedBox(
                                                  width: 60,
                                                ),
                                                Text.rich(TextSpan(children: [
                                                  TextSpan(
                                                    text: 'LE',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w500,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ])),
                                                SizedBox(
                                                  width: 65,
                                                ),
                                                Text.rich(TextSpan(children: [
                                                  TextSpan(
                                                    text: 'BE',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w500,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ])),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                   const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Row(children: [
                                           const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Aided-Distance',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '*',
                                                    style: TextStyle(
                                                      color: Color(0xFFDA0000),
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w300,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 130,
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: 50,
                                              width: 70,
                                              child: TextField(
                                                style:const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                                cursorColor: Colors.black,
                                                cursorWidth: 2,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  // isCollapsed: true,
                        
                                                  //  hintText: 'Enter Your First Name',
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: 50,
                                              width: 70,
                                              child: TextField(
                                                style:const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                                cursorColor: Colors.black,
                                                cursorWidth: 2,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  // isCollapsed: true,
                        
                                                  //  hintText: 'Enter Your First Name',
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: 50,
                                              width: 70,
                                              child: TextField(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                                // textAlign: TextAlign.start,
                                                cursorColor: Colors.black,
                                                cursorWidth: 2,
                                                decoration: InputDecoration(
                                                  isDense: true,
                        
                                                  //  hintText: 'Enter Your First Name',
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ]),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Row(children: [
                                           const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'Pinhole-Distance(only if<6/9)',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 45,
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: 50,
                                              width: 70,
                                              child: TextField(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                                cursorColor: Colors.black,
                                                cursorWidth: 2,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  // isCollapsed: true,
                        
                                                  //  hintText: 'Enter Your First Name',
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: 50,
                                              width: 70,
                                              child: TextField(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                                cursorColor: Colors.black,
                                                cursorWidth: 2,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  // isCollapsed: true,
                        
                                                  //  hintText: 'Enter Your First Name',
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: 50,
                                              width: 70,
                                              child: TextField(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                                // textAlign: TextAlign.start,
                                                cursorColor: Colors.black,
                                                cursorWidth: 2,
                                                decoration: InputDecoration(
                                                  isDense: true,
                        
                                                  //  hintText: 'Enter Your First Name',
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Row(children: [
                                           const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Unaided-Distance',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 120,
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: 50,
                                              width: 70,
                                              child: TextField(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                                cursorColor: Colors.black,
                                                cursorWidth: 2,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  // isCollapsed: true,
                        
                                                  //  hintText: 'Enter Your First Name',
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: 50,
                                              width: 70,
                                              child: TextField(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                                cursorColor: Colors.black,
                                                cursorWidth: 2,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  // isCollapsed: true,
                        
                                                  //  hintText: 'Enter Your First Name',
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: 50,
                                              width: 70,
                                              child: TextField(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                                // textAlign: TextAlign.start,
                                                cursorColor: Colors.black,
                                                cursorWidth: 2,
                                                decoration: InputDecoration(
                                                  isDense: true,
                        
                                                  //  hintText: 'Enter Your First Name',
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ]),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 270,
                                width: 780,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      offset: Offset(0, 1),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10, top: 20),
                                      child: Row(
                                        children: [
                                         const Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Unaided-Near(Binocular)',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 200,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5),
                                            color: Colors.white,
                                            height: 50,
                                            width: 100,
                                            child: TextField(
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                              cursorColor: Colors.black,
                                              cursorWidth: 2,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                // isCollapsed: true,
                        
                                                //  hintText: 'Enter Your First Name',
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        children: [
                                         const Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Aided-Near',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 287,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            color: Colors.white,
                                            height: 50,
                                            width: 100,
                                            child: TextField(
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                              cursorColor: Colors.black,
                                              cursorWidth: 2,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                // isCollapsed: true,
                        
                                                //  hintText: 'Enter Your First Name',
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        children: [
                                         const Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Add power used (if<N 6)',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 202,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            color: Colors.white,
                                            height: 50,
                                            width: 100,
                                            child: TextField(
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                              cursorColor: Colors.black,
                                              cursorWidth: 2,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                // isCollapsed: true,
                        
                                                //  hintText: 'Enter Your First Name',
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        children: [
                                         const Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Near vision with addition',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 198,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            color: Colors.white,
                                            height: 50,
                                            width: 100,
                                            child: TextField(
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                              cursorColor: Colors.black,
                                              cursorWidth: 2,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                // isCollapsed: true,
                        
                                                //  hintText: 'Enter Your First Name',
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 230,
                                width: 780,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      offset:const Offset(0, 1),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                   const Padding(
                                      padding:
                                          const EdgeInsets.only(left: 270, top: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text.rich(TextSpan(children: [
                                            TextSpan(
                                              text: 'RE',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ])),
                                          SizedBox(
                                            width: 57,
                                          ),
                                         const Text.rich(TextSpan(children: [
                                            TextSpan(
                                              text: 'LE',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ])),
                                          SizedBox(
                                            width: 60,
                                          ),
                                         const Text.rich(TextSpan(children: [
                                            TextSpan(
                                              text: 'BE',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ])),
                                        ],
                                      ),
                                    ),
                                   const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 5),
                                      child: Row(children: [
                                       const Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'FP Value',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 177,
                                        ),
                                        Container(
                                          color: Colors.white,
                                          height: 50,
                                          width: 70,
                                          child: TextField(
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                            cursorColor: Colors.black,
                                            cursorWidth: 2,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              // isCollapsed: true,
                        
                                              //  hintText: 'Enter Your First Name',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          color: Colors.white,
                                          height: 50,
                                          width: 70,
                                          child: TextField(
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                            cursorWidth: 2,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              // isCollapsed: true,
                        
                                              //  hintText: 'Enter Your First Name',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 7),
                                          color: Colors.white,
                                          height: 50,
                                          width: 70,
                                          child: TextField(
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                            // textAlign: TextAlign.start,
                        
                                            cursorWidth: 2,
                                            decoration: InputDecoration(
                                              isDense: true,
                        
                                              //  hintText: 'Enter Your First Name',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                   const SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(children: [
                                      const  Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Subjective',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    const  SizedBox(
                                          width: 167,
                                        ),
                                        Container(
                                          color: Colors.white,
                                          height: 50,
                                          width: 70,
                                          child: TextField(
                                            style:const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                            cursorColor: Colors.black,
                                            cursorWidth: 2,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              // isCollapsed: true,
                        
                                              //  hintText: 'Enter Your First Name',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                const    BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                const    BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                       const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          color: Colors.white,
                                          height: 50,
                                          width: 70,
                                          child: TextField(
                                            style:const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                            cursorColor: Colors.black,
                                            cursorWidth: 2,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              // isCollapsed: true,
                        
                                              //  hintText: 'Enter Your First Name',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                  const BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                   const BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                       const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          margin:const EdgeInsets.only(right: 7),
                                          color: Colors.white,
                                          height: 50,
                                          width: 70,
                                          child: TextField(
                                            style:const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                            // textAlign: TextAlign.start,
                                            cursorColor: Colors.black,
                                            cursorWidth: 2,
                                            decoration: InputDecoration(
                                              isDense: true,
                        
                                              //  hintText: 'Enter Your First Name',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                   const BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                  const BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                   const SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(children: [
                                       const Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'BCVA',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                       const SizedBox(
                                          width: 194,
                                        ),
                                        Container(
                                          color: Colors.white,
                                          height: 50,
                                          width: 70,
                                          child: TextField(
                                            style:const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                            cursorColor: Colors.black,
                                            cursorWidth: 2,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              // isCollapsed: true,
                        
                                              //  hintText: 'Enter Your First Name',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                   const BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                   const BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                       const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          color: Colors.white,
                                          height: 50,
                                          width: 70,
                                          child: TextField(
                                            style:const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                            cursorColor: Colors.black,
                                            cursorWidth: 2,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              // isCollapsed: true,
                        
                                              //  hintText: 'Enter Your First Name',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                    BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                       const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          margin:const EdgeInsets.only(right: 7),
                                          color: Colors.white,
                                          height: 50,
                                          width: 70,
                                          child: TextField(
                                            style:const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                            // textAlign: TextAlign.start,
                                            cursorColor: Colors.black,
                                            cursorWidth: 2,
                                            decoration: InputDecoration(
                                              isDense: true,
                        
                                              //  hintText: 'Enter Your First Name',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                   const BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide:
                                                   const BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                  ],
                                ),
                              ),
                             const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 340,
                                width: 780,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      offset:const Offset(0, 1),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                   const Padding(
                                      padding:  EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      child: Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Lens Status',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '*',
                                                  style: TextStyle(
                                                    color: Color(0xFFDA0000),
                                                    fontSize: 14,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w500,
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
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.blue,
                                            toggleable: true,
                                            value: 1,
                                            groupValue: selectedOption,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value;
                                              });
                                            },
                                          ),
                                         const Text(
                                            "Normal lens",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ]),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.blue,
                                            toggleable: true,
                                            value: 2,
                                            groupValue: selectedOption,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value;
                                              });
                                            },
                                          ),
                                         const Text(
                                            "Cataract",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ]),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.blue,
                                            toggleable: true,
                                            value: 3,
                                            groupValue: selectedOption,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value;
                                              });
                                            },
                                          ),
                                         const Text(
                                            "Aphakia",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ]),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.blue,
                                            toggleable: true,
                                            value: 4,
                                            groupValue: selectedOption,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value;
                                              });
                                            },
                                          ),
                                         const Text(
                                            "Pseudophakia",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ]),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.blue,
                                            toggleable: true,
                                            value: 5,
                                            groupValue: selectedOption,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value;
                                              });
                                            },
                                          ),
                                         const Text(
                                            "Pseudophakia with PCO",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ]),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.blue,
                                            toggleable: true,
                                            value: 6,
                                            groupValue: selectedOption,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value;
                                              });
                                            },
                                          ),
                                          Container(
                                            color: Colors.white,
                                            height: 50,
                                            width: 400,
                                            child: TextField(
                                              style:const TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                              // textAlign: TextAlign.start,
                                              cursorColor: Colors.black,
                                              cursorWidth: 2,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                hintText: 'Other',
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide:const BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide:const BorderSide(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          )
                                        ]),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                     const Padding(
                        padding:  EdgeInsets.only(
                          bottom: 1710,
                          left: 60,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Distance Vision Code",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
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
                  Positioned(
                    left: 540,
                    top: 20,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 760,
                              width: 220,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    offset:const Offset(0, 1),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                  ),
                                ],
                              ),
                              child: DataTable(
                                  headingRowColor: MaterialStateProperty.all(
                                      const Color.fromARGB(255, 243, 239, 239)),
                                  headingTextStyle:const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  columnSpacing: 0,
                                  sortAscending: true,
                                  headingRowHeight: 40,
                                  border: TableBorder.all(),
                                  columns: const [
                                    DataColumn(
                                        label: Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text(
                                        "Code",
                                      
                                      ),
                                    )),
                                    DataColumn(
                                        label: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        "VA",
                                      ),
                                    )),
                                  ],
                                  rows:const[
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "1",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                        padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "6/6",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "2",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                       padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "6/9",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "3",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                         padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "6/12",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "4",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                        padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "6/18",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "5",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                        padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "6/24",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "6",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                        padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "6/36",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "7",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                      padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "6/60",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "8",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                         padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "3/60",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "9",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                        padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "2/60",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "10",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                         padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "1/60",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "11",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                        padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "CFCF",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "12",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                         padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "PL/PR",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "13",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                       padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "NPL",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "14",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                     padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "Fix&follow",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text(
                                        "-99",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      )),
                                      DataCell(Padding(
                                     padding: EdgeInsets.symmetric(horizontal:15),
                                        child: Text(
                                          "Unable",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ]),
                                  ]),
                            ),
                          ],
                        ),
                       const SizedBox(
                          height: 10,
                        ),
                       const Padding(
                          padding:  EdgeInsets.only(right: 105),
                          child: Text(
                            "Near Vision Code",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                       const SizedBox(
                          height: 6,
                        ),
                        Container(
                          height: 567,
                          width: 220,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                offset:const Offset(0, 1),
                                blurRadius: 4,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: DataTable(
                              headingRowColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 243, 239, 239)),
                              columnSpacing: 0,
                              headingRowHeight: 40,
                              border: TableBorder.all(),
                              columns: const [
                                DataColumn(
                                    label: Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "Code",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                      height: 0,
                                    ),
                                  ),
                                )),
                                DataColumn(
                                    label: Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "VA",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                      height: 0,
                                    ),
                                  ),
                                )),
                              ],
                              rows: const [
                              DataRow(cells: [
                                  DataCell(Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                  DataCell(Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "N6",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  )),
                                ]),
                              DataRow(cells: [
                                  DataCell(Text(
                                    "2",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                  DataCell(Padding(
                                     padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "N8",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  )),
                                ]),
                               DataRow(cells: [
                                  DataCell(Text(
                                    "3",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                  DataCell(Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "N10",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  )),
                                ]),
                               DataRow(cells: [
                                  DataCell(Text(
                                    "4",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                  DataCell(Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "N12",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  )),
                                ]),
                            DataRow(cells: [
                                  DataCell(Text(
                                    "5",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                  DataCell(Padding(
                                     padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "N16",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  )),
                                ]),
                              DataRow(cells: [
                                  DataCell(Text(
                                    "6",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                  DataCell(Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "N20",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  )),
                                ]),
                              DataRow(cells: [
                                  DataCell(Text(
                                    "7",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                  DataCell(Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "N24",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  )),
                                ]),
                              DataRow(cells: [
                                  DataCell(Text(
                                    "8",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                  DataCell(Padding(
                                     padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "N36",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text(
                                    "9",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                  DataCell(Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "N40",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text(
                                    "10",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                  DataCell(Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      "N63",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text(
                                    "11",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )),
                                 DataCell(Padding(
                                     padding: EdgeInsets.symmetric(horizontal: 15),
                                   child: Text(
                                     "<N63",
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 14,
                                       fontFamily: 'Inter',
                                       fontWeight: FontWeight.w500,
                                       height: 0,
                                     ),
                                   ),
                                 )),
                                ]),
                              ]),
                        )
                      ],
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 1340,),
                    child: Container(
                      // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                      child: MaterialButton(
                        child: isLoading
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:const [
                                  CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Please wait.....")
                                ],
                              )
                            :const Text(
                                'Next',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                        onPressed: () {
                          setState(() {
                            isLoading = true;
                          });
                          Future.delayed(const Duration(seconds: 3), () {
                            setState(() {
                              isLoading = false;
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text(
                                    "Data Saved",
                                    style: TextStyle(color: Colors.white),
                                  )));
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>const SignUpandLogin()));
                            });
                          });
            
                          // if (_formkey.currentState!.validate()) {
                          //   print('form submiitted');
            
                          // }
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color:Color.fromARGB(255, 2, 53, 107),
                      ),
            
                      width: 216,
            
                      height: 50,
                    ),
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}
