import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:xml/xml.dart';
part 'article_model.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String title,
    required DateTime pubDate,
    required String enclosureUrl,
  }) = _Article;

  factory Article.fromXml(XmlElement node) {
    final dateFormat = DateFormat('EEE, dd MMM yyyy HH:mm:ss z', 'en_US');
    DateTime parsedDate;
    try {
      parsedDate =
          dateFormat.parse(node.findElements('pubDate').first.innerText);
    } catch (e) {
      parsedDate = DateTime.now();
    }
    return Article(
      title: node.findElements('title').first.value ?? '',
      pubDate: parsedDate,
      enclosureUrl:
          node.findElements('enclosure').first.getAttribute('url') ?? '',
    );
  }
}
