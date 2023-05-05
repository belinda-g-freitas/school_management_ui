import 'package:objectbox/objectbox.dart';

@Entity()
class Equipment {
  @Id()
  int id;
  String name;
  int quantity;
  
  Equipment({
    required this.id,
    required this.name,
    required this.quantity,
  });
}
