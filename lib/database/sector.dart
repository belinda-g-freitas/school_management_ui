import 'package:objectbox/objectbox.dart';
import 'package:school_management_ui/database/field.dart';

@Entity()
/// filiere
class Sector {
  @Id()
  int id;
  String name;
  Field field;

  Sector({
    required this.id,
    required this.name,
    required this.field,
  });
}
