import 'package:flutter/material.dart';
import 'package:car_rental_app/constants.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LocationHeader(),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: primaryColor,
                radius: 22,
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: secondaryColor,
                radius: 22,
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}

class LocationHeader extends StatelessWidget {
  const LocationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "My location",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Green Wood Drive",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}