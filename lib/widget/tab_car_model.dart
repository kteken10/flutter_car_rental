import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:car_rental_app/constants.dart';

class TabCarModel extends StatefulWidget {
  TabCarModel({super.key});

  @override
  _TabCarModelState createState() => _TabCarModelState();
}

class _TabCarModelState extends State<TabCarModel> {
  final List<Map<String, String>> carModels = [
    {'name': 'All', 'icon': ''},
    {'name': 'Ferrari', 'icon': 'assets/ferrari_logo.svg'},
    {'name': 'Mercedes', 'icon': 'assets/mercedes_logo.svg'},
    {'name': 'Nissan', 'icon': 'assets/nissan_logo.svg'},
    {'name': 'Toyota', 'icon': 'assets/toyota_logo.svg'},
  ];

  String selectedModel = 'All';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: carModels.map((model) {
          bool isSelected = model['name'] == selectedModel;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedModel = model['name']!;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: isSelected ? Colors.yellow : Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.grayFineColor, width: 0.25),
              ),
              child: Row(
                children: [
                  if (model['icon']!.isNotEmpty)
                    SvgPicture.asset(
                      model['icon']!,
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,

                   
                      
                    ),
                  if (model['icon']!.isNotEmpty) const SizedBox(width: 10),
                  Text(
                    model['name']!,
                    style: const TextStyle(
                      color: AppColors.ternaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}