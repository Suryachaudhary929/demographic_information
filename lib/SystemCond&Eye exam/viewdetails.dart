import 'package:demographic_information/SystemCond&Eye%20exam/db_helper.dart';
import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
import 'package:flutter/material.dart';

class DataListScreen extends StatefulWidget {
  @override
  _DataListScreenState createState() => _DataListScreenState();
}

class _DataListScreenState extends State<DataListScreen> {
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
//  Future<void> _editForm({Item? item}) async {
//     final result = await Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => SystemCondandEyeExam(item: item),
//       ),
//     );
//     if (result == true) _loadItems();
//     setState(() {

//     });
//   }

  void _editItem(Item item) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SystemCondandEyeExam(item: item),
        )).then((_) {
      _loadItems();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'System Condition And EyeExam Details',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w300, color: Colors.black),
          )),
      body: FutureBuilder<List<Item>>(
        future: _itemsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
                child: Text(
              'No Data Found',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w300, color: Colors.black),
            ));
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final item = snapshot.data![index];
              return Padding(
                padding: const EdgeInsets.only(left: 35, top: 10),
                child: Container(
                  height: 350,
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
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "CODE AND CONDITION",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              "DURATION-YEARS",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              "MEDICATION",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 15,
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              item.radioValue,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 220,
                            ),
                            Text(
                              item.none1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            Text(
                              item.none2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          left: 280,
                          top: 40,
                          child: Row(
                            children: [
                              Text(
                                item.hyper1,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 180,
                              ),
                              Text(
                                item.hyper2,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      Positioned(
                          left: 280,
                          top: 40,
                          child: Row(
                            children: [
                              Text(
                                item.diabetes1,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 180,
                              ),
                              Text(
                                item.diabetes2,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      Positioned(
                          left: 280,
                          top: 40,
                          child: Row(
                            children: [
                              Text(
                                item.covid1,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 180,
                              ),
                              Text(
                                item.covid2,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      Positioned(
                          left: 280,
                          top: 40,
                          child: Row(
                            children: [
                              Text(
                                item.fall1,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 180,
                              ),
                              Text(
                                item.fall2,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      Positioned(
                          left: 280,
                          top: 40,
                          child: Row(
                            children: [
                              Text(
                                item.other1,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 180,
                              ),
                              Text(
                                item.other2,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),

                      SizedBox(
                        height: 140,
                        child: Divider(
                          color: Colors.black54,
                          thickness: 3,
                        ),
                      ),
                      Positioned(
                          left: 30,
                          top: 90,
                          child: Row(
                            children: [
                              Text(
                                "RE",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 350,
                              ),
                              Text(
                                "LE",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                   
                      Positioned(
                          left: 15,
                          top: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Lids:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 55,
                              ),
                              Text(
                                item.lids1,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 210,
                              ),
                              Text(
                                "Lids:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                item.lids2,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),

                      Positioned(
                          left: 15,
                          top: 155,
                          child: Row(
                            children: [
                              Text(
                                "Conjunctiva:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                item.conjunctiva1,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 215,
                              ),
                              Text(
                                "Conjunctiva:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                item.conjunctiva2,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),
                      //        SizedBox(height: 400,
                      // child: Divider(color: Colors.black,),
                      // ),
                      Positioned(
                          left: 15,
                          top: 190,
                          child: Row(
                            children: [
                              Text(
                                "Cornea:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                item.cornea1,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 250,
                              ),
                              Text(
                                "Cornea:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                item.cornea2,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),
                      //          SizedBox(height: 440,
                      // child: Divider(color: Colors.black,),
                      // ),
                      Positioned(
                          left: 15,
                          top: 225,
                          child: Row(
                            children: [
                              Text(
                                "AC:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                item.ac1,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 315,
                              ),
                              Text(
                                "AC:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                item.ac2,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),
                      //                SizedBox(height: 510,
                      // child: Divider(color: Colors.black,),
                      // ),
                      Positioned(
                          left: 15,
                          top: 260,
                          child: Row(
                            children: [
                              Text(
                                "Iris/Pupil:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                item.iris1,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 250,
                              ),
                              Text(
                                "Iris/Pupil:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                item.iris2,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),
                      //                     SizedBox(height: 580,
                      // child: Divider(color: Colors.black,),
                      // ),
                      Positioned(
                          left: 15,
                          top: 285,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item.dateandtime,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 300,
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  size: 40,
                                  color: Colors.green,
                                ),
                                onPressed: () => _editItem(item),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  size: 40,
                                  color: Colors.red,
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
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Inter',
                                              )),
                                          actions: [
                                            MaterialButton(
                                              color: const Color.fromARGB(
                                                  255, 138, 97, 188),
                                              elevation: 5,
                                              onPressed: () => Navigator.pop(
                                                  context, "Cancel"),
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16),
                                              ),
                                            ),
                                            MaterialButton(
                                              color: Colors.redAccent[700],
                                              elevation: 5,
                                              onPressed: () {
                                                _deleteItem(item.id!);
                                                Navigator.pop(context);
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                        const SnackBar(
                                                            backgroundColor:
                                                                Colors
                                                                    .redAccent,
                                                            content: Text(
                                                              "Deleted!",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            )));
                                              },
                                              child: Text("Delete",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16)),
                                            )
                                          ],
                                        )),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: Colors.green[500],
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SystemCondandEyeExam()));
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
            color: Colors.green[500],
          ),
        ),
      ),
    );
  }
}
