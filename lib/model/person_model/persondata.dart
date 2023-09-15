import 'package:hive/hive.dart';
 part 'persondata.g.dart';
// part 'workoutmodel.g.dart';

@HiveType(typeId: 2)
class persondata {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String personname;

  @HiveField(2)
  String  personage ;

  @HiveField(3)
  String personweight;
   
  @HiveField(4)
  String personheight ; 

  @HiveField(5)
  String? personImage;

  persondata({
  required this.personname,
  required this.personage,
  required this.personweight,
  required this.personheight,
  this.id,
  this.personImage,
  
  
});
}