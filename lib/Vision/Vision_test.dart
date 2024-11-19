import 'dart:ui';
import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/Obstacle%20Details/obstacledetails.dart';
import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
import 'package:demographic_information/Vision/db.dart';
import 'package:demographic_information/Vision/details_model.dart';
import 'package:demographic_information/Vision/detailspage.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class VisionScreen extends StatefulWidget {
  // const VisionScreen({super.key});
  final Item? item;

  VisionScreen({this.item});

  @override
  State<VisionScreen> createState() => _VisionScreenState();
}

class _VisionScreenState extends State<VisionScreen> {
  bool isLoading = false;

  final TextEditingController aideddistance1Controller =
      TextEditingController();
  final TextEditingController aideddistance2Controller =
      TextEditingController();
  final TextEditingController aideddistance3Controller =
      TextEditingController();
  final TextEditingController pinhole1Controller = TextEditingController();
  final TextEditingController pinhole2Controller = TextEditingController();
  final TextEditingController pinhole3Controller = TextEditingController();
  final TextEditingController unaided1Controller = TextEditingController();
  final TextEditingController unaided2Controller = TextEditingController();
  final TextEditingController unaided3Controller = TextEditingController();
  final TextEditingController unaidednearController = TextEditingController();
  final TextEditingController aidednearController = TextEditingController();
  final TextEditingController addpowerController = TextEditingController();
  final TextEditingController nearvisionController = TextEditingController();
  final TextEditingController fp1Controller = TextEditingController();
  final TextEditingController fp2Controller = TextEditingController();
  final TextEditingController fp3Controller = TextEditingController();
  final TextEditingController sub1Controller = TextEditingController();
  final TextEditingController sub2Controller = TextEditingController();
  final TextEditingController sub3Controller = TextEditingController();
  final TextEditingController bcva1Controller = TextEditingController();
  final TextEditingController bcva2Controller = TextEditingController();
  final TextEditingController bcva3Controller = TextEditingController();
  final TextEditingController otherController = TextEditingController();
  final TextEditingController other1Controller = TextEditingController();
  final DatabaseHelper _dbHelper = DatabaseHelper();
  final _formKey = GlobalKey<FormState>();
  String _radioValue = '';

