import 'package:json_annotation/json_annotation.dart';
part 'get_number_fact_model.g.dart';

@JsonSerializable()
class GetNumberFactModel {

  @JsonKey(name: 'text')
	String? text;

  @JsonKey(name: 'number')
	int? number;

  @JsonKey(name: 'found')
	bool? found;

  @JsonKey(name: 'type')
	String? type;

	GetNumberFactModel({this.text, this.number, this.found, this.type});

	factory GetNumberFactModel.fromJson(Map<String, dynamic> json) {
		return _$GetNumberFactModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GetNumberFactModelToJson(this);
}
