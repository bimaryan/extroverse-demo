class Distributor {
  int? _id;
  String? _nama;
  String? _email;
  String? _alamat;
  String? _phoneNumber;

  Distributor(this._id, this._nama, this._email, this._alamat, this._phoneNumber);

  // Metode getter untuk mendapatkan nilai atribut
  int get getId => _id!;
  String get getNama => _nama!;
  String get getEmail => _email!;
  String get getAlamat => _alamat!;
  String get getPhoneNumber => _phoneNumber!;

  // Metode setter untuk mengubah nilai atribut
  set setId(int id) => this._id = id;
  set setNama(String nama) => this._nama = nama;
  set setEmail(String email) => this._email = email;
  set setAlamat(String alamat) => this._alamat = alamat;
  set setPhoneNumber(String phoneNumber) => this._phoneNumber = phoneNumber;
}
