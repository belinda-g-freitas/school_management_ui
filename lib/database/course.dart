// parcours. Ex: sciences et technologies

import 'package:objectbox/objectbox.dart';

@Entity()
class Course {
  @Id()
  int id;
  String name;

  Course({
    required this.id,
    required this.name,
  });
}
