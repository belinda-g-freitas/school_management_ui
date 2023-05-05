import 'package:objectbox/objectbox.dart';

/// emploi du temps
@Entity()
class Schedule {
  @Id()
  int id;
  DateTime date;
  Duration duration;
  
  Schedule({
    required this.id,
    required this.date,
    required this.duration,
  });
}
