import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:xml/xml.dart';
part 'rss_feed_article_model.freezed.dart';

@freezed
class RssFeedArticle with _$RssFeedArticle {
  const factory RssFeedArticle({
    required String title,
    required DateTime pubDate,
    required String enclosureUrl,
  }) = _RssFeedArticle;

  factory RssFeedArticle.fromXml(XmlElement node) {
    final dateFormat = DateFormat('EEE, dd MMM yyyy HH:mm:ss z', 'en_US');
    DateTime parsedDate;
    try {
      parsedDate =
          dateFormat.parse(node.findElements('pubDate').first.innerText);
    } catch (e) {
      parsedDate = DateTime.now();
    }
    return RssFeedArticle(
      title: node.findElements('title').first.value ?? '',
      pubDate: parsedDate,
      enclosureUrl:
          node.findElements('enclosure').first.getAttribute('url') ?? '',
    );
  }
}
