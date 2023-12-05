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

void main() {
  // Contoh penggunaan class Distributor
  Distributor distributor = Distributor(1, 'Distributor A',
      'distributor@example.com', 'Jl. Contoh No. 123', '081234567890');

  // Mendapatkan nilai atribut
  print('ID: ${distributor.getId}');
  print('Nama: ${distributor.getNama}');
  print('Email: ${distributor.getEmail}');
  print('Alamat: ${distributor.getAlamat}');
  print('Phone Number: ${distributor.getPhoneNumber}');

  // Mengubah nilai atribut
  distributor.setNama = 'Distributor Baru';
  distributor.setEmail = 'baru@example.com';
  distributor.setAlamat = 'Jl. Baru No. 456';
  distributor.setPhoneNumber = '081234567891';

  // Menampilkan nilai atribut setelah diubah
  print('\nSetelah diubah:');
  print('Nama: ${distributor.getNama}');
  print('Email: ${distributor.getEmail}');
  print('Alamat: ${distributor.getAlamat}');
  print('Phone Number: ${distributor.getPhoneNumber}');
}
