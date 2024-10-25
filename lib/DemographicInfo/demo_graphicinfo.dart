// ignore_for_file: must_be_immutable

import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
import 'package:demographic_information/DbHelper/db_helper.dart';
import 'package:demographic_information/DemographicInfo/patient_details.dart';
import 'package:demographic_information/Model/models.dart';
import 'package:demographic_information/Obstacle%20Details/obstacledetails.dart';
import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
import 'package:demographic_information/Vision/Vision_test.dart';
import 'package:flutter/material.dart';

class DemographicDetails extends StatelessWidget {
  const DemographicDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth >= 834) {
        return TabletPage();
      } else if (Constraints.maxWidth >= 834 && Constraints.maxWidth < 1194) {
        return TabletPage();
      } else {
        return TabletPage();
      }
    });
  }
}

class TabletPage extends StatefulWidget {
    // const TabletPage({super.key});

  int? todoId;
  String? todoName;
  String? todoPhoneNumber;
  String? todoIdNumber;
  String? todoMonthlyIncome;
  String? todoAddress;
  String? todoLandmark;
  String?  todoDT;
  bool? update;
  TabletPage({
    this.todoId,
    this.todoName,
    this.todoPhoneNumber,
    this.todoIdNumber,
    this.todoMonthlyIncome,
    this.todoAddress,
    this.todoLandmark,
   this.todoDT,
    this.update,
  });
  @override
  State<TabletPage> createState() => _TabletPageState();
}

class _TabletPageState extends State<TabletPage> {
  int? selectedOption = 1;
  bool isLoading = false;
  final _formkey = GlobalKey<FormState>();
  late TextEditingController namecontroller = TextEditingController();

  late TextEditingController landmarkcontroller = TextEditingController();
  late TextEditingController phonenumbercontroller = TextEditingController();
  late TextEditingController idnumbercontroller = TextEditingController();
  late TextEditingController monthlyincomecontroller = TextEditingController();
  late TextEditingController addresscontroller = TextEditingController();
  DBHelper? dbHelper;
  late Future<List<TodoModel>> dataList;
  @override
  void initState() {
    super.initState();
    dbHelper = DBHelper();
    LoadData();
    
  }

