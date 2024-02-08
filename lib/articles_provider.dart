import 'package:image_loading_sample/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'articles_provider.g.dart';

@riverpod
Future<List<Article>> articles(ArticlesRef ref, {required String topic}) async {
  try {
    final response =
        await http.get(Uri.parse('https://zenn.dev/topics/$topic/feed'));
    if (response.statusCode != 200) {
      throw Exception('Failed to load RSS feed');
    }
    var document = XmlDocument.parse(utf8.decode(response.bodyBytes));
    var items = document.findAllElements('item');
    await Future.delayed(const Duration(seconds: 3));
    return items.map((node) => Article.fromXml(node)).toList();
  } catch (e) {
    throw Exception('Failed to load RSS feed: $e');
  }
}
