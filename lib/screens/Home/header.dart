import 'package:car_rental_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.grayFineColor, width: 2),
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22,
                  child: Icon(
                    FontAwesomeIcons.car,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.grayFineColor, width: 2),
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22,
                  backgroundImage: AssetImage('assets/african_man.jpg'),
                ),
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
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My location",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.mapMarkerAlt,
              color: Colors.red,
              size: 16,
            ),
            SizedBox(width: 5),
            Text(
              "Green Wood Drive, Miami",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}