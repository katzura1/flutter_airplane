import 'package:airplane/models/destination_model.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final String id;
  final DestinationModel destination;
  final int amountOfTraveler;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final double price;
  final double grandTotal;

  const TransactionModel({
    this.id = "",
    required this.destination,
    this.amountOfTraveler = 0,
    this.selectedSeat = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) => TransactionModel(
        id: id,
        destination: DestinationModel.fromJson(json['destination']['id'] ?? "", json['destination'] ?? []),
        amountOfTraveler: json['amountOfTraveler'] ?? "",
        selectedSeat: json['selectedSeat'] ?? "",
        insurance: json['insurance'] ?? false,
        refundable: json['refundable'] ?? false,
        vat: json['vat'].toDouble(),
        price: json['price'].toDouble(),
        grandTotal: json['grandTotal'].toDouble(),
      );

  @override
  List<Object?> get props => [
        destination,
        amountOfTraveler,
        selectedSeat,
        insurance,
        refundable,
        vat,
        price,
        grandTotal,
      ];
}
