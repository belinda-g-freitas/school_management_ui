/// annee scolaire
import 'package:objectbox/objectbox.dart';
import 'package:school_management_ui/database/schedule.dart';

@Entity()
class SchoolYear {
  @Id()
  int id;
  DateTime startDate;
  DateTime endDate;
  Schedule schedule;

  SchoolYear({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.schedule,
  });
  // horaire
}
