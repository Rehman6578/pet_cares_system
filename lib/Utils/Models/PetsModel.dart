import 'package:pet_cares_system/Utils/Models/Doctor.dart';

class PetAppointment {
  final String id;
  final String petName;
  final String ownerName;
  final DateTime appointmentDate;
  final DateTime appointmentTime;
  final String doctorName;
  final String clinicName;
  final String reasonForVisit;
  final String additionalNotes;
  final bool isConfirmed;

  PetAppointment({
    required this.id,
    required this.petName,
    required this.ownerName,
    required this.appointmentDate,
    required this.appointmentTime,
    required this.doctorName,
    required this.clinicName,
    required this.reasonForVisit,
    required this.additionalNotes,
    required this.isConfirmed,
  });
}
