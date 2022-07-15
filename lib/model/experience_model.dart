class ExperienceModel {
  final String company;
  final List<Details> experienceDetails;

  ExperienceModel({required this.company, required this.experienceDetails});
}

class Details {
  final String role;
  final String descriptions;

  Details({required this.role, required this.descriptions});
}
