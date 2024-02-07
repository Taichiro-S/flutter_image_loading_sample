import 'package:image_loading_sample/rss_feed_article_model.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'zenn_articles_provider.g.dart';

@riverpod
Future<List<RssFeedArticle>> rssFeedArticle(RssFeedArticleRef ref) async {
  final response =
      await http.get(Uri.parse('https://zenn.dev/topics/python/feed'));

  if (response.statusCode == 200) {
    var document = XmlDocument.parse(utf8.decode(response.bodyBytes));
    var items = document.findAllElements('item');

    return items.map((node) => RssFeedArticle.fromXml(node)).toList();
  } else {
    throw Exception('Failed to load RSS feed');
  }
}
