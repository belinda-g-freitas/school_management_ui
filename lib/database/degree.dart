// diplome. Ex: license, master, ...
import 'package:objectbox/objectbox.dart';

@Entity()
class Degree {
  @Id()
  int id;
  String name;
  
  Degree({
    required this.id,
    required this.name,
  });
}
