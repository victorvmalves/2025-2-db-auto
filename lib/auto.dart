class Auto {
  int? id;
  String marca;
  String cor;

  Auto({this.id, required this.marca, required this.cor});

  Map<String, dynamic> toMap() {
    return {"id": id, "marca": marca, "cor": cor};
  }

  factory Auto.fromMap(Map<String, dynamic> map) {
    return Auto(
      id: map['id'], 
      marca: map['marca'], 
      cor: map['cor']
    );
  }
}
