import 'package:portfolio_app/model/ability_model.dart';
import 'package:portfolio_app/model/academic_model.dart';
import 'package:portfolio_app/model/experience_model.dart';
import 'package:portfolio_app/model/presentation_model.dart';

final presentationModel = PresentationModel(
    name: 'Kaleb Dias da Silva',
    description:
        'Graduando em engenharia da computação, atualmente atuo como Líder de projetos '
        'no instituto conecthus, mesmo assim continuo sendo apaixonado pro '
        'programção principalmente mobile');

const aboutMe =
    "Em 2015 me formei em engenharia de computação na Universidade Estadual...";

final List<AcademicModel> graduations = [
  AcademicModel(
      graduate: 'Graduação : Engenharia da computação',
      place: 'UEA - Universidade Estadual do Amazonas',
      period: '2010 - 2015'),
  AcademicModel(
      graduate: 'Pós-Graduação : MBA Gerenciamentos de Projetos',
      place: 'UNIP - Universidade Paulista',
      period: '2016 - 2017'),
].toList();

//Experience - IATECAM

final engineeringAnalyst = Details(
    role: 'Analista de Engenharia', descriptions: 'Fiz uma monte coisas');

// Instituto Conecthus

final systemDeveloperJr = Details(
    role: 'Desenvolvedor de Sistema Jr', descriptions: 'Desenvolvimento C#');

final systemDeveloperPL = Details(
    role: 'Desenvolvedor de Sistema Pl', descriptions: 'Fiz uma monte coisas');

final systemDeveloperSr = Details(
    role: 'Desenvolvedor de Sistema Sr', descriptions: 'Fiz uma monte coisas');

final projectLeader =
    Details(role: 'Líder de Projetos', descriptions: 'Fiz uma monte coisas');

final experienceIatecam = ExperienceModel(
    company: 'IATECAM', experienceDetails: [engineeringAnalyst]);

final experienceConecthus = ExperienceModel(
    company: 'Conechus',
    experienceDetails: [
      systemDeveloperJr,
      systemDeveloperPL,
      systemDeveloperSr,
      projectLeader
    ]);

final List<ExperienceModel> experiences = [
  experienceIatecam,
  experienceConecthus
];

final abilityFlutter =
    AbilityModel(name: 'Flutter', description: 'Flutter é muito top mesmo');
final abilityReact =
    AbilityModel(name: 'React', description: 'React é muito top mesmo');
final abilityKotlin =
    AbilityModel(name: 'Kotlin', description: 'Kotlin é muito top mesmo');
final abilityCharp =
    AbilityModel(name: 'C#', description: 'C# é muito top mesmo');
final abilitySprintBoot = AbilityModel(
    name: 'Spring Boot', description: 'Spring boot é muito top mesmo');

final List<AbilityModel> abilities = [
  abilityFlutter,
  abilityReact,
  abilityKotlin,
  abilityCharp,
  abilitySprintBoot
];

final List<String> interestingAreas = [
  'Lider de projetos',
  'Desenvolvimento Mobile Flutter',
  'Desenvolvimento Mobile Android',
  'Líder Técnico',
  'Engenheiro de Software'
];
