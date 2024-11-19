import 'package:demographic_information/Vision/Vision_test.dart';
import 'package:demographic_information/Vision/db.dart';
import 'package:demographic_information/Vision/details_model.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class ItemListPage extends StatefulWidget {
  @override
  _ItemListPageState createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  

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

  void _editItem(Item item) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VisionScreen(item: item),
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
          title: Text('Vision Test Details', style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w300,color: Colors.black),)),
      body: FutureBuilder(
          future: _itemsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No Data Found',style: Theme.of(context)
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
              height: 660,
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
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Visual Acuity",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Text("RE",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 100,
                        ),
                        Text("LE",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 105,
                        ),
                        Text("BE",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Aided-Distance:",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 175,
                        ),
                        Text(item.aided1,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 85,
                        ),
                        Text(item.aided2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 95,
                        ),
                        Text(item.aided3,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Pinhole-Distance(only if<6/9):",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(item.pinhole1,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 90,
                        ),
                        Text(item.pinhole2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 95,
                        ),
                        Text(item.pinhole3,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Unaided-Distance:",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 155,
                        ),
                        Text(item.unaided1,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 86,
                        ),
                        Text(item.unaided2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 90,
                        ),
                        Text(item.unaided3,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black54,
                    height: 10,
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Unaided-Near(Binocular):",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(item.unaidednear,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Aided-Near:",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Text(item.aidednear,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Add power used(if<N6):",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 112,
                        ),
                        Text(item.addpower,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Near vision with addition:",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(item.nearvision,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black54,
                    height: 10,
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 300,
                        ),
                        Text("RE",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 100,
                        ),
                        Text("LE",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 100,
                        ),
                        Text("BE",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "FP Value:",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 215,
                        ),
                        Text(item.fp1,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 75,
                        ),
                        Text(item.fp2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 85,
                        ),
                        Text(item.fp3,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Subjective:",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Text(item.sub1,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 85,
                        ),
                        Text(item.sub2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 85,
                        ),
                        Text(item.sub3,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "BCVA:",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 237,
                        ),
                        Text(item.bcva1,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 85,
                        ),
                        Text(item.bcva2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 85,
                        ),
                        Text(item.bcva3,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                          Text("Lens Status:", style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                                SizedBox(width: 1,),
                        Text(item.radiovalue, style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400)),
                        // Text(
                        //   "LensStatus: ${_lensstatus ?? 'N/A'}",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.w500),
                        // ),
                        SizedBox(
                          width: 220,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            size: 50,
                            color: Colors.greenAccent.shade700,
                          ),
                          onPressed: () =>_editItem(item),
                        ),
                       
                        IconButton(
                            icon: Icon(
                              Icons.delete,
                              size: 50,
                              color: Colors.redAccent.shade700,
                            ),
                            onPressed: () => showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: Text("Delete data"),
                                      content: Text(
                                          "Are you sure want to delete data", style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                                )),
                                      actions: [
                                        MaterialButton(
                                          color: const Color.fromARGB(255, 138, 97, 188),
                                          elevation: 5,
                                          onPressed: () =>
                                              Navigator.pop(context, "Cancel"),
                                          child: Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 16),),
                                        ),
                                        MaterialButton(
                                           color:Colors.redAccent[700],
                                          elevation: 5,
                                          onPressed: () {
                                            _deleteItem(item.id!);
                                            Navigator.pop(context);
                                             ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                        backgroundColor: Colors.redAccent,
                                        content: Text(
                                          "Deleted!",
                                          style: TextStyle(color: Colors.white),
                                        )));
                                          },
                                          child: Text("Delete",style: TextStyle(color: Colors.white,fontSize: 16)),
                                        )
                                      ],
                                    ))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      item.dateandtime,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Divider(
                    color: Colors.black54,
                    thickness: 3,
                  )
                ],
              ),
            ),
          );
              },
            );
          }),
   
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: Colors.green.shade700,
        onPressed: (){
               Navigator.push(context,
              MaterialPageRoute(builder: (context) =>VisionScreen()));
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
