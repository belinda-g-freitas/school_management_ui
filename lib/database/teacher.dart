import 'package:objectbox/objectbox.dart';
import 'package:school_management_ui/database/degree.dart';
import 'package:school_management_ui/database/person.dart';

@Entity()
class Teacher extends Person {
  
  int id;
  Degree grade;
  List<DateTime> availability;
  
  Teacher({
    required this.id,
    required this.grade,
    required this.availability,
    required super.reference,
    required super.firstname,
    required super.lastname,
    required super.gender,
    required super.email,
    required super.address,
    required super.phoneNumbers,
    required super.dateOfBirth,
    required super.createdAt,
    required super.updatedAt,
    required super.access,
  }) : super(id: id);
}
