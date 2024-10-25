// ignore_for_file: must_be_immutable

import 'package:demographic_information/DbHelper/db_helper.dart';
import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/Model/models.dart';
import 'package:flutter/material.dart';

class PatientDetails extends StatefulWidget {
  const PatientDetails({super.key});
  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 202, 215, 189),
        title: Text(
          "Demographic Information",
          style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: 1194,
        width: 834,
        color: Colors.white60,
        child: Column(
          children: [
            Expanded(
                child: FutureBuilder(
                    future: dataList,
                    builder:
                        (context, AsyncSnapshot<List<TodoModel>> snapshot) {
                      if (!snapshot.hasData || snapshot.data == null) {
                        return Center(
                          child: CircularProgressIndicator(color: const Color.fromARGB(255, 77, 40, 145),),
                        );
                      } else if (snapshot.data!.length == 0) {
                        return Center(
                          child: Text(
                            "No task Found",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          ),
                        );
                      } else {
                        return ListView.builder(
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index) {
                              int todoId = snapshot.data![index].id!.toInt();
                              // ignore: unused_local_variable
                              String todoName =
                                  snapshot.data![index].name.toString();
                              // ignore: unused_local_variable
                              String todoPhoneNumber =
                                  snapshot.data![index].phonenumber.toString();
                              // ignore: unused_local_variable
                              String todoIdNumber =
                                  snapshot.data![index].idnumber.toString();
                              // ignore: unused_local_variable
                              String todoMonthlyIncome = snapshot
                                  .data![index].monthlyincome
                                  .toString();
                              // ignore: unused_local_variable
                              String todoAddress =
                                  snapshot.data![index].address.toString();
                              // ignore: unused_local_variable
                              String todoLandmark =
                                  snapshot.data![index].Landmark.toString();
                              // ignore: unused_local_variable
                              String todoDT =
                                  snapshot.data![index].dateandtime.toString();
                              return Dismissible(
                                key: ValueKey<int>(todoId),
                                direction: DismissDirection.endToStart,
                                background: Container(
                                  color: Colors.redAccent,
                                  child: Icon(
                                    Icons.delete_forever,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                                onDismissed: (DismissDirection direction) {
                                  setState(() {
                                    dbHelper!.delete(todoId);
                                    dataList = dbHelper!.getDataList();
                                    snapshot.data!
                                        .remove(snapshot.data![index]);
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 30, top: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 4,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 380,
                                        width: 754,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 202, 215, 189),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.8),
                                              offset: Offset(0, 1),
                                              blurRadius: 4,
                                              spreadRadius: 3,
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 50, top: 15),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Name:",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                  SizedBox(
                                                    width: 1,
                                                  ),
                                                  Text(
                                                    todoName,
                                                  style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black26,),
                                            
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "PhoneNumber:",
                                                  style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                  SizedBox(
                                                    width: 1,
                                                  ),
                                                  Text(
                                                    todoPhoneNumber,
                                                  style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                ],
                                              ),
                                               Divider(color: Colors.black26,),
                                            
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "ID Number:",
                                                   style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                  SizedBox(
                                                    width: 1,
                                                  ),
                                                  Text(
                                                    todoIdNumber,
                                                   style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                ],
                                              ),
                                               Divider(color: Colors.black26,),
                                           
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Monthly Income:",
                                                  style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                  SizedBox(
                                                    width: 1,
                                                  ),
                                                  Text(
                                                    todoMonthlyIncome,
                                                style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                ],
                                              ),
                                               Divider(color: Colors.black26,),
                                          
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Address:",style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                    // style: TextStyle(
                                                    //     color: Colors.black,
                                                    //     fontSize: 25,
                                                    //     fontWeight:
                                                    //         FontWeight.w400),
                                                  ),
                                                  SizedBox(
                                                    width: 1,
                                                  ),
                                                  Text(
                                                    todoAddress,
                                                  style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                ],
                                              ),
                                               Divider(color: Colors.black26,),
                                            
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Landmark:",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                  SizedBox(
                                                    width: 1,
                                                  ),
                                                  Text(
                                                    todoLandmark,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                color: Colors.black26,
                                              ),
                                              Row(
                                                children: [
                                                  Text(todoDT,
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w300)),
                                                  SizedBox(
                                                    width: 300,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      TabletPage(
                                                                        todoId:
                                                                            todoId,
                                                                        todoName:
                                                                            todoName,
                                                                        todoPhoneNumber:
                                                                            todoPhoneNumber,
                                                                        todoIdNumber:
                                                                            todoIdNumber,
                                                                        todoMonthlyIncome:
                                                                            todoMonthlyIncome,
                                                                        todoAddress:
                                                                            todoAddress,
                                                                        todoLandmark:
                                                                            todoLandmark,
                                                                        todoDT:
                                                                            todoDT,
                                                                        update:
                                                                            true,
                                                                      )));
                                                    },
                                                    child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            color: const Color
                                                                .fromARGB(255,
                                                                77, 40, 145),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: Icon(
                                                          Icons.edit,
                                                          color: Colors.white,
                                                          size: 40,
                                                        )),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      }
                    }))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: const Color.fromARGB(255, 77, 40, 145),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TabletPage()));
          }),
    );
  }
}
