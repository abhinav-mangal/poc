// To parse this JSON data, do
//
//     final usersModel = usersModelFromJson(jsonString);

import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'user_model.g.dart';

UsersModel usersModelFromJson(String str) => UsersModel.fromJson(json.decode(str));

String usersModelToJson(UsersModel data) => json.encode(data.toJson());

@HiveType(typeId: 1)
@JsonSerializable()
class UsersModel {
    @HiveField(0)
    @JsonKey(name: "users")
    List<User> users;
    @HiveField(1)
    @JsonKey(name: "total")
    int total;
    @HiveField(2)
    @JsonKey(name: "skip")
    int skip;
    @HiveField(3)
    @JsonKey(name: "limit")
    int limit;

    UsersModel({
        required this.users,
        required this.total,
        required this.skip,
        required this.limit,
    });

    factory UsersModel.fromJson(Map<String, dynamic> json) => _$UsersModelFromJson(json);

    Map<String, dynamic> toJson() => _$UsersModelToJson(this);
}

@HiveType(typeId: 2)
@JsonSerializable()
class User {
    @HiveField(0)
    @JsonKey(name: "id")
    int id;
    @HiveField(1)
    @JsonKey(name: "firstName")
    String firstName;
    @HiveField(2)
    @JsonKey(name: "lastName")
    String lastName;
    @HiveField(3)
    @JsonKey(name: "maidenName")
    String maidenName;
    @HiveField(4)
    @JsonKey(name: "age")
    int age;
    @HiveField(5)
    @JsonKey(name: "gender")
    String gender;
    @HiveField(6)
    @JsonKey(name: "email")
    String email;
    @HiveField(7)
    @JsonKey(name: "phone")
    String phone;
    @HiveField(8)
    @JsonKey(name: "username")
    String username;
    @HiveField(9)
    @JsonKey(name: "password")
    String password;
    @HiveField(10)
    @JsonKey(name: "birthDate")
    String birthDate;
    @HiveField(11)
    @JsonKey(name: "image")
    String image;
    @HiveField(12)
    @JsonKey(name: "bloodGroup")
    String bloodGroup;
    @HiveField(13)
    @JsonKey(name: "height")
    double height;
    @HiveField(14)
    @JsonKey(name: "weight")
    double weight;
    @HiveField(15)
    @JsonKey(name: "eyeColor")
    String eyeColor;
    @HiveField(16)
    @JsonKey(name: "hair")
    Hair hair;
    @HiveField(17)
    @JsonKey(name: "ip")
    String ip;
    @HiveField(18)
    @JsonKey(name: "address")
    Address address;
    @HiveField(19)
    @JsonKey(name: "macAddress")
    String macAddress;
    @HiveField(20)
    @JsonKey(name: "university")
    String university;
    @HiveField(21)
    @JsonKey(name: "bank")
    Bank bank;
    @HiveField(22)
    @JsonKey(name: "company")
    Company company;
    @HiveField(23)
    @JsonKey(name: "ein")
    String ein;
    @HiveField(24)
    @JsonKey(name: "ssn")
    String ssn;
    @HiveField(25)
    @JsonKey(name: "userAgent")
    String userAgent;
    @HiveField(26)
    @JsonKey(name: "crypto")
    Crypto crypto;
    @HiveField(27)
    @JsonKey(name: "role")
    String role;

    User({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.maidenName,
        required this.age,
        required this.gender,
        required this.email,
        required this.phone,
        required this.username,
        required this.password,
        required this.birthDate,
        required this.image,
        required this.bloodGroup,
        required this.height,
        required this.weight,
        required this.eyeColor,
        required this.hair,
        required this.ip,
        required this.address,
        required this.macAddress,
        required this.university,
        required this.bank,
        required this.company,
        required this.ein,
        required this.ssn,
        required this.userAgent,
        required this.crypto,
        required this.role,
    });

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

    Map<String, dynamic> toJson() => _$UserToJson(this);
}

@HiveType(typeId: 3)
@JsonSerializable()
class Address {
    @HiveField(0)
    @JsonKey(name: "address")
    String address;
    @HiveField(1)
    @JsonKey(name: "city")
    String city;
    @HiveField(2)
    @JsonKey(name: "state")
    String state;
    @HiveField(3)
    @JsonKey(name: "stateCode")
    String stateCode;
    @HiveField(4)
    @JsonKey(name: "postalCode")
    String postalCode;
    @HiveField(5)
    @JsonKey(name: "coordinates")
    Coordinates coordinates;
    @HiveField(6)
    @JsonKey(name: "country")
    Country country;

    Address({
        required this.address,
        required this.city,
        required this.state,
        required this.stateCode,
        required this.postalCode,
        required this.coordinates,
        required this.country,
    });

    factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

    Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@HiveType(typeId: 4)
@JsonSerializable()
class Coordinates {
    @HiveField(0)
    @JsonKey(name: "lat")
    double lat;
    @HiveField(1)
    @JsonKey(name: "lng")
    double lng;

    Coordinates({
        required this.lat,
        required this.lng,
    });

    factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);

    Map<String, dynamic> toJson() => _$CoordinatesToJson(this);
}

@HiveType(typeId: 5)
enum Country {
    @HiveField(0)
    @JsonValue("United States")
    UNITED_STATES
}

@HiveType(typeId: 6)
@JsonSerializable()
class Bank {
    @HiveField(0)
    @JsonKey(name: "cardExpire")
    String cardExpire;
    @HiveField(1)
    @JsonKey(name: "cardNumber")
    String cardNumber;
    @HiveField(2)
    @JsonKey(name: "cardType")
    String cardType;
    @HiveField(3)
    @JsonKey(name: "currency")
    String currency;
    @HiveField(4)
    @JsonKey(name: "iban")
    String iban;

    Bank({
        required this.cardExpire,
        required this.cardNumber,
        required this.cardType,
        required this.currency,
        required this.iban,
    });

    factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);

    Map<String, dynamic> toJson() => _$BankToJson(this);
}

@HiveType(typeId: 7)
@JsonSerializable()
class Company {
    @HiveField(0)
    @JsonKey(name: "department")
    String department;
    @HiveField(1)
    @JsonKey(name: "name")
    String name;
    @HiveField(2)
    @JsonKey(name: "title")
    String title;
    @HiveField(3)
    @JsonKey(name: "address")
    Address address;

    Company({
        required this.department,
        required this.name,
        required this.title,
        required this.address,
    });

    factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

    Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

@HiveType(typeId: 8)
@JsonSerializable()
class Crypto {
    @HiveField(0)
    @JsonKey(name: "coin")
    String coin;
    @HiveField(1)
    @JsonKey(name: "wallet")
    String wallet;
    @HiveField(2)
    @JsonKey(name: "network")
    String network;

    Crypto({
        required this.coin,
        required this.wallet,
        required this.network,
    });

    factory Crypto.fromJson(Map<String, dynamic> json) => _$CryptoFromJson(json);

    Map<String, dynamic> toJson() => _$CryptoToJson(this);
}

@HiveType(typeId: 9)
@JsonSerializable()
class Hair {
    @HiveField(0)
    @JsonKey(name: "color")
    String color;
    @HiveField(1)
    @JsonKey(name: "type")
    String type;

    Hair({
        required this.color,
        required this.type,
    });

    factory Hair.fromJson(Map<String, dynamic> json) => _$HairFromJson(json);

    Map<String, dynamic> toJson() => _$HairToJson(this);
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
