import 'package:school_management_ui/enums.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Person {
  @Id()
  int id;
  @Index()
  int reference;
  String firstname;
  String lastname;
  @Transient()
  Gender gender;
  String email;
  String address;
  List<String> phoneNumbers;
  @Transient()
  Civility? civility;
  DateTime dateOfBirth;
  DateTime createdAt;
  DateTime updatedAt;
  String? profession;

  /// what actions can the user do in app: read, write, execute
  @Transient()
  Access access;

  int get dbAccess {
    _ensureStableAccessValues();
    return access.index;
  }

  set dbAccess(int value) {
    _ensureStableAccessValues();
    access = value >= 0 && value < Access.values.length ? Access.values[value] : Access.unknown;
  }

  int get dbGender {
    _ensureStableGenderValues();
    return gender.index;
  }

  set dbGender(int value) {
    _ensureStableGenderValues();
    gender = value >= 0 && value < Gender.values.length ? Gender.values[value] : Gender.other;
  }

  int? get dbCivility {
    _ensureStableCivilityValues();
    return civility?.index;
  }

  set dbCivility(int? value) {
    _ensureStableCivilityValues();
    civility = value == null
        ? null
        : value >= 0 && value < Civility.values.length
            ? Civility.values[value]
            : Civility.other;
  }

  Person({
    required this.id,
    required this.reference,
    required this.firstname,
    required this.lastname,
    required this.gender,
    required this.email,
    required this.address,
    required this.phoneNumbers,
    this.civility,
    required this.dateOfBirth,
    required this.createdAt,
    required this.updatedAt,
    this.profession,
    required this.access,
  });

  void _ensureStableAccessValues() {
    assert(Access.r.index == 0);
    assert(Access.w.index == 1);
    assert(Access.x.index == 2);
    assert(Access.unknown.index == 3);
  }

  void _ensureStableGenderValues() {
    assert(Gender.man.index == 0);
    assert(Gender.woman.index == 1);
    assert(Gender.other.index == 2);
  }

  void _ensureStableCivilityValues() {
    assert(Civility.m.index == 0);
    assert(Civility.mrs.index == 1);
    assert(Civility.miss.index == 2);
    assert(Civility.other.index == 3);
  }
}
