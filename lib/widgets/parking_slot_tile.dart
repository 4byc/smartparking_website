import 'package:flutter/material.dart';

class ParkingSlotTile extends StatelessWidget {
  final String id;
  final bool status;

  const ParkingSlotTile({
    Key? key,
    required this.id,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Slot $id'),
      subtitle: Text(status ? 'Occupied' : 'Available'),
      trailing: Icon(
        status ? Icons.car_rental : Icons.check_circle,
        color: status ? Colors.red : Colors.green,
      ),
    );
  }
}
