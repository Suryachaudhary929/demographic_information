class Item {
  int? id;
  String radiovalue;
  String radiovalue1;
  String radiovalue2;
  String radiovalue3;
  String radiovalue4;
  String name;
  String phone;
  String idnumber;
  String income;
  String address;
  String landmark;
  String dateandtime;

  Item({
    this.id,
    required this.radiovalue,
    required this.radiovalue1,
    required this.radiovalue2,
    required this.radiovalue3,
    required this.radiovalue4,
    required this.name,
    required this.phone,
    required this.idnumber,
    required this.income,
    required this.address,
    required this.landmark,
    required this.dateandtime,
  });

  // Convert an Item into a Map for the database
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'radiovalue': radiovalue,
      'radiovalue1': radiovalue1,
      'radiovalue2': radiovalue2,
      'radiovalue3': radiovalue3,
      'radiovalue4': radiovalue4,
      'name': name,
      'phone': phone,
      'idnumber': idnumber,
      'income': income,
      'address': address,
      'landmark': landmark,
      'dateandtime': DateTime.now().toString(),
    };
  }

  // Convert a Map from the database to an Item
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      radiovalue: map['radiovalue'],
      radiovalue1: map['radiovalue1'],
      radiovalue2: map['radiovalue2'],
      radiovalue3: map['radiovalue3'],
      radiovalue4: map['radiovalue4'],
      name: map['name'],
      phone: map['phone'],
      idnumber: map['idnumber'],
      income: map['income'],
      address: map['address'],
      landmark: map['landmark'],
      dateandtime: map['dateandtime'],
    );
  }
}

