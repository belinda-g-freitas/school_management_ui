import 'package:objectbox/objectbox.dart';

/// domaine
@Entity()
class Field {
  @Id()
  int id;
  String name;
  
  Field({
    required this.id,
    required this.name,
  });
}
