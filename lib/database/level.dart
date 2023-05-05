/// niveau
import 'package:objectbox/objectbox.dart';

@Entity()
class Level {
  @Id()
  int id;
  int level;
  
  Level({
    required this.id,
    required this.level,
  });
}
