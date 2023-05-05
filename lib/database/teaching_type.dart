// type enseignement
import 'package:objectbox/objectbox.dart';

@Entity()
class TeachingType {
  @Id()
  int id;
  String name;
  
  TeachingType({
    required this.id,
    required this.name,
  });
}
