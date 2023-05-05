import 'package:objectbox/objectbox.dart';

@Entity()
class School {
  @Id()
  int id;
  String name;
  String logo;
  String email;
  String address;
  List<String> phoneNumbers;
  
  School({
    required this.id,
    required this.name,
    required this.logo,
    required this.email,
    required this.address,
    required this.phoneNumbers,
  });
}
