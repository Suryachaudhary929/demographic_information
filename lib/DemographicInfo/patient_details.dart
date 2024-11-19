// ignore_for_file: must_be_immutable

import 'package:demographic_information/DbHelper/db_helper.dart';
import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/Model/models.dart';
import 'package:flutter/material.dart';

// import 'package:shared_preferences/shared_preferences.dart';

class PatientDetails extends StatefulWidget {
  const PatientDetails({super.key});
  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  late Future<List<Item>> _itemsFuture;

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  void _loadItems() {
    _itemsFuture = _dbHelper.getItems();
  }

  void _deleteItem(int id) async {
    await _dbHelper.deleteItem(id);
    _loadItems();
    setState(() {});
  }

  void _updateItem(Item item) {
    
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TabletPage(item: item),
          
        )).then((_) {
      _loadItems();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Demographic Information",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w300, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: 1194,
        width: 834,
        color: Colors.white60,
        child: Center(
          child: FutureBuilder(
              future: _itemsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(
                      child: Text(
                    'No Data Found',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w300, color: Colors.black),
                  ));
                }
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final item = snapshot.data![index];
                      return Padding(
                        padding: const EdgeInsets.only(left: 35,top: 10),
                        child: Container(
                          height: 373,
                          width: 754,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // color: const Color.fromARGB(255, 165, 199, 178),
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
                                padding:
                                    const EdgeInsets.only(left: 30, top: 15),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Name:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        item.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w300),
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Phone Number:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        item.phone,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w300),
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ID Number:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        item.idnumber,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w300),
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Monthly Income:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        "Rs${item.income}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w300),
                                      ),
                                    ]),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 5),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Address:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        item.address,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w300),
                                      ),
                                    ]),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 5),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Landmark:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        item.landmark,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w300),
                                      ),
                                    ]),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 5),
                                child: Row(
                                  children: [
                                    Text("Location:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 1,),
                                    Text( item.radiovalue,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                     Text("Status:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                       SizedBox(width: 1,),
                                    Text(item.radiovalue1,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                     Text("Gender:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                       SizedBox(width: 1,),
                                    Text(item.radiovalue2,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 5),
                                child: Row(
                                  children: [
                                       Text("Occupation:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                       SizedBox(width: 1,),
                                    Text(item.radiovalue3,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      width: 20,
                                    ),
                                     Text("Education:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                       SizedBox(width: 1,),
                                    Text(item.radiovalue4,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.dateandtime,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.edit,
                                        size: 50,
                                        color: Colors.greenAccent.shade700,
                                      ),
                                      onPressed: () => _updateItem(item),
                                    ),
                                    IconButton(
                                        icon: Icon(
                                          Icons.delete,
                                          size: 50,
                                          color: Colors.redAccent.shade700,
                                        ),
                                        onPressed: () => showDialog(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                                  title: Text("Delete data"),
                                                  content: Text(
                                                      "Are you sure want to delete data",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily: 'Inter',
                                                      )),
                                                  actions: [
                                                    MaterialButton(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              138,
                                                              97,
                                                              188),
                                                      elevation: 5,
                                                      onPressed: () =>
                                                          Navigator.pop(context,
                                                              "Cancel"),
                                                      child: Text(
                                                        "Cancel",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                    MaterialButton(
                                                      color:
                                                          Colors.redAccent[700],
                                                      elevation: 5,
                                                      onPressed: () {
                                                        _deleteItem(item.id!);
                                                        Navigator.pop(context);
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                                const SnackBar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .redAccent,
                                                                    content:
                                                                        Text(
                                                                      "Data deleted!",
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    )));
                                                      },
                                                      child: Text("Delete",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16)),
                                                    )
                                                  ],
                                                ))),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[700],
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TabletPage()));
        },
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            Icons.add,
            color:Colors.green[700]
          ),
        ),
      ),
    );
  }
}
