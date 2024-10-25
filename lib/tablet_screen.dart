// import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
// import 'package:demographic_information/Model/models.dart';
// import 'package:demographic_information/Obstacle%20Details/obstacledetails.dart';
// import 'package:demographic_information/Payment/payment_page.dart';
// import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
// import 'package:demographic_information/Vision/Vision_test.dart';
// import 'package:flutter/material.dart';

// class TabletScreen extends StatefulWidget {
//   const TabletScreen({super.key});

//   @override
//   State<TabletScreen> createState() => _TabletScreenState();
// }

// class _TabletScreenState extends State<TabletScreen> {
//   int? selectedOption = 1;
//   bool isLoading = false;
//   // List<Map<String, dynamic>> _allData = [];
//   // void _refreshData() async {
//   //   final data = await SQLHelper.getData();
//   //   setState(() {
//   //     _allData = data;
//   //     // _isloading = false;
//   //   });
//   // }

//   final TextEditingController firstnamecontroller = TextEditingController();
 
//   final TextEditingController landmarkcontroller = TextEditingController();
//   final TextEditingController phonenumbercontroller = TextEditingController();
//   final TextEditingController idnumbercontroller = TextEditingController();
//   final TextEditingController monthlyincomecontroller = TextEditingController();
//   final TextEditingController addresscontroller = TextEditingController();
//   // Future<void> _addData() async {
//   //   await SQLHelper.createData(
//   //       firstnamecontroller.text,
//   //       lastnamecontroller.text,
//   //       landmarkcontroller.text,
//   //       phonenumbercontroller.text,
//   //       idnumbercontroller.text,
//   //       monthlyincomecontroller.text,
//   //       addresscontroller.text);
//   // }

//   // Future<void> _updateData(int id) async {
//   //   await SQLHelper.updateData(
//   //       id,
//   //       firstnamecontroller.text,
//   //       lastnamecontroller.text,
//   //       landmarkcontroller.text,
//   //       phonenumbercontroller.text,
//   //       idnumbercontroller.text,
//   //       monthlyincomecontroller.text,
//   //       addresscontroller.text);
//   //   _refreshData();
//   // }

