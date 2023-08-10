class ItemsModel {
  final int? id;
  final String title;

  ItemsModel({
    this.id,
    required this.title,
  });

  ItemsModel.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        title = res["title"];

  Map<String, Object?> toMap() {
    return {
      "id": id,
      "title": title,
    };
  }
}
