class mahasiswa {
  mahasiswa(this.nama,this.nim,this.kelas,this.prodi);

  final String nama;
  final String nim;
  final String kelas;
  final String prodi;
}

class MobileLegends{
  MobileLegends({required this.hero, required this.item, required this.damage});

  final String hero;
  final String item;
  final String damage;

  String InfoHero(){
    return "Hero Dengan Nama $hero, Item $item, Damage $damage";
  }
}

void main() {
  final m = mahasiswa("Dhani Ganteng","1124160014","TI 24 P SE 3","Teknik Informatika");
  print("Nama: ${m.nama}");
  print("NIM: ${m.nim}");
  print("Kelas: ${m.kelas}");
  print("Prodi: ${m.prodi}");

  final b = MobileLegends(damage: "2000", item: "Blood Of Despair", hero: "Aldous");
  print(b.InfoHero());
}