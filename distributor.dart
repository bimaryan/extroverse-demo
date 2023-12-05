class Distributor {
  int id;
  String nama;
  String email;
  String alamat;
  String phoneNumber;

  Distributor(this.id, this.nama, this.email, this.alamat, this.phoneNumber);

  // Metode getter untuk mendapatkan nilai atribut
  int get getId => id;
  String get getNama => nama;
  String get getEmail => email;
  String get getAlamat => alamat;
  String get getPhoneNumber => phoneNumber;

  // Metode setter untuk mengubah nilai atribut
  set setId(int id) => this.id = id;
  set setNama(String nama) => this.nama = nama;
  set setEmail(String email) => this.email = email;
  set setAlamat(String alamat) => this.alamat = alamat;
  set setPhoneNumber(String phoneNumber) => this.phoneNumber = phoneNumber;
}
