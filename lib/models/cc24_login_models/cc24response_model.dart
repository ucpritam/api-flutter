import 'package:json_annotation/json_annotation.dart';

part 'cc24response_model.g.dart';

@JsonSerializable()
class CC24Response {
  String Data;
  String ErrorMessage;
  int StatusCode;
  String dataType;

  CC24Response({
    required this.Data,
    required this.ErrorMessage,
    required this.StatusCode,
    required this.dataType,
  });

  factory CC24Response.fromJson(Map<String, dynamic> json) =>
      _$CC24ResponseFromJson(json);
}
