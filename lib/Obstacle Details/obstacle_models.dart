class Item {
  int? id;
  String radiovalue;
  String radiovalue1;
  String radiovalue2;
  String pay;
  String pay1;
  String other;
  String other1;
  String other2;
  String dateandtime;

  Item({
    this.id,
    required this.radiovalue,
    required this.radiovalue1,
    required this.radiovalue2,
    required this.pay,
    required this.pay1,
    required this.other,
    required this.other1,
    required this.other2,
    required this.dateandtime,
  });

  // Convert an Item into a Map for the database
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'radiovalue': radiovalue,
      'radiovalue1': radiovalue1,
      'radiovalue2': radiovalue2,
      'pay': pay,
      'pay1': pay1,
      'other': other,
      'other1': other1,
      'other2': other2,
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
      pay: map['pay'],
      pay1: map['pay1'],
      other: map['other'],
      other1: map['other1'],
      other2: map['other2'],
      dateandtime: map['dateandtime'],
    );
  }
}
