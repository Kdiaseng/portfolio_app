import 'package:portfolio_app/model/academic_model.dart';
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