  @override
  void dispose() {
    aideddistance1Controller.dispose();
    aideddistance2Controller.dispose();
    aideddistance3Controller.dispose();
    pinhole1Controller.dispose();
    pinhole2Controller.dispose();
    pinhole3Controller.dispose();
    unaided1Controller.dispose();
    unaided2Controller.dispose();
    unaided3Controller.dispose();
    unaidednearController.dispose();
    aidednearController.dispose();
    addpowerController.dispose();
    nearvisionController.dispose();
    fp1Controller.dispose();
    fp2Controller.dispose();
    fp3Controller.dispose();
    sub1Controller.dispose();
    sub2Controller.dispose();
    sub3Controller.dispose();
    bcva1Controller.dispose();
    bcva2Controller.dispose();
    bcva3Controller.dispose();
    otherController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.item != null) {
      aideddistance1Controller.text = widget.item!.aided1;
      aideddistance2Controller.text = widget.item!.aided2;
      aideddistance3Controller.text = widget.item!.aided3;
      pinhole1Controller.text = widget.item!.pinhole1;
      pinhole2Controller.text = widget.item!.pinhole2;
      pinhole3Controller.text = widget.item!.pinhole3;
      unaided1Controller.text = widget.item!.unaided1;
      unaided2Controller.text = widget.item!.unaided2;
      unaided3Controller.text = widget.item!.unaided3;
      unaidednearController.text = widget.item!.unaidednear;
      aidednearController.text = widget.item!.aidednear;
      addpowerController.text = widget.item!.addpower;
      nearvisionController.text = widget.item!.nearvision;
      fp1Controller.text = widget.item!.fp1;
      fp2Controller.text = widget.item!.fp2;
      fp3Controller.text = widget.item!.fp3;
      sub1Controller.text = widget.item!.sub1;
      sub2Controller.text = widget.item!.sub2;
      sub3Controller.text = widget.item!.sub3;
      bcva1Controller.text = widget.item!.bcva1;
      bcva2Controller.text = widget.item!.bcva2;
      bcva3Controller.text = widget.item!.bcva3;
      otherController.text = widget.item!.other;
    }
  }

  void _saveItem() async {
    if (widget.item == null) {
      final newItem = Item(
          radiovalue: _radioValue,
          aided1: aideddistance1Controller.text,
          aided2: aideddistance2Controller.text,
          aided3: aideddistance3Controller.text,
          pinhole1: pinhole1Controller.text,
          pinhole2: pinhole2Controller.text,
          pinhole3: pinhole3Controller.text,
          unaided1: unaided1Controller.text,
          unaided2: unaided2Controller.text,
          unaided3: unaided3Controller.text,
          unaidednear: unaidednearController.text,
          aidednear: aidednearController.text,
          addpower: addpowerController.text,
          nearvision: nearvisionController.text,
          fp1: fp1Controller.text,
          fp2: fp2Controller.text,
          fp3: fp3Controller.text,
          sub1: sub1Controller.text,
          sub2: sub2Controller.text,
          sub3: sub3Controller.text,
          bcva1: bcva1Controller.text,
          bcva2: bcva2Controller.text,
          bcva3: bcva3Controller.text,
          other: otherController.text,
          dateandtime: DateTime.now().toString());
      await _dbHelper.insertItem(newItem);
    } else {
      final newItem = Item(
          id: widget.item!.id!,
          radiovalue: _radioValue,
          aided1: aideddistance1Controller.text,
          aided2: aideddistance2Controller.text,
          aided3: aideddistance3Controller.text,
          pinhole1: pinhole1Controller.text,
          pinhole2: pinhole2Controller.text,
          pinhole3: pinhole3Controller.text,
          unaided1: unaided1Controller.text,
          unaided2: unaided2Controller.text,
          unaided3: unaided3Controller.text,
          unaidednear: unaidednearController.text,
          aidednear: aidednearController.text,
          addpower: addpowerController.text,
          nearvision: nearvisionController.text,
          fp1: fp1Controller.text,
          fp2: fp2Controller.text,
          fp3: fp3Controller.text,
          sub1: sub1Controller.text,
          sub2: sub2Controller.text,
          sub3: sub3Controller.text,
          bcva1: bcva1Controller.text,
          bcva2: bcva2Controller.text,
          bcva3: bcva3Controller.text,
          other: otherController.text,
          dateandtime: DateTime.now().toString());
      await _dbHelper.updateItem(newItem);
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ItemListPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Container(
        constraints: const BoxConstraints(
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
                                child: const Center(
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
          body: Form(
            key:_formKey,
            child: Scrollbar(
              scrollbarOrientation: ScrollbarOrientation.left,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  // bottom: size.height * 0.1,
                  top: 5,
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ItemListPage()));
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 135,
                                    decoration: BoxDecoration(
                                      color: Colors.indigo[800],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Text(
                                            "Vision test details",
                                            style:TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.w300) 
                                          ),
                                        ),
                                       
                                        Icon(
                                          Icons.arrow_circle_right,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
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
                                        padding:
                                            EdgeInsets.only(left: 10, top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '*',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFDA0000),
                                                        fontSize: 14,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w300,
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
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Value is required';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller:
                                                      aideddistance1Controller,
                                                  style: const TextStyle(
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
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color: Colors.black),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Value is required';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller:
                                                      aideddistance2Controller,
                                                  style: const TextStyle(
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
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color: Colors.black),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Value is required';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller:
                                                      aideddistance3Controller,
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
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color: Colors.black),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Value is required';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller: pinhole1Controller,
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
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color: Colors.black),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Value is required';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller: pinhole2Controller,
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
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color: Colors.black),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Value is required';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller: pinhole3Controller,
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
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color: Colors.black),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Value is required';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller: unaided1Controller,
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
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color: Colors.black),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Value is required';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller: unaided2Controller,
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
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color: Colors.black),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Value is required';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller: unaided3Controller,
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
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color: Colors.black),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 20),
                                        child: Row(
                                          children: [
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'Unaided-Near(Binocular)',
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
                                              child: TextFormField(
                                                validator: (value) {
                                                  if(value!.isEmpty){
                                                    return "Value is required";
                                                  }else{
                                                    return null;
                                                  }
                                                },
                                                controller: unaidednearController,
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
                                              child: TextFormField(
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Value is required';
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                                controller: aidednearController,
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
                                                    text:
                                                        'Add power used (if<N 6)',
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
                                              child: TextFormField(
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Value is required';
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                                controller: addpowerController,
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
                                                    text:
                                                        'Near vision with addition',
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
                                              child: TextFormField(
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Value is required';
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                                controller: nearvisionController,
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
                                        offset: const Offset(0, 1),
                                        blurRadius: 4,
                                        spreadRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      const Padding(
                                        padding: const EdgeInsets.only(
                                            left: 270, top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                            child: TextFormField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Value is required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              controller: fp1Controller,
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
                                            child: TextFormField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Value is required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: fp2Controller,
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
                                            margin: EdgeInsets.only(right: 7),
                                            color: Colors.white,
                                            height: 50,
                                            width: 70,
                                            child: TextFormField(
                                              validator: (value){
                                                if(value!.isEmpty){
                                                  return "Value is required";
                                                }else{
                                                  return null;
                                                }
                                              },
                                              controller: fp3Controller,
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
                                          const SizedBox(
                                            width: 167,
                                          ),
                                          Container(
                                            color: Colors.white,
                                            height: 50,
                                            width: 70,
                                            child: TextFormField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Value is required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              controller: sub1Controller,
                                              style: const TextStyle(
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
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
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
                                            child: TextFormField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Value is required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              controller: sub2Controller,
                                              style: const TextStyle(
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
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(right: 7),
                                            color: Colors.white,
                                            height: 50,
                                            width: 70,
                                            child: TextFormField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Value is required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              controller: sub3Controller,
                                              style: const TextStyle(
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
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
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
                                            child: TextFormField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Value is required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              controller: bcva1Controller,
                                              style: const TextStyle(
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
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
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
                                            child: TextFormField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Value is required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              controller: bcva2Controller,
                                              style: const TextStyle(
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
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(right: 7),
                                            color: Colors.white,
                                            height: 50,
                                            width: 70,
                                            child: TextFormField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Value is required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              controller: bcva3Controller,
                                              style: const TextStyle(
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
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
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
                                  height: 325,
                                  width: 780,
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
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
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
                                        children: [
                                          Radio<String>(
                                            activeColor: Colors.blue,
                                            toggleable: true,
                                            value: 'Normal Lens',
                                            groupValue: _radioValue,
                                            onChanged: (value) {
                                              setState(() {
                                                _radioValue = value.toString();
                                              });
                                            },
                                          ),
                                          const Text(
                                            "Normal lens",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: 'Cataract',
                                              groupValue: _radioValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _radioValue = value.toString();
                                                });
                                              },
                                            ),
                                            const Text(
                                              "Cataract",
                                              style:
                                                  TextStyle(color: Colors.black),
                                            ),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: 'Aphakia',
                                              groupValue: _radioValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _radioValue = value.toString();
                                                });
                                              },
                                            ),
                                            const Text(
                                              "Aphakia",
                                              style:
                                                  TextStyle(color: Colors.black),
                                            ),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: 'Pseudophakia',
                                              groupValue: _radioValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _radioValue = value.toString();
                                                });
                                              },
                                            ),
                                            const Text(
                                              "Pseudophakia",
                                              style:
                                                  TextStyle(color: Colors.black),
                                            ),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: 'Pseudophakia with PCO',
                                              groupValue: _radioValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _radioValue = value.toString();
                                                });
                                              },
                                            ),
                                            const Text(
                                              "Pseudophakia with PCO",
                                              style:
                                                  TextStyle(color: Colors.black),
                                            ),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: 'other specify',
                                              groupValue: _radioValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _radioValue = value.toString();
                                                });
                                              },
                                            ),
                                            const Text(
                                              "Other Specify",
                                              style:
                                                  TextStyle(color: Colors.black),
                                            ),
                                          ]),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
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
                                      offset: const Offset(0, 1),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                    ),
                                  ],
                                ),
                                child: DataTable(
                                    headingRowColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 243, 239, 239)),
                                    headingTextStyle: const TextStyle(
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
                                    rows: const [
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15),
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
                            padding: EdgeInsets.only(right: 105),
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
                                  offset: const Offset(0, 1),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
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
                      padding: const EdgeInsets.only(
                        top: 1340,
                      ),
                      child: Container(
                        // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                        child: MaterialButton(
                          child: isLoading
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text("Please wait.....",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                  ],
                                )
                              : Text('Next',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white)),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                isLoading = true;
                                                         });
                              Future.delayed(const Duration(seconds: 3), () {
                                setState(() {
                                  isLoading = false;
                                     _saveItem();
            
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ItemListPage()));
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        elevation: 5,
                                        backgroundColor: Colors.green,
                                        shape: RoundedRectangleBorder(),
                                        content: Text("Data Saved",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.white))));
            
                                });
                              });
                            }
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
        ));
  }
}