//   // void _deleteData(int id) async {
//   //   await SQLHelper.deleteData(id);
//   //   ScaffoldMessenger.of(context)
//   //       .showSnackBar(SnackBar(content: Text("Data Deleted")));
//   //   _refreshData();
//   // }

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _refreshData();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return Container(
  
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.white,
//           // toolbarHeight: 90,
//           titleSpacing: 50,
//           elevation: 0,
//           title: Text(
//             "Demographic Information",
//             style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF0E4F94),
//             ),
//           ),
//         ),
//         body: SingleChildScrollView(
//             padding: EdgeInsets.only(
//                 bottom: size.height * 0.1,
//                 top: size.height * 0.1,
//                 left: size.height * 0.1,
//                 right: size.height * 0.1),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       // margin: EdgeInsets.symmetric(horizontal: 40),
//                       height: 40,
//                       width: 40,
//                       decoration: BoxDecoration(
//                         color: Colors.red.shade700,
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: Icon(
//                         Icons.check,
//                         size: 30,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Container(
//                       color: Color(0xFF5C4D68),
//                       height: 3,
//                       width: 70,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ClinicalInfo()));
//                       },
//                       child: Container(
//                           // margin: EdgeInsets.symmetric(horizontal: 10),
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF0E4F94),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "2",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w700,
//                                 height: 0,
//                               ),
//                             ),
//                           )),
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Container(
//                       color: Color(0xFF5C4D68),
//                       height: 3,
//                       width: 70,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => SystemCondandEyeExam()));
//                       },
//                       child: Container(
//                           // margin: EdgeInsets.symmetric(horizontal: 10),
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF0E4F94),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "3",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w700,
//                                 height: 0,
//                               ),
//                             ),
//                           )),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Container(
//                       color: Color(0xFF5C4D68),
//                       height: 3,
//                       width: 70,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => VisionScreen()));
//                       },
//                       child: Container(
//                           // margin: EdgeInsets.symmetric(horizontal: 10),
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF0E4F94),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "4",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w700,
//                                 height: 0,
//                               ),
//                             ),
//                           )),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         color: Color(0xFF5C4D68),
//                         height: 3,
//                         width: 70,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ObstacleDetailsPage()));
//                       },
//                       child: Container(
//                           // margin: EdgeInsets.symmetric(horizontal: 20),
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF0E4F94),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "5",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w700,
//                                 height: 0,
//                               ),
//                             ),
//                           )),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Container(
//                       color: Color(0xFF5C4D68),
//                       height: 3,
//                       width: 70,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => PaymentPage()));
//                       },
//                       child: Container(
//                           // margin: EdgeInsets.symmetric(horizontal: 10),
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF0E4F94),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "6",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w700,
//                                 height: 0,
//                               ),
//                             ),
//                           )),
//                     ),
//                   ],
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   // mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Text(
//                       "Personal info",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.black45,
//                         fontSize: 12,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w600,
//                         height: 0,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       "Clinical & Spectale info",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w600,
//                         height: 0,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       "Systm Cond & Eye Exam",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w600,
//                         height: 0,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text(
//                       "Vision test",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w600,
//                         height: 0,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       "Obstacle details & Leading cause",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w600,
//                         height: 0,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 12,
//                     ),
//                     Text(
//                       "Payment",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w600,
//                         height: 0,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Patient ID',
//                             style: TextStyle(
//                               color: Color(0xFFE95000),
//                               fontSize: 20,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w600,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 20,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w600,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: 120,
//                       decoration: const ShapeDecoration(
//                         shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                             width: 3,
//                             strokeAlign: BorderSide.strokeAlignCenter,
//                             color: Color(0xFFE95000),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'First Name',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 267,
//                     ),
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Last Name',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           height: 40,
//                           width: 330,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: TextField(
//                             controller: firstnamecontroller,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                             autofocus: true,
//                             textInputAction: TextInputAction.next,
//                             decoration: InputDecoration(
//                               hintText: 'Enter Your First Name',
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                             ),
//                             onChanged: (value) {
//                               // formData.username = value;
//                             },
//                           ),
//                         ),
//                         SizedBox(
//                           width: 36,
//                         ),
//                         Container(
//                           height: 40,
//                           width: 330,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: TextField(
//                             controller: lastnamecontroller,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                             decoration: InputDecoration(
//                               hintText: "Enter Your Last Name",
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Landmark',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 260,
//                     ),
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Phone Number',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           height: 40,
//                           width: 300,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             // color: Colors.white,
//                           ),
//                           child: TextField(
//                             controller: landmarkcontroller,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                             decoration: InputDecoration(
//                               focusColor: Colors.black,
//                               hintText: "Enter Your Landmark",
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 51,
//                         ),
//                         Container(
//                           height: 40,
//                           width: 130,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: TextField(
//                             controller: phonenumbercontroller,
//                             keyboardType: TextInputType.number,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                             decoration: InputDecoration(
//                               hintText: "Number",
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Container(
//                           height: 40,
//                           width: 200,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: TextField(
//                             controller: phonenumbercontroller,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                             decoration: InputDecoration(
//                               focusColor: Colors.black,
//                               hintText: "",
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'ID Number',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 120,
//                     ),
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Monthly Income',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 75,
//                     ),
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Address',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           height: 40,
//                           width: 200,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             // color: Colors.white,
//                           ),
//                           child: TextField(
//                             controller: idnumbercontroller,
//                             keyboardType: TextInputType.number,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                             decoration: InputDecoration(
//                               hintText: "Enter Your ID Number",
//                               // hintStyle: TextStyle(
//                               //   fontSize: 16,
//                               //   color: Colors.black,
//                               // ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Container(
//                           height: 40,
//                           width: 200,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             // color: Colors.white
//                           ),
//                           child: TextField(
//                             controller: monthlyincomecontroller,
//                             keyboardType: TextInputType.number,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                             decoration: InputDecoration(
//                               hintText: "Monthly Income",
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Container(
//                           height: 40,
//                           width: 266,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             // color: Colors.white
//                           ),
//                           child: TextField(
//                             controller: addresscontroller,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                             decoration: InputDecoration(
//                               hintText: "Enter Your Number",
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                                 borderSide: BorderSide(color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Location',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 163,
//                     ),
//                     const Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Status',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 149,
//                     ),
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Gender',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Radio<int>(
//                           activeColor: Colors.blue,
//                           toggleable: true,
//                           value: 1,
//                           groupValue: selectedOption,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedOption = value;
//                             });
//                           },
//                         ),
//                         Text(
//                           "Plains",
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         SizedBox(
//                           width: 140,
//                         ),
//                         Radio<int>(
//                           activeColor: Colors.blue,
//                           toggleable: true,
//                           value: 2,
//                           groupValue: selectedOption,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedOption = value;
//                             });
//                           },
//                         ),
//                         Text(
//                           "Examined",
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         SizedBox(
//                           width: 100,
//                         ),
//                         Radio<int>(
//                           activeColor: Colors.blue,
//                           toggleable: true,
//                           value: 3,
//                           groupValue: selectedOption,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedOption = value;
//                             });
//                           },
//                         ),
//                         Text(
//                           "Male",
//                           style: TextStyle(color: Colors.black),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Row(
//                       children: [
//                         Radio<int>(
//                           activeColor: Colors.blue,
//                           toggleable: true,
//                           value: 4,
//                           groupValue: selectedOption,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedOption = value;
//                             });
//                           },
//                         ),
//                         Text(
//                           "Hilly Region",
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         SizedBox(
//                           width: 104,
//                         ),
//                         Radio<int>(
//                           activeColor: Colors.blue,
//                           toggleable: true,
//                           value: 5,
//                           groupValue: selectedOption,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedOption = value;
//                             });
//                           },
//                         ),
//                         Text(
//                           "Not Available After 2 Hrs",
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Radio<int>(
//                           activeColor: Colors.blue,
//                           toggleable: true,
//                           value: 6,
//                           groupValue: selectedOption,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedOption = value;
//                             });
//                           },
//                         ),
//                         Text(
//                           "Female",
//                           style: TextStyle(color: Colors.black),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Row(
//                       children: [
//                         Radio<int>(
//                           activeColor: Colors.blue,
//                           toggleable: true,
//                           value: 7,
//                           groupValue: selectedOption,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedOption = value;
//                             });
//                           },
//                         ),
//                         Text(
//                           "Mountains",
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         SizedBox(
//                           width: 112,
//                         ),
//                         Radio<int>(
//                           activeColor: Colors.blue,
//                           toggleable: true,
//                           value: 8,
//                           groupValue: selectedOption,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedOption = value;
//                             });
//                           },
//                         ),
//                         Text(
//                           "Refused",
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         SizedBox(
//                           width: 111,
//                         ),
//                         Radio<int>(
//                           activeColor: Colors.blue,
//                           toggleable: true,
//                           value: 9,
//                           groupValue: selectedOption,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedOption = value;
//                             });
//                           },
//                         ),
//                         Text(
//                           "Prefered Not To Say",
//                           style: TextStyle(color: Colors.black),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Occupation',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 300,
//                     ),
//                     const Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Education',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: '*',
//                             style: TextStyle(
//                               color: Color(0xFFDA0000),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 10,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Unemployed",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     SizedBox(
//                       width: 275,
//                     ),
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 11,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "No Education",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 12,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Teacher/Clerical job/professional",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     SizedBox(
//                       width: 139,
//                     ),
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 13,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Primary School(Class 1-5)",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 14,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Driver",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     SizedBox(
//                       width: 317.5,
//                     ),
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 15,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "High School",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 16,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Shopkeeper/Vendor/Bussiness",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     SizedBox(
//                       width: 155,
//                     ),
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 17,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Intermediate Class",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 18,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Laboure/Agriculture",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     SizedBox(
//                       width: 226,
//                     ),
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 19,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "College (undergraduate)",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 20,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Laboure/Other",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     SizedBox(
//                       width: 261.5,
//                     ),
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 21,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Advance Studies(PG etc)",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 22,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Skilled worker(ex Goldsmith,Carpnter)",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     SizedBox(
//                       width: 111,
//                     ),
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 23,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Other (Specify)",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 24,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Home Duties Only",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 25,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Student",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Radio<int>(
//                       activeColor: Colors.blue,
//                       toggleable: true,
//                       value: 26,
//                       groupValue: selectedOption,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedOption = value;
//                         });
//                       },
//                     ),
//                     Text(
//                       "Other (Specify)",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Center(
//                     child: Padding(
//                   padding: const EdgeInsets.all(18.0),
//                   child: Container(
//                     // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
//                     child: MaterialButton(
//                       child: isLoading
//                           ? Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 CircularProgressIndicator(
//                                   color: Colors.white,
//                                   strokeWidth: 2,
//                                 ),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 Text("Please wait.....")
//                               ],
//                             )
//                           : Text(
//                               'Next',
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 18),
//                             ),
//                       onPressed: () async {
//                         setState(() {
//                           isLoading = true;
//                         });
//                         await Future.delayed(Duration(seconds: 3), () {
//                           setState(() {
//                             isLoading = false;

//                             //  Navigator.of(context).push(MaterialPageRoute(
//                             // builder: (context) => SelectPage()));
//                           });
//                           // void showdData(int? id) async {
//                           //   if (id != null) {
//                           //     final existingData = _allData
//                           //         .firstWhere((element) => element['id'] == id);
//                           //     firstnamecontroller.text =
//                           //         existingData['firstname'];
//                           //     lastnamecontroller.text =
//                           //         existingData['lastname'];
//                           //     landmarkcontroller.text =
//                           //         existingData['landmark'];
//                           //     phonenumbercontroller.text =
//                           //         existingData['phonenumber'];
//                           //     idnumbercontroller.text =
//                           //         existingData['idnumber'];
//                           //     monthlyincomecontroller.text =
//                           //         existingData['monthlyincome'];
//                           //     addresscontroller.text = existingData['address'];
//                           //   }
//                           // }
//                         });
//                       },
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5)),
//                       color: Color(0xFF0E4F94),
//                     ),

//                     width: 200,

//                     height: 40,
//                   ),
//                 )),
//               ],
//             )),
//       ),
//     );
//   }
// }
