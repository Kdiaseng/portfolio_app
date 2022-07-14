import 'package:flutter/material.dart';
import 'package:portfolio_app/page/model/academic_model.dart';

class CardAcademicComponent extends StatelessWidget {
  const CardAcademicComponent({
    Key? key,
    required this.academicModel,
  }) : super(key: key);

  final AcademicModel academicModel;
  static const double minWidthCard = 450;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: minWidthCard),
      child: Material(
        elevation: 2,
        child: Container(
          width: size.width / 3,
          padding: const EdgeInsets.only(left: 30, bottom: 30, top: 30),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        academicModel.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      academicModel.place,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      academicModel.period,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontStyle: FontStyle.italic),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: Icon(
                  Icons.school_outlined,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
