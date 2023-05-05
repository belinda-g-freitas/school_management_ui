import 'package:objectbox/objectbox.dart';
import 'package:school_management_ui/database/equipment.dart';
import 'package:school_management_ui/database/room.dart';
import 'package:school_management_ui/database/school_year.dart';

/// seance de cours
@Entity()
class Lesson {
  @Id()
  int id;
  bool status;
  // @Property(type: PropertyType.date)
  DateTime date;
  Room room;
  Equipment equipment;
  SchoolYear schoolYear;

  Lesson({
    required this.id,
    required this.status,
    required this.date,
    required this.room,
    required this.equipment,
    required this.schoolYear,
  });

  // int get utcDate => date.millisecondsSinceEpoch;
  // set utcDate(int value) => date = DateTime.fromMillisecondsSinceEpoch(value, isUtc: true);
}
