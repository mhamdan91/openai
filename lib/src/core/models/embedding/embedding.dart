import 'package:collection/collection.dart';
import 'sub-models/data.dart';
import 'sub-models/usage.dart';

class OpenAIEmbeddingsModel {
  List<OpenAIEmbeddingsDataModel> data;
  String model;
  OpenAIEmbeddingsUsageModel usage;
  OpenAIEmbeddingsModel({
    required this.data,
    required this.model,
    required this.usage,
  });

  factory OpenAIEmbeddingsModel.fromMap(Map<String, dynamic> map) {
    return OpenAIEmbeddingsModel(
      data: List<OpenAIEmbeddingsDataModel>.from(
        map['data'].map<OpenAIEmbeddingsDataModel>(
          (x) => OpenAIEmbeddingsDataModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      model: map['model'] as String,
      usage: OpenAIEmbeddingsUsageModel.fromMap(
          map['usage'] as Map<String, dynamic>),
    );
  }

  @override
  bool operator ==(covariant OpenAIEmbeddingsModel other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.data, data) &&
        other.model == model &&
        other.usage == usage;
  }

  @override
  int get hashCode => data.hashCode ^ model.hashCode ^ usage.hashCode;

  @override
  String toString() =>
      'OpenAIEmbeddingsModel(data: $data, model: $model, usage: $usage)';
}
