import 'package:flutter/material.dart';
import 'package:currency_converter/models/hotel.dart';

class HotelCard extends StatelessWidget {
  final Hotel hotel;

  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Image.asset(hotel.imageAsset, fit: BoxFit.cover),
          ),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  hotel.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 4),
              Icon(Icons.star_rounded, color: Colors.amber, size: 16),
              Icon(Icons.star_rounded, color: Colors.amber, size: 16),
              Icon(Icons.star_rounded, color: Colors.amber, size: 16),
            ],
          ),
          Text(
            hotel.city,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.shade100.withValues(
                    alpha: 0.25,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  hotel.rating.toStringAsFixed(1),
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              SizedBox(width: 8),
              Text("Very Good", style: TextStyle(color: Colors.blue)),
              SizedBox(width: 8),
              Text(
                "${hotel.ratingsCount} Ratings",
                style: TextStyle(color: Colors.grey),
              ),
              Spacer(),
              Text(hotel.price, style: TextStyle(fontWeight: FontWeight.w700)),
            ],
          ),
        ],
      ),
    );
  }
}
