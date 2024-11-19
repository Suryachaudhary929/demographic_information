import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/Obstacle%20Details/display_page.dart';
import 'package:demographic_information/Obstacle%20Details/obstacle_db.dart';
import 'package:demographic_information/Obstacle%20Details/obstacle_models.dart';
import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
import 'package:demographic_information/Vision/Vision_test.dart';
import 'package:flutter/material.dart';

class ObstacleDetailsPage extends StatefulWidget {
  //  const ObstacleDetailsPage({super.key});
  final Item? item;

  ObstacleDetailsPage({this.item});

  @override
  State<ObstacleDetailsPage> createState() => _ObstacleDetailsPageState();
}

class _ObstacleDetailsPageState extends State<ObstacleDetailsPage> {
  final TextEditingController payController = TextEditingController();
  final TextEditingController pay1Controller = TextEditingController();
  final TextEditingController otherController = TextEditingController();
  final TextEditingController other1Controller = TextEditingController();
  final TextEditingController other2Controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String radioValue = "";
  String Button = "";
  String radioButton = "";
  bool isLoading = false;
  final DatabaseHelper dbHelper = DatabaseHelper();
     @override
  void initState() {
    super.initState();
    if(widget.item != null){
      otherController.text = widget.item!.other;
      // other1Controller.text = widget.item!.other1;
      payController.text = widget.item!.pay;
      pay1Controller.text = widget.item!.pay1;
   
    }
 }

  // List<Item> items = [];
  void _saveData() async {
    if (widget.item == null) {
      final newItem = Item(
          radiovalue: radioValue,
          radiovalue1: Button,
          radiovalue2: radioButton,
          pay: payController.text,
          pay1: pay1Controller.text,
          other: otherController.text,
          other1: other1Controller.text,
          other2: other2Controller.text,
          dateandtime: DateTime.now().toString());
      await dbHelper.insertItem(newItem);
    } else {
      final newItem = Item(
          id: widget.item!.id!,
          radiovalue: radioValue,
          radiovalue1: Button,
          radiovalue2: radioButton,
          pay: payController.text,
          pay1: pay1Controller.text,
          other: otherController.text,
          other1: other1Controller.text,
          other2: other2Controller.text,
          dateandtime: DateTime.now().toString());
      await dbHelper.updateItem(newItem);
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DisplayPage()),
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
        body: Form(
          key: _formKey,
          child: Scrollbar(
            scrollbarOrientation: ScrollbarOrientation.left,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                // bottom: size.height * 0.1,
                top: 5,
                left: 30,
                // right: size.height * 0.1
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     Padding(
                padding: const EdgeInsets.only(left:555),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>DisplayPage()));
                  },
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      color:  Colors.indigo[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            "Obstacle & Payment details",
                            style:TextStyle(fontSize:12,color: Colors.white,fontWeight: FontWeight.w300)                      ),
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
              SizedBox(height: 10,),
                  Container(
                    height: 580,
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value:
                                      'Not applicable,vision is normal in both eyes',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'No action required',
                                  groupValue: Button,
                                  onChanged: (value) {
                                    setState(() {
                                      Button = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Unaware of the problem',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Refer to clinic',
                                  groupValue: Button,
                                  onChanged: (value) {
                                    setState(() {
                                      Button = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Aware of the problem,but can manage',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Near vision glasses',
                                  groupValue: Button,
                                  onChanged: (value) {
                                    setState(() {
                                      Button = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'One eye adequate vision',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Continue same glasses',
                                  groupValue: Button,
                                  onChanged: (value) {
                                    setState(() {
                                      Button = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Cannot afford consolation fees',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: "",
                                  groupValue: Button,
                                  onChanged: (value) {
                                    setState(() {
                                      Button = value.toString();
                                    });
                                  },
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 40,
                                  width: 290,
                                  child: TextFormField(
                                    controller: otherController,
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
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value:
                                      'Cannot afford cost of spectacle/surgery',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Service not available or very far',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'No one to accompany',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value:
                                      'No time availability/other priorities',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Other health reason',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
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
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Other Specify',
                                  groupValue: radioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValue = value.toString();
                                    });
                                  },
                                ),
                                   Text(
                                  "Other Specify",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),

                                // Container(
                                //   color: Colors.white,
                                //   height: 40,
                                //   width: 300,
                                //   child: TextFormField(
                                //     controller: other1Controller,
                                //     style: TextStyle(
                                //       color: Colors.black,
                                //       fontSize: 13,
                                //       fontFamily: 'Inter',
                                //       fontWeight: FontWeight.w500,
                                //       height: 0,
                                //     ),
                                //     cursorColor: Colors.black,
                                //     cursorWidth: 2,
                                //     decoration: InputDecoration(
                                //       isDense: true,
                                //       // isCollapsed: true,

                                //       hintText: 'Other reason',
                                //       enabledBorder: OutlineInputBorder(
                                //         borderRadius: BorderRadius.circular(5),
                                //         borderSide:
                                //             BorderSide(color: Colors.black),
                                //       ),
                                //       focusedBorder: OutlineInputBorder(
                                //         borderRadius: BorderRadius.circular(5),
                                //         borderSide:
                                //             BorderSide(color: Colors.black),
                                //       ),
                                //     ),
                                //   ),
                                // ),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 20),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
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
                              SizedBox(
                                width: 300,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Willingness to pay',
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'No Visual impairment',
                                groupValue: radioButton,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "No Visual impairment",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 225,
                              ),
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Refractive error',
                                groupValue: radioButton,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Refractive error",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 265,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Container(
                                  color: Colors.white,
                                  height: 40,
                                  width: 318,
                                  child: TextFormField(
                                    keyboardType:
                                        TextInputType.numberWithOptions(),
                                    controller: payController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your amount';
                                      }
                                      return null;
                                    },
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Uncorrected aphakia',
                                groupValue: radioButton,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Uncorrected aphakia",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 225,
                              ),
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Cataract',
                                groupValue: radioButton,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Cataract",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 305,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Container(
                                  color: Colors.white,
                                  height: 40,
                                  width: 320,
                                  child: TextFormField(
                                    keyboardType: TextInputType.numberWithOptions(),
                                    controller: pay1Controller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your amount';
                                      }
                                      return null;
                                    },
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Surgery related complications',
                                groupValue: radioButton,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Corneal opacity/scar',
                                groupValue: radioButton,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Phthisis or absent globe',
                                groupValue: radioButton,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Glaucoma',
                                groupValue: radioButton,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Posterior segment disorders',
                                groupValue: radioButton,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton = value.toString();
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
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Other',
                                groupValue: radioButton,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton = value.toString();
                                  });
                                },
                              ),
                            Text("Other Specify"),
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
                                  Text("Please wait.....", style: TextStyle(
                                    color: Colors.white, fontSize: 18))
                                ],
                              )
                            : Text(
                                'Next',
                                 style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w300,color: Colors.white)
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
                                .copyWith(fontWeight: FontWeight.w300,color: Colors.white)
                                        )));
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
      ),
    );
  }
}
