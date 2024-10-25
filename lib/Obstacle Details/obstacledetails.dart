import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
import 'package:demographic_information/Vision/Vision_test.dart';
import 'package:flutter/material.dart';

class ObstacleDetailsPage extends StatefulWidget {
  const ObstacleDetailsPage({super.key});

  @override
  State<ObstacleDetailsPage> createState() => _ObstacleDetailsPageState();
}

class _ObstacleDetailsPageState extends State<ObstacleDetailsPage> {
  int? selectedoption = 1;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1400,
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
                  offset: const Offset(0, 1),
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
                                    builder: (context) =>  TabletPage()));
                          },
                          child: Container(
                              // margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 231, 228, 228),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(
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
                            child: const Center(
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
                            child: const Center(
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VisionScreen()));
                        },
                        child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 228, 228),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text(
                                "4",
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 570,
                  width: 754,
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
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Lens Status',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                      color: Color(0xFFDA0000),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 300,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Actions',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                      color: Color(0xFFDA0000),
                                      fontSize: 15,
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
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 1,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "Not applicable,vision is normal in both eyes",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 65,
                              ),
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 22,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "No action required",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 2,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "Unaware of the problem",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 191,
                              ),
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 23,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "Refer to clinic",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 3,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "Aware of the problem,but can manage",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 102,
                              ),
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 23,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "Near vision glasses",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 4,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "One eye adequate vision",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 192,
                              ),
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 23,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "Continue same glasses",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 5,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "Cannot afford consolation fees",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 26,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Container(
                                color: Colors.white,
                                height: 40,
                                width: 290,
                                child: TextField(
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                  cursorColor: Colors.black,
                                  cursorWidth: 2,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    // isCollapsed: true,

                                    hintText: 'Other specify',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          const BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          const BorderSide(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 6,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Expanded(
                                child: Text(
                                  "Cannot afford cost of spectacle/surgery",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 7,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Expanded(
                                child: Text(
                                  "Service not available or very far",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 8,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "No one to accompany",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 9,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Expanded(
                                child: Text(
                                  "No time availability/other priorities",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 10,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Text(
                                "Other health reason",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 11,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value;
                                  });
                                },
                              ),
                              Container(
                                color: Colors.white,
                                height: 40,
                                width: 300,
                                child: TextField(
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                  cursorColor: Colors.black,
                                  cursorWidth: 2,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    // isCollapsed: true,

                                    hintText: 'Other reason',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 552,
                  width: 754,
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
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical:20),
                    child: Column(
                      children: [
                      const  Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 15),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Lens Status',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              
                            ),
                            SizedBox(width: 300,),
                          Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Willingness to play',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 15,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 12,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value;
                                    });
                                  },
                                ),
                                Text(
                                  "No Visual impairment",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 225,),
                                 Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '"Price for distance glasses?"',
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
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 13,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value;
                                    });
                                  },
                                ),
                                Text(
                                  "Refractive error",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 265,),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Container(
                                                                    color: Colors.white,
                                                                    height: 40,
                                                                    width: 318,
                                                                    child: TextField(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                    cursorColor: Colors.black,
                                    cursorWidth: 2,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      // isCollapsed: true,
                                    
                                      hintText: 'Amount',
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ),
                                                                    ),
                                                                  ),
                                  ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 14,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value;
                                    });
                                  },
                                ),
                                Text(
                                  "Uncorrected aphakia",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                    SizedBox(width: 225,),
                                 Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '"Price for near vision glasses?"',
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
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 15,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value;
                                    });
                                  },
                                ),
                                Text(
                                  "Cataract",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                  SizedBox(width: 305,),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Container(
                                                                    color: Colors.white,
                                                                    height: 40,
                                                                    width: 320,
                                                                    child: TextField(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                    cursorColor: Colors.black,
                                    cursorWidth: 2,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      // isCollapsed: true,
                                    
                                      hintText: 'Amount',
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ),
                                                                    ),
                                                                  ),
                                  ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 16,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value;
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    "Surgery related complications",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 17,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value;
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    "Corneal opacity/scar",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 18,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value;
                                    });
                                  },
                                ),
                                Text(
                                  "Phthisis or absent globe",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 19,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value;
                                    });
                                  },
                                ),
                                Text(
                                  "Glaucoma",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 20,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value;
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    "Posterior segment disorders",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 21,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value;
                                    });
                                  },
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 40,
                                  width: 300,
                                  child: TextField(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                    cursorWidth: 2,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      // isCollapsed: true,
                        
                                      hintText: 'Other specify',
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      ],
                    ),
                  ),
                ),
               
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                    child: MaterialButton(
                      child: isLoading
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
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
                          : Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                      onPressed: () {
                        setState(() {
                          isLoading = true;
                        });
                        Future.delayed(Duration(seconds: 3), () {
                          setState(() {
                            isLoading = false;
                            //  Navigator.of(context).push(MaterialPageRoute(
                            // builder: (context) => SelectPage()));
                          });
                        });

                        // if (_formkey.currentState!.validate()) {
                        //   print('form submiitted');

                        // }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Color.fromARGB(255, 2, 53, 107),
                    ),

                    width: 216,

                    height: 50,
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