  LoadData() async {
    dataList = dbHelper!.getDataList();
  }

 

  
  @override
  Widget build(BuildContext context) {
    final namecontroller = TextEditingController(text: widget.todoName);
    final phonenumbercontroller =
        TextEditingController(text: widget.todoPhoneNumber);
    final idnumbercontroller = TextEditingController(text: widget.todoIdNumber);
    final monthlyincomecontroller =
        TextEditingController(text: widget.todoMonthlyIncome);
    final addresscontroller = TextEditingController(text: widget.todoAddress);
    final landmarkcontroller = TextEditingController(text: widget.todoLandmark);
 


     // ignore: unused_local_variable
    String appTitle;
    if (widget.update == true) {
      appTitle = "Update Task";
    } else {
      appTitle = "Add Task";
    }
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
                        child: Container(
                          // margin: EdgeInsets.symmetric(horizontal: 40),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
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
                      Text(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Scrollbar(
          scrollbarOrientation: ScrollbarOrientation.right,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              // bottom: size.height * 0.1,
              top: 15,

              left: 35,
              // right: 15,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      
                      height: 265,
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
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Row(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Name',
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
                                    width: 325,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Phone Number',
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
                            SizedBox(
                              height: 2,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 17),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextFormField(
                                    
                                      // validator: (value) {
                                      //   if (value!.isEmpty) {
                                      //     return "Enter your name";
                                      //   } else {
                                      //     return "Empty";
                                      //   }
                                      // },
                                      controller: namecontroller,
                                      cursorColor: Colors.black,
                                      cursorHeight: 25,
                                      cursorWidth: 2,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: 'Enter Your Name',
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
                                        // errorText: errorTextval.isEmpty? null:errorTextval
                                      ),
                                    //   onChanged: (value) {
                                    // setState(() {
                                     
                                    // });
                                    //   },
                                      
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextFormField(
                                      // validator: (value) {
                                      //   if (value!.isEmpty) {
                                      //     return "Enter your phonenumber";
                                      //   } else {
                                      //     return null;
                                      //   }
                                      // },
                                      controller: phonenumbercontroller,
                                      cursorColor: Colors.black,
                                      cursorHeight: 25,
                                      cursorWidth: 2,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: "Enter your phone number",
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
                                    //   onChanged: (value){
                                    //       setState(() {
                                      
                                    // });
                                    //   },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 15),
                                  child: Row(
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'ID Number',
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
                                        width: 295,
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Monthly Income',
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
                              
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 350,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: TextFormField(
                                          // validator: (value) {
                                          //   if (value!.isEmpty) {
                                          //     return "Enter your ID";
                                          //   } else {
                                          //     return null;
                                          //   }
                                          // },
                                          keyboardType:
                                              TextInputType.numberWithOptions(),
                                          controller: idnumbercontroller,
                                          cursorColor: Colors.black,
                                          cursorHeight: 25,
                                          cursorWidth: 2,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                          autofocus: true,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                            hintText: 'Enter Your ID',
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
                                    //       onChanged: (value) {
                                    //           setState(() {
                                     
                                    // });
                                    //       },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height: 50,
                                        width: 350,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: TextFormField(
                                          // validator: (value) {
                                          //   if (value!.isEmpty) {
                                          //     return "Enter your income";
                                          //   } else {
                                          //     return null;
                                          //   }
                                          // },
                                          controller: monthlyincomecontroller,
                                          cursorColor: Colors.black,
                                          cursorHeight: 25,
                                          cursorWidth: 2,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                          decoration: InputDecoration(
                                            hintText:
                                                "Enter your monthly income",
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
                                    //       onChanged: (value){
                                    //           setState(() {
                                     
                                    // });
                                    //       },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 15),
                                      child: Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Address',
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
                                            width: 310,
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Landmark',
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
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 17),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 350,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: TextFormField(
                                              // validator: (value) {
                                              //   if (value == null || value.isEmpty) {
                                              //     return "Enter your address";
                                              //   } else {
                                              //     return null;
                                              //   }
                                              // },
                                              controller: addresscontroller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height:0,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: 'Enter Your Address',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                              ),
                                    //           onChanged: (value) {
                                    //              setState(() {
                                    
                                    // });
                                    //           },
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 350,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: TextFormField(
                                              // validator: (value) {
                                              //   if (value!.isEmpty) {
                                              //     return "Enter your landmark";
                                              //   } else {
                                              //     return null;
                                              //   }
                                              // },
                                              controller: landmarkcontroller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              keyboardType:
                                                  TextInputType.number,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                              decoration: InputDecoration(
                                                hintText: "Enter your landmark",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                              ),
                                    //             onChanged: (value) {
                                    //              setState(() {
                                    
                                    // });
                                    //           },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
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
                      height: 187,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Location',
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
                              SizedBox(
                                width: 150,
                              ),
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Status',
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
                                width: 155,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Gender',
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
                              Row(
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
                                    "Plains",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 140,
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
                                    "Examined",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
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
                                    "Male",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Row(
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
                                    "Hilly Region",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 104,
                                  ),
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
                                    "Not Available After 2 Hrs",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 4,
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
                                    "Female",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Row(
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
                                  Text(
                                    "Mountains",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 112,
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
                                  Text(
                                    "Refused",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 111,
                                  ),
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
                                    "Prefered Not To Say",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ],
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
                      height: 508,
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
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Occupation',
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
                                  width: 320,
                                ),
                                const Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Education',
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                                "Unemployed",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 275,
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
                                "No Education",
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
                                "Teacher/Clerical job/professional",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 139,
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
                                "Primary School(Class 1-5)",
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
                                value: 14,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              Text(
                                "Driver",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 317.5,
                              ),
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
                                "High School",
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
                                value: 16,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              Text(
                                "Shopkeeper/Vendor/Bussiness",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 155,
                              ),
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
                                "Intermediate Class",
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
                                value: 18,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              Text(
                                "Laboure/Agriculture",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 226,
                              ),
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
                                "College (undergraduate)",
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
                                value: 20,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              Text(
                                "Laboure/Other",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 261.5,
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
                                "Advance Studies(PG etc)",
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
                                value: 22,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              Text(
                                "Skilled worker(ex Goldsmith,Carpnter)",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 111,
                              ),
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
                                "Other (Specify)",
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
                                value: 24,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              Text(
                                "Home Duties Only",
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
                                value: 25,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value;
                                  });
                                },
                              ),
                              Text(
                                "Student",
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
                                "Other (Specify)",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
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
                                Text("Please wait.....",  style:
                                  TextStyle(color: Colors.white, fontSize: 16),)
                              ],
                            )
                          : Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                      onPressed: () async {
                     
                        
                      
                          setState(() {
                          isLoading = true;
                        });
                        await Future.delayed(Duration(seconds: 3), () {
                          setState(() {
                            isLoading = false;
                            if (_formkey.currentState!.validate()) {
                               if (widget.update == true) {
                                dbHelper!.update(TodoModel(
                                  id: widget.todoId,
                                    name: namecontroller.text,
                                    phonenumber: phonenumbercontroller.text,
                                    idnumber: idnumbercontroller.text,
                                    monthlyincome: monthlyincomecontroller.text,
                                    address: addresscontroller.text,
                                    Landmark: landmarkcontroller.text,
                                    dateandtime:DateTime.now().toString()
                                    ));
                              }
                                dbHelper!.insert(TodoModel(
                                    name: namecontroller.text,
                                    phonenumber: phonenumbercontroller.text,
                                    idnumber: idnumbercontroller.text,
                                    monthlyincome: monthlyincomecontroller.text,
                                    address: addresscontroller.text,
                                    Landmark: landmarkcontroller.text,
                                    dateandtime: DateTime.now().toString()));
                                    // dateandtime: DateFormat('yMd').add_jm().format(DateTime.now())).toString());
                                 Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PatientDetails()));
                                namecontroller.clear();
                                phonenumbercontroller.clear();
                                idnumbercontroller.clear();
                                monthlyincomecontroller.clear();
                                addresscontroller.clear();
                                landmarkcontroller.clear();
                                print("Data Added");
                               
                               
                             }
                          });
                        });
                      
                        
                      
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
