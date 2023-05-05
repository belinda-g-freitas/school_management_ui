import 'package:objectbox/objectbox.dart';
import 'package:school_management_ui/database/degree.dart';
import 'package:school_management_ui/database/subject.dart';
import 'package:school_management_ui/database/sector.dart';
import 'package:school_management_ui/database/teacher.dart';
import 'package:school_management_ui/database/teaching_type.dart';


@Entity()

/// enseignement
class Teaching {
  @Id()
  int id;
  int totalHour;
  int totalHourDone;
  Teacher teacher;
  Subject course;
  Sector sector;
  Degree grade;
  TeachingType teachingType;

  Teaching({
    required this.id,
    required this.totalHour,
    required this.totalHourDone,
    required this.teacher,
    required this.course,
    required this.sector,
    required this.grade,
    required this.teachingType,
  });
}
