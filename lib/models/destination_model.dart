import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String title;
  final String city;
  final String imageUrl;
  final double rate;
  final double price;

  const DestinationModel({
    required this.id,
    this.title = '',
    this.city = '',
    this.imageUrl = '',
    this.rate = 0.0,
    required this.price,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) => DestinationModel(
        id: id,
        title: json['title'],
        city: json['city'],
        imageUrl: json['imageUrl'],
        rate: json['rate'].toDouble(),
        price: json['price'].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'city': city,
        'imageUrl': imageUrl,
        'rate': rate,
        'price': price,
      };

  @override
  List<Object?> get props => [id, title, city, imageUrl, rate, price];
}
