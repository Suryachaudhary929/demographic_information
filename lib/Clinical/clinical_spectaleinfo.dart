import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/Obstacle%20Details/obstacledetails.dart';
import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
import 'package:demographic_information/Vision/Vision_test.dart';
import 'package:flutter/material.dart';

class Clinical extends StatelessWidget {
  const Clinical({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth >= 834) {
        return ClinicalInfo();
      } else if (Constraints.maxWidth >= 834 && Constraints.maxWidth < 1194) {
        return ClinicalInfo();
      } else {
        return ClinicalInfo();
      }
    });
  }
}

class ClinicalInfo extends StatefulWidget {
  const ClinicalInfo({super.key});

  @override
  State<ClinicalInfo> createState() => _ClinicalInfoState();
}

class _ClinicalInfoState extends State<ClinicalInfo> {
  bool isLoading = false;
  int? selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: 834,
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 239, 239),
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
                  offset: Offset(0, 1),
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
                                color: const Color.fromARGB(255, 231, 228, 228),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
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
                        child: Container(
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
                                  builder: (context) => SystemCondandEyeExam()));
                        },
                        child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 228, 228),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
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
                                  builder: (context) =>VisionScreen()));
                        },
                        child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 228, 228),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ObstacleDetailsPage()));
                        },
                        child: Expanded(
                          child: Container(
                              // margin: EdgeInsets.symmetric(horizontal: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 231, 228, 228),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              // bottom: size.height * 0.1,
              top: 15,

              // right: size.height * 0.1
            ),
            child: Column(
              children: [
                Container(
                  height: 235,
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
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'OD',
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
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 352,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'OS',
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
                                      fontWeight: FontWeight.w400,
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
                          Text(
                            "None",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 300,
                          ),
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
                          Text(
                            "None",
                            style: TextStyle(color: Colors.black),
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
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Blurred distance vision",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 188,
                          ),
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
                          Text(
                            "Blurred distance vision",
                            style: TextStyle(color: Colors.black),
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
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Blurred near vision",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 216,
                          ),
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
                          Text(
                            "Blurred near vision",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        verticalDirection: VerticalDirection.up,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 7,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextField(
                              // controller: firstnamecontroller,
                              cursorColor: Colors.black,
                              cursorHeight: 25,
                              cursorWidth: 2,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 3.8,
                              ),
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: 'Other',
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
                            width: 36,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 8,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextField(
                              // controller: firstnamecontroller,
                              cursorColor: Colors.black,
                              cursorHeight: 25,
                              cursorWidth: 2,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 3.8,
                              ),
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: 'Other',
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 438,
                  width: 777,
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
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: const Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Present Glasses',
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
                              width: 120,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Glass types',
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
                              width: 80,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Provider',
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
                            value: 9,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "No",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 10,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "S-V Distance",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 11,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Eye Care Center",
                            style: TextStyle(color: Colors.black),
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
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Yes",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 165,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 13,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "S-V Near",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 56,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 14,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Local Optical shop",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 238),
                        child: Row(
                          children: [
                            Radio<int>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 15,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                            ),
                            Text(
                              "Bifocals",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Radio<int>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 16,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                            ),
                            Text(
                              "Eye Camp",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 238),
                        child: Row(
                          children: [
                            Radio<int>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 17,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                            ),
                            Text(
                              "PAL",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 89,
                            ),
                            Radio<int>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 18,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                            ),
                            Text(
                              "Private eye hospital",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 400),
                        child: Row(children: [
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 19,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Private eye Clinc",
                            style: TextStyle(color: Colors.black),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 400),
                        child: Row(children: [
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 20,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Secondary eye Clinc",
                            style: TextStyle(color: Colors.black),
                          ),
                        ]),
                      ),
                      Row(
                        verticalDirection: VerticalDirection.up,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Amount Paid',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 277,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 21,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Tertiary eye hospital",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextField(
                                // controller: lastnamecontroller,
                                cursorColor: Colors.black,
                                cursorHeight: 25,
                                cursorWidth: 2,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 3,
                                ),
                                decoration: InputDecoration(
                                  hintText: "",
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
                            SizedBox(
                              width: 238,
                            ),
                            Row(
                              verticalDirection: VerticalDirection.up,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 22,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value;
                                    });
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    height: 40,
                                    width: 290,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextField(
                                      // controller: lastnamecontroller,
                                      cursorColor: Colors.black,
                                      cursorHeight: 25,
                                      cursorWidth: 2,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 3.8,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: "Other",
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
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 428,
                  width: 777,
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
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: const Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Present Glasses',
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
                              width: 130,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Glass types',
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
                              width: 90,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Reason for discontinuing glasses',
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
                            value: 23,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "No",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 185,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 24,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "S-V Distance",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 25,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "No glasses",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 26,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Used glass before",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 87,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 27,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "S-V Near",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 28,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "They are uncomfortable",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250),
                        child: Row(
                          children: [
                            Radio<int>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 29,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                            ),
                            Text(
                              "Bifocals",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 64,
                            ),
                            Radio<int>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 30,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                            ),
                            Text(
                              "They are scratched,broken",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250),
                        child: Row(
                          children: [
                            Radio<int>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 31,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                            ),
                            Text(
                              "PAL",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 91,
                            ),
                            Radio<int>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 32,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                            ),
                            Expanded(
                              child: Text(
                                "I lost them & have no money to buy",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 416),
                        child: Row(children: [
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 33,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Can see clearly without even glasses",
                            style: TextStyle(color: Colors.black),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 416),
                        child: Row(children: [
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 34,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Used for headache only",
                            style: TextStyle(color: Colors.black),
                          ),
                        ]),
                      ),
                      Row(
                        verticalDirection: VerticalDirection.up,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Amount Paid',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 290,
                          ),
                          Radio<int>(
                            activeColor: Colors.blue,
                            toggleable: true,
                            value: 35,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          Text(
                            "Tertiary eye hospital",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextField(
                                // controller: firstnamecontroller,
                                cursorColor: Colors.black,
                                cursorHeight: 25,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 3,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: '',
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
                              width: 250,
                            ),
                            Row(
                              verticalDirection: VerticalDirection.up,
                              children: [
                                Radio<int>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 36,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value;
                                    });
                                  },
                                ),
                                Container(
                                  height: 40,
                                  width: 290,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextField(
                                    // controller: firstnamecontroller,
                                    cursorColor: Colors.black,
                                    cursorHeight: 25,
                                    cursorWidth: 2,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 3.8,
                                    ),
                                    autofocus: true,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: 'Other',
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
                                    onChanged: (value) {
                                      // formData.username = value;
                                    },
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
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
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.green,
                                content: Text(
                                  "Data Saved",
                                  style: TextStyle(color: Colors.white),
                                )));
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

                    width: 200,

                    height: 40,
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
