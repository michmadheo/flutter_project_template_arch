import 'package:equatable/equatable.dart';

class DemoDataRequest extends Equatable {
  final String id;

  const DemoDataRequest({required this.id});

  Map<String, dynamic> toJson() {
    return {"id": id};
  }

  @override
  List<Object> get props => [id];
}