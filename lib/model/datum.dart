class Datum {
  Datum({
    required this.id,
    required this.dori,
    required this.dona,
    required this.olishNarx,
    required this.foiz,
    required this.sotishNarx,
    required this.muddat,
    required this.shtrixKod,
    required this.ishlabChiqJoy,
    required this.ogohQoldiq,
    required this.kursD,
    required this.olSom,
    required this.sotSom,
    required this.bId,
    required this.bNomi,
    required this.kId,
    required this.kNomi,
    required this.olcham,
  });

  int id;
  String dori;
  String dona;
  int olishNarx;
  String foiz;
  int sotishNarx;
  DateTime muddat;
  String shtrixKod;
  String ishlabChiqJoy;
  String ogohQoldiq;
  String kursD;
  String olSom;
  String sotSom;
  int bId;
  String bNomi;
  int kId;
  String kNomi;
  int olcham;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    dori: json["Dori"],
    dona: json["Dona"],
    olishNarx: json["OlishNarx"],
    foiz: json["Foiz"],
    sotishNarx: json["SotishNarx"],
    muddat: DateTime.parse(json["Muddat"]),
    shtrixKod: json["ShtrixKod"],
    ishlabChiqJoy: json["IshlabChiqJoy"],
    ogohQoldiq: json["OgohQoldiq"],
    kursD: json["kurs_d"],
    olSom: json["ol_som"],
    sotSom: json["sot_som"],
    bId: json["b_id"],
    bNomi: json["b_nomi"],
    kId: json["k_id"],
    kNomi: json["k_nomi"],
    olcham: json["olcham"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "Dori": dori,
    "Dona": dona,
    "OlishNarx": olishNarx,
    "Foiz": foiz,
    "SotishNarx": sotishNarx,
    "Muddat":
    "${muddat.year.toString().padLeft(4, '0')}-${muddat.month.toString().padLeft(2, '0')}-${muddat.day.toString().padLeft(2, '0')}",
    "ShtrixKod": shtrixKod,
    "IshlabChiqJoy": ishlabChiqJoy,
    "OgohQoldiq": ogohQoldiq,
    "kurs_d": kursD,
    "ol_som": olSom,
    "sot_som": sotSom,
    "b_id": bId,
    "b_nomi": bNomi,
    "k_id": kId,
    "k_nomi": kNomi,
    "olcham": olcham,
  };
}
