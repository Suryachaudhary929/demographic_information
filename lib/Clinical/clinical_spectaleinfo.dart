import 'package:demographic_information/Clinical/clinical_model.dart';
import 'package:demographic_information/Clinical/db_helper.dart';
import 'package:demographic_information/Clinical/displaypage.dart';
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
  // const ClinicalInfo({super.key});
  final Item? item;

  ClinicalInfo({this.item});

  @override
  State<ClinicalInfo> createState() => _ClinicalInfoState();
}

class _ClinicalInfoState extends State<ClinicalInfo> {
  bool isLoading = false;
  int? selectedOption = 1;
  final TextEditingController _otherController = TextEditingController();
  final TextEditingController _other1Controller = TextEditingController();
  final TextEditingController _other2Controller = TextEditingController();
  final TextEditingController _other3Controller = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _amount1Controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final DatabaseHelper dbHelper = DatabaseHelper();
     @override
  void initState() {
    super.initState();
    if(widget.item != null){
      _amountController.text = widget.item!.amount;
      _amount1Controller.text = widget.item!.amount1;
     
    }
 }
  String radioButton = "";
  String radioButton1 = "";
  String radioButton2 = "";
  String radioButton3 = "";
  String radioButton4 = "";
  String radioButton5 = "";
  String radioButton6 = "";
  String radioButton7 = "";
  void _saveData() async {
    if (widget.item == null) {
      final newItem = Item(
          radiovalue: radioButton,
          radiovalue1: radioButton1,
          radiovalue2: radioButton2,
          radiovalue3: radioButton3,
          radiovalue4: radioButton4,
          radiovalue5: radioButton5,
          radiovalue6: radioButton6,
          radiovalue7: radioButton7,
          amount: _amountController.text,
          amount1: _amount1Controller.text,
          other: _otherController.text,
          other1: _other1Controller.text,
          other2: _other2Controller.text,
          other3: _other2Controller.text,
          dateandtime: DateTime.now().toString());
      await dbHelper.insertItem(newItem);
    } else {
      final newItem = Item(
          id: widget.item!.id!,
          radiovalue: radioButton,
          radiovalue1: radioButton1,
          radiovalue2: radioButton2,
          radiovalue3: radioButton3,
          radiovalue4: radioButton4,
          radiovalue5: radioButton5,
          radiovalue6: radioButton6,
          radiovalue7: radioButton7,
          amount: _amountController.text,
          amount1: _amount1Controller.text,
          other: _otherController.text,
          other1: _other1Controller.text,
          other2: _other2Controller.text,
          other3: _other2Controller.text,
          dateandtime: DateTime.now().toString());
      await dbHelper.updateItem(newItem);
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ClinicalDetails()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1400,
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
        body: Form(
          key: _formKey,
          child: Scrollbar(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                // bottom: size.height * 0.1,
                top: 5,

                // right: size.height * 0.1
              ),
              child: Column(
                children: [
                    Padding(
                padding: const EdgeInsets.only(left:570),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ClinicalDetails()));
                  },
                  child: Container(
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(
                      color:  Colors.indigo[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text(
                            "Clinical & Spectale details",
                            style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w300),                          ),
                        ),
                      
                        Icon(
                          Icons.arrow_circle_right,
                          color:Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height:7,),
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'None',
                              groupValue: radioButton,
                              onChanged: (value) {
                                setState(() {
                                  radioButton = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'None',
                              groupValue: radioButton1,
                              onChanged: (value) {
                                setState(() {
                                  radioButton1 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Blurred distance vision',
                              groupValue: radioButton,
                              onChanged: (value) {
                                setState(() {
                                  radioButton = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Blurred distance vision',
                              groupValue: radioButton1,
                              onChanged: (value) {
                                setState(() {
                                  radioButton1 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Blurred near vision',
                              groupValue: radioButton,
                              onChanged: (value) {
                                setState(() {
                                  radioButton = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Blurred near vision',
                              groupValue: radioButton1,
                              onChanged: (value) {
                                setState(() {
                                  radioButton1 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Other Specify',
                              groupValue: radioButton,
                              onChanged: (value) {
                                setState(() {
                                  radioButton = value.toString();
                                });
                              },
                            ),
                            Text('Other Specify'),
                            // Container(
                            //   height: 40,
                            //   width: 300,
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(5),
                            //   ),
                            //   child: TextFormField(
                            //     controller: _otherController,
                            //     cursorColor: Colors.black,
                            //     cursorHeight: 25,
                            //     cursorWidth: 2,
                            //     style: TextStyle(
                            //       color: Colors.black,
                            //       fontSize: 14,
                            //       fontFamily: 'Inter',
                            //       fontWeight: FontWeight.w400,
                            //       height: 3.8,
                            //     ),
                            //     autofocus: true,
                            //     textInputAction: TextInputAction.next,
                            //     decoration: InputDecoration(
                            //       hintText: 'Other',
                            //       enabledBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(5),
                            //         borderSide: BorderSide(color: Colors.black),
                            //       ),
                            //       focusedBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(5),
                            //         borderSide: BorderSide(color: Colors.black),
                            //       ),
                            //     ),
                            //     onChanged: (value) {
                            //       // formData.username = value;
                            //     },
                            //   ),
                            // ),
                            SizedBox(
                              width: 250,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Other Specify',
                              groupValue: radioButton1,
                              onChanged: (value) {
                                setState(() {
                                  radioButton1 = value.toString();
                                });
                              },
                            ),
                             Text('Other Specify'),
                            // Container(
                            //   height: 40,
                            //   width: 300,
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(5),
                            //   ),
                            //   child: TextField(
                            //     controller: _other1Controller,
                            //     cursorColor: Colors.black,
                            //     cursorHeight: 25,
                            //     cursorWidth: 2,
                            //     style: TextStyle(
                            //       color: Colors.black,
                            //       fontSize: 14,
                            //       fontFamily: 'Inter',
                            //       fontWeight: FontWeight.w400,
                            //       height: 3.8,
                            //     ),
                            //     autofocus: true,
                            //     textInputAction: TextInputAction.next,
                            //     decoration: InputDecoration(
                            //       hintText: 'Other',
                            //       enabledBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(5),
                            //         borderSide: BorderSide(color: Colors.black),
                            //       ),
                            //       focusedBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(5),
                            //         borderSide: BorderSide(color: Colors.black),
                            //       ),
                            //     ),
                            //     onChanged: (value) {
                            //       // formData.username = value;
                            //     },
                            //   ),
                            // ),
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'No',
                              groupValue: radioButton2,
                              onChanged: (value) {
                                setState(() {
                                  radioButton2 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'S-V Distance',
                              groupValue: radioButton3,
                              onChanged: (value) {
                                setState(() {
                                  radioButton3 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Eye Care Center',
                              groupValue: radioButton4,
                              onChanged: (value) {
                                setState(() {
                                  radioButton4 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Yes',
                              groupValue: radioButton2,
                              onChanged: (value) {
                                setState(() {
                                  radioButton2 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'S-V Near',
                              groupValue: radioButton3,
                              onChanged: (value) {
                                setState(() {
                                  radioButton3 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Local Optical shop',
                              groupValue: radioButton4,
                              onChanged: (value) {
                                setState(() {
                                  radioButton4 = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Bifocals',
                                groupValue: radioButton3,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton3 = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Eye Camp',
                                groupValue: radioButton4,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton4 = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'PAL',
                                groupValue: radioButton3,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton3 = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Private eye hospital',
                                groupValue: radioButton4,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton4 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Private eye Clinic',
                              groupValue: radioButton4,
                              onChanged: (value) {
                                setState(() {
                                  radioButton4 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Private eye Clinic",
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 400),
                          child: Row(children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Secondary eye Clinic',
                              groupValue: radioButton4,
                              onChanged: (value) {
                                setState(() {
                                  radioButton4 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Secondary eye Clinic",
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Tertiary eye hospital',
                              groupValue: radioButton4,
                              onChanged: (value) {
                                setState(() {
                                  radioButton4 = value.toString();
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
                                child: TextFormField(
                                    validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                  controller: _amountController,
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  cursorWidth: 2,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Amount",
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
                              SizedBox(
                                width: 238,
                              ),
                              Row(
                                verticalDirection: VerticalDirection.up,
                                children: [
                                  Radio<String>(
                                    activeColor: Colors.blue,
                                    toggleable: true,
                                    value: 'Other Specify',
                                    groupValue: radioButton4,
                                    onChanged: (value) {
                                      setState(() {
                                        radioButton4 = value.toString();
                                      });
                                    },
                                  ),
                                  Text('Other Specify'),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       horizontal: 10),
                                  //   child: Container(
                                  //     height: 40,
                                  //     width: 290,
                                  //     decoration: BoxDecoration(
                                  //       borderRadius: BorderRadius.circular(5),
                                  //     ),
                                  //     child: TextFormField(
                                      
                                  //       controller: _other2Controller,
                                  //       cursorColor: Colors.black,
                                  //       cursorHeight: 25,
                                  //       cursorWidth: 2,
                                  //       keyboardType: TextInputType.text,
                                  //       style: TextStyle(
                                  //         color: Colors.black,
                                  //         fontSize: 14,
                                  //         fontFamily: 'Inter',
                                  //         fontWeight: FontWeight.w400,
                                  //         height: 3.8,
                                  //       ),
                                  //       decoration: InputDecoration(
                                  //         hintText: "Other",
                                  //         enabledBorder: OutlineInputBorder(
                                  //           borderRadius:
                                  //               BorderRadius.circular(5),
                                  //           borderSide:
                                  //               BorderSide(color: Colors.black),
                                  //         ),
                                  //         focusedBorder: OutlineInputBorder(
                                  //           borderRadius:
                                  //               BorderRadius.circular(5),
                                  //           borderSide:
                                  //               BorderSide(color: Colors.black),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'No',
                              groupValue: radioButton5,
                              onChanged: (value) {
                                setState(() {
                                  radioButton5 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'S-V Distance',
                              groupValue: radioButton6,
                              onChanged: (value) {
                                setState(() {
                                  radioButton6 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'No glasses',
                              groupValue: radioButton7,
                              onChanged: (value) {
                                setState(() {
                                  radioButton7 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Used glass before',
                              groupValue: radioButton5,
                              onChanged: (value) {
                                setState(() {
                                  radioButton5 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'S-V Near',
                              groupValue: radioButton6,
                              onChanged: (value) {
                                setState(() {
                                  radioButton6 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'They are uncomfortable',
                              groupValue: radioButton7,
                              onChanged: (value) {
                                setState(() {
                                  radioButton7 = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Bifocals',
                                groupValue: radioButton6,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton6 = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'They are scratched,broken',
                                groupValue: radioButton7,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton7 = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'PAL',
                                groupValue: radioButton6,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton6 = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'I lost them & have no money to buy',
                                groupValue: radioButton7,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton7 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Can see clearly without even glasses',
                              groupValue: radioButton7,
                              onChanged: (value) {
                                setState(() {
                                  radioButton7 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Used for headache only',
                              groupValue: radioButton7,
                              onChanged: (value) {
                                setState(() {
                                  radioButton7 = value.toString();
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
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Tertiary eye hospital',
                              groupValue: radioButton7,
                              onChanged: (value) {
                                setState(() {
                                  radioButton7 = value.toString();
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
                                child: TextFormField(
                                  keyboardType:
                                      TextInputType.numberWithOptions(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  controller: _amount1Controller,
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  cursorWidth: 2,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                  autofocus: true,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
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
                                  Radio<String>(
                                    activeColor: Colors.blue,
                                    toggleable: true,
                                    value: 'Other Specify',
                                    groupValue: radioButton7,
                                    onChanged: (value) {
                                      setState(() {
                                        radioButton7 = value.toString();
                                      });
                                    },
                                  ),
                                  Text("Other Specify")
                                  // Container(
                                  //   height: 40,
                                  //   width: 290,
                                  //   decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(5),
                                  //   ),
                                  //   child: TextFormField(
                                  //     controller: _other3Controller,
                                  //     cursorColor: Colors.black,
                                  //     cursorHeight: 25,
                                  //     cursorWidth: 2,
                                  //     style: TextStyle(
                                  //       color: Colors.black,
                                  //       fontSize: 14,
                                  //       fontFamily: 'Inter',
                                  //       fontWeight: FontWeight.w400,
                                  //       height: 3.8,
                                  //     ),
                                  //     autofocus: true,
                                  //     textInputAction: TextInputAction.next,
                                  //     decoration: InputDecoration(
                                  //       hintText: 'Other',
                                  //       enabledBorder: OutlineInputBorder(
                                  //         borderRadius:
                                  //             BorderRadius.circular(5),
                                  //         borderSide:
                                  //             BorderSide(color: Colors.black),
                                  //       ),
                                  //       focusedBorder: OutlineInputBorder(
                                  //         borderRadius:
                                  //             BorderRadius.circular(5),
                                  //         borderSide:
                                  //             BorderSide(color: Colors.black),
                                  //       ),
                                  //     ),
                                  //     onChanged: (value) {
                                  //       // formData.username = value;
                                  //     },
                                  //   ),
                                  // )
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
                                  Text(
                                    "Please wait.....",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              )
                            :  Text(
                                'Next',
                               style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w300,color: Colors.white),
                              ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              isLoading = true;
                            });
                            Future.delayed(Duration(seconds: 3), () {
                              setState(() {
                                isLoading = false;
                                _saveData();
                              ScaffoldMessenger.of(context)
                                    .showSnackBar( SnackBar(
                                      elevation: 5,
                                        backgroundColor: Colors.green,
                                        shape: RoundedRectangleBorder(),
                                        content: Text(
                                          "Data Saved",
                                        style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w300,color: Colors.white),
                                          
                                        )));
                              });
                            });
                          }
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: Color.fromARGB(255, 2, 53, 107),
                      ),

                      width: 200,

                      height: 50,
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
