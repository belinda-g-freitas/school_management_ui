import 'package:objectbox/objectbox.dart';

@Entity()

/// salle
class Room {
  @Id()
  int id;
  @Index()
  @Unique()
  int reference;
  String name;
  int capacity;

  Room({
    required this.id,
    required this.reference,
    required this.name,
    required this.capacity,
  });
}
