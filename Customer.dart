class Customer {
  int? _id;
  String? _nama;
  String? _email;

  Customer(this._id, this._nama, this._email);

  int get id => _id!;
  String get nama => _nama!;
  String get email => _email!;
}
