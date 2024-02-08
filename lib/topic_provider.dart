import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'topic_provider.g.dart';

@riverpod
class Topic extends _$Topic {
  @override
  String build() {
    return 'python';
  }

  updateTopic({required String topic}) {
    state = topic;
  }
}
