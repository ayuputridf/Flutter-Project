import 'dart:convert';

// Membuat Respons dari web service berupa kumpulan objek JSON
  // - ketika kita me-request suatu web service dengan method GET, umumnya kita mendapatkan hasil pemanggilan berupa JSON. 
  // - Maka perlu konversi data dgn method fromJson => Flutter mengenali JSON tersebut sebagai objek class MyWatchList
  // - Method toJson => akan digunakan pas kita melakukan pengiriman data ke web service (seperti POST atau PUT).

List<MyWatchList> myWatchListFromJson(String str) => List<MyWatchList>.from(
    json.decode(str).map((x) => MyWatchList.fromJson(x)));

String myWatchListToJson(List<MyWatchList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyWatchList {
  MyWatchList({
    required this.model,
    required this.pk,
    required this.fields,
  });

  Model model;
  int pk;
  Fields fields;


// MyWatchList ini merupakan suatu model yang merepresentasikan response dari pemanggilan web service.

  factory MyWatchList.fromJson(Map<String, dynamic> json) => MyWatchList(
    model: modelValues.map[json["model"]]!,
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": modelValues.reverse[model],
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields {
  Fields({
    required this.title,
    required this.release_date,
    required this.watched,
    required this.rating,
    required this.review,
  });

  String title;
  String release_date;
  bool watched;
  int rating;
  String review;

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    title: json["title"],
    release_date: json["release_date"],
    watched: json["watched"],
    rating: json["rating"],
    review: json["review"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "release_date": release_date,
    "watched": watched,
    "rating": rating,
    "review": review,
  };
}

enum Model { MYWATCHLIST_MYWATCHLIST }

final modelValues =
EnumValues(map: {"mywatchlist.mywatchlist": Model.MYWATCHLIST_MYWATCHLIST});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues({required this.map});

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}

