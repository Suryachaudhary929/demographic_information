import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/Obstacle%20Details/obstacledetails.dart';
import 'package:demographic_information/Vision/Vision_test.dart';
import 'package:demographic_information/patient_info_page.dart';
import 'package:flutter/material.dart';

class SystemCondandEyeExam extends StatefulWidget {
  const SystemCondandEyeExam({super.key});

  @override
  State<SystemCondandEyeExam> createState() => _SystemCondandEyeExamState();
}

class _SystemCondandEyeExamState extends State<SystemCondandEyeExam> {
  int? selectedOption = 1;
  bool isLoading = false;
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
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TabletPage()));
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
                            child: Center(
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
                      InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.grey,
                          height: 3,
                          width: 70,
                        ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            // bottom: 10,
            top: 15,
            // left: 10,
            // right: 10
          ),
          child: Column(
            children: [
              Container(
                height: 375,
                width: 776.78,
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
                          const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Divider(
                        color: Colors.black,
                        thickness: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "CODE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            "CONDITION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            "DURATION-YEARS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            "MEDICATION",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40, left: 15),
                      child: Row(
                        children: [
                          Table(
                              defaultColumnWidth: FixedColumnWidth(185),
                              border: TableBorder.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                              ),
                              children: [
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                            "1",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('None',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ))
                                        ]),
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                          Text(
                                            "2",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Hypertension',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black))
                                        ]),
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                            "3",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ]),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Diabetes',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black))
                                        ]),
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                          Text(
                                            "4",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Covid 19 infection',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black))
                                        ]),
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                            "5",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Fall in one year',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black))
                                        ]),
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                          Text(
                                            "6",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ]),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Other',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              ))
                                        ]),
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 48.0,
                                          width: 190,
                                          decoration: BoxDecoration(),
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
                                              height: 3.3,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black12),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              // formData.username = value;
                                            },
                                          ),
                                        ),
                                      ]),
                                ]),
                              ])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 410,
                width: 777,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      offset: const Offset(0, 1),
                      blurRadius: 4,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35, top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
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
                            width: 350,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
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
                    SizedBox(height: 15,),
                   const Padding(
                      padding:  EdgeInsets.only(left: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Lids',
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
                          SizedBox(width: 348,),
                           Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Lids',
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
                        ],
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 33,top: 1),
                      child: Row(
                        children: [
                            Container(
                            height: 40,
                            width: 340,
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
                                hintText: 'Lids',
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
                          SizedBox(width:33,),
                            Container(
                            height: 40,
                            width: 345,
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
                                hintText: 'Lids',
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
                    ),
                    SizedBox(height: 10,),
                     const Padding(
                      padding:  EdgeInsets.only(left: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Conjunctiva',
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
                          SizedBox(width: 297,),
                           Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Conjunctiva',
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 33,top: 1),
                      child: Row(
                        children: [
                            Container(
                            height: 40,
                            width: 340,
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
                                hintText: 'Conjunctiva',
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
                          SizedBox(width:33,),
                            Container(
                            height: 40,
                            width: 345,
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
                                hintText: 'Conjunctiva',
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
                    ),
                    SizedBox(height: 10,),
                     const Padding(
                      padding:  EdgeInsets.only(left: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Cornea',
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
                          SizedBox(width: 325,),
                           Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Cornea',
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
                        ],
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 33,top: 1),
                      child: Row(
                        children: [
                            Container(
                            height: 40,
                            width: 340,
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
                                hintText: 'Cornea',
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
                          SizedBox(width:33,),
                            Container(
                            height: 40,
                            width: 345,
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
                                hintText: 'Cornea',
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
                    ),
                    SizedBox(height: 10,),
                     const Padding(
                      padding:  EdgeInsets.only(left: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Ac',
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
                          SizedBox(width: 355,),
                           Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Ac',
                                  
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
                        ],
                      ),
                    ),
                   
                    Padding(
                      padding: const EdgeInsets.only(left: 33,top: 1),
                      child: Row(
                        children: [
                            Container(
                            height: 40,
                            width: 340,
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
                                hintText: 'Ac',
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
                          SizedBox(width:33,),
                            Container(
                            height: 40,
                            width: 345,
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
                                hintText: 'Ac',
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
                    ),
                      SizedBox(height: 10,),
                     const Padding(
                      padding:  EdgeInsets.only(left: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Iris/Pupil',
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
                          SizedBox(width: 315,),
                           Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Iris/Pupil',
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
                        ],
                      ),
                    ),
                     
                    Padding(
                      padding: const EdgeInsets.only(left: 33,top: 1),
                      child: Row(
                        children: [
                            Container(
                            height: 40,
                            width: 340,
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
                                hintText: 'Iris',
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
                          SizedBox(width:33,),
                            Container(
                            height: 40,
                            width: 345,
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
                                hintText: 'Iris',
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
                    ),
                     
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
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                    onPressed: () {
                      setState(() {
                        isLoading = true;
                      });
                      Future.delayed(Duration(seconds: 3), () {
                        setState(() {
                          isLoading = false;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SelectPage()));
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

                  height: 48,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
