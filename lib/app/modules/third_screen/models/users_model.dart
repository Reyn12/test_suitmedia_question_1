class UsersModel {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Data>? data;
  Support? support;

  UsersModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
    page: json['page'],
    perPage: json['per_page'],
    total: json['total'],
    totalPages: json['total_pages'],
    data:
        json['data'] != null
            ? List<Data>.from(json['data'].map((x) => Data.fromJson(x)))
            : null,
    support: json['support'] != null ? Support.fromJson(json['support']) : null,
  );
}

class Data {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json['id'],
    email: json['email'],
    firstName: json['first_name'],
    lastName: json['last_name'],
    avatar: json['avatar'],
  );

  String get fullName => '$firstName $lastName';
}

class Support {
  String? url;
  String? text;

  Support({this.url, this.text});

  factory Support.fromJson(Map<String, dynamic> json) =>
      Support(url: json['url'], text: json['text']);
}
