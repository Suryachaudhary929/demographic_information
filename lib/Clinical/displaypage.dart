import 'package:demographic_information/Clinical/clinical_model.dart';
import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
import 'package:demographic_information/Clinical/db_helper.dart';
import 'package:flutter/material.dart';

class ClinicalDetails extends StatefulWidget {
  const ClinicalDetails({super.key});

  @override
  State<ClinicalDetails> createState() => _ClinicalDetailsState();
}

class _ClinicalDetailsState extends State<ClinicalDetails> {
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
          builder: (context) => ClinicalInfo(item: item),
        )).then((_) {
      _loadItems();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Clinical & Spectaleinfo Details', style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w300,color: Colors.black))),
      body: FutureBuilder(
          future: _itemsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No Data Found', style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w300,color: Colors.black),));
            }
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final item = snapshot.data![index];
                  return Padding(
                      padding: const EdgeInsets.only(left: 35,top: 10),
                      child: Container(
                        height: 378,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 20),
                              child: Row(
                                children: [
                                  Text("OD:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(item.radiovalue,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                  Text(item.other1,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Row(
                                children: [
                                  Text("OS:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(item.radiovalue1,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                  Text(item.other,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Row(
                                children: [
                                  Text("Present Glasses:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(item.radiovalue2,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                  Text(item.other1,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Row(
                                children: [
                                  Text("Glass types:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(item.radiovalue3,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                  Text(item.other1,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Row(
                                children: [
                                  Text("Provider:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(item.radiovalue4,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                  Text(item.other1,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Row(
                                children: [
                                  Text("Amount Paid:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text("Rs${item.amount}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Row(
                                children: [
                                  Text("Present Glasses:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(item.radiovalue5,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                  Text(item.other1,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Row(
                                children: [
                                  Text("Glass types:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(item.radiovalue6,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                  Text(item.other1,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Row(
                                children: [
                                  Text("Reason for discontinuing glasses:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(item.radiovalue7,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                  Text(item.other1,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Row(
                                children: [
                                  Text("Amount Paid:",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
                                  SizedBox(
                                    width:1,
                                  ),
                                  Text("Rs${item.amount1}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(item.dateandtime,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      )),
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
                                                    color: const Color.fromARGB(
                                                        255, 138, 97, 188),
                                                    elevation: 5,
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, "Cancel"),
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
                                                                  content: Text(
                                                                    "deleted!",
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
                                              ))),
                                ],
                              ),
                            ),
                           
                          ],
                        ),
                      ));
                });
          }),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: Colors.green.shade700,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ClinicalInfo()));
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
