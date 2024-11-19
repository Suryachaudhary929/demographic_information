class Item {
  int? id;
  String radiovalue;
  String aided1;
  String aided2;
  String aided3;
  String pinhole1;
  String pinhole2;
  String pinhole3;
  String unaided1;
  String unaided2;
  String unaided3;
  String unaidednear;
  String aidednear;
  String addpower;
  String nearvision;
  String fp1;
  String fp2;
  String fp3;
  String sub1;
  String sub2;
  String sub3;
  String bcva1;
  String bcva2;
  String bcva3;
  String other;
  String dateandtime;

  Item({
    this.id,
    required this.radiovalue,
    required this.aided1,
    required this.aided2,
    required this.aided3,
    required this.pinhole1,
    required this.pinhole2,
    required this.pinhole3,
    required this.unaided1,
    required this.unaided2,
    required this.unaided3,
    required this.unaidednear,
    required this.aidednear,
    required this.addpower,
    required this.nearvision,
    required this.fp1,
    required this.fp2,
    required this.fp3,
    required this.sub1,
    required this.sub2,
    required this.sub3,
    required this.bcva1,
    required this.bcva2,
    required this.bcva3,
    required this.other,
    required this.dateandtime,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'radiovalue': radiovalue,
      'aided1': aided1,
      'aided2': aided2,
      'aided3': aided3,
      'pinhole1': pinhole1,
      'pinhole2': pinhole2,
      'pinhole3': pinhole3,
      'unaided1': unaided1,
      'unaided2': unaided2,
      'unaided3': unaided3,
      'unaidednear': unaidednear,
      'aidednear': aidednear,
      'addpower': addpower,
      'nearvision': nearvision,
      'fp1': fp1,
      'fp2': fp2,
      'fp3': fp3,
      'sub1': sub1,
      'sub2': sub2,
      'sub3': sub3,
      'bcva1': bcva1,
      'bcva2': bcva2,
      'bcva3': bcva3,
      'other': other,
      'dateandtime': DateTime.now().toString(),
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      radiovalue: map['radiovalue'],
      aided1: map['aided1'],
      aided2: map['aided2'],
      aided3: map['aided3'],
      pinhole1: map['pinhole1'],
      pinhole2: map['pinhole2'],
      pinhole3: map['pinhole3'],
      unaided1: map['unaided1'],
      unaided2: map['unaided2'],
      unaided3: map['unaided3'],
      unaidednear: map['unaidednear'],
      aidednear: map['aidednear'],
      addpower: map['addpower'],
      nearvision: map['nearvision'],
      fp1: map['fp1'],
      fp2: map['fp2'],
      fp3: map['fp3'],
      sub1: map['sub1'],
      sub2: map['sub2'],
      sub3: map['sub3'],
      bcva1: map['bcva1'],
      bcva2: map['bcva2'],
      bcva3: map['bcva3'],
      other: map['other'],
      dateandtime: map['dateandtime'],
    );
  }
}
