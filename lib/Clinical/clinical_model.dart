class Item {
  int? id;
  String radiovalue;
  String radiovalue1;
  String radiovalue2;
  String radiovalue3;
  String radiovalue4;
  String radiovalue5;
  String radiovalue6;
  String radiovalue7;
  String amount;
  String amount1;
  String other;
  String other1;
  String other2;
  String other3;
  String dateandtime;

  Item({
    this.id,
    required this.radiovalue,
    required this.radiovalue1,
    required this.radiovalue2,
    required this.radiovalue3,
    required this.radiovalue4,
    required this.radiovalue5,
    required this.radiovalue6,
    required this.radiovalue7,
    required this.amount,
    required this.amount1,
    required this.other,
    required this.other1,
    required this.other2,
    required this.other3,
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
      'radiovalue5': radiovalue5,
      'radiovalue6': radiovalue6,
      'radiovalue7': radiovalue7,
      'amount': amount,
      'amount1': amount1,
      'other': other,
      'other1': other1,
      'other2': other2,
      'other3': other3,
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
      radiovalue5: map['radiovalue5'],
      radiovalue6: map['radiovalue6'],
      radiovalue7: map['radiovalue7'],
      amount: map['amount'],
      amount1: map['amount1'],
      other: map['other'],
      other1: map['other1'],
      other2: map['other2'],
      other3: map['other3'],
      dateandtime: map['dateandtime'],
    );
  }
}
