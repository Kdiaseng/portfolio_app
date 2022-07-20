import 'package:portfolio_app/model/ability_model.dart';
import 'package:portfolio_app/model/academic_model.dart';
import 'package:portfolio_app/model/experience_model.dart';
import 'package:portfolio_app/model/presentation_model.dart';

class MainBloc {
  late PresentationModel _presentation;
  late String _aboutMe;
  late List<AcademicModel> _academics;
  late List<ExperienceModel> _experiences;
  late List<AbilityModel> _abilities;
  late List<String> _interestAreas;

  PresentationModel get presentation => _presentation;

  String get aboutMe => _aboutMe;

  List<AcademicModel> get academics => _academics;

  List<ExperienceModel> get experiences => _experiences;

  List<AbilityModel> get abilities => _abilities;

  List<String> get interestAreas => _interestAreas;

  MainBloc(
      PresentationModel presentation,
      String about,
      List<AcademicModel> academics,
      List<ExperienceModel> experiences,
      List<AbilityModel> abilities,
      List<String> interestAreas) {
    _presentation = presentation;
    _aboutMe = about;
    _academics = academics;
    _abilities = abilities;
    _interestAreas = interestAreas;
    _experiences = experiences;
  }
}
