import 'package:objectbox/objectbox.dart';

/// matiere
@Entity()
class Subject {
  @Id()
  int id;
  @Index()
  @Unique()
  int reference;
  String name;
  var type;

  Subject({
    required this.id,
    required this.reference,
    required this.name,
    required this.type,
  });
}
