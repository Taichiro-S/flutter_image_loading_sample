import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_loading_sample/article_container_widget.dart';
import 'package:image_loading_sample/articles_provider.dart';
import 'package:image_loading_sample/topic_provider.dart';
import 'package:lottie/lottie.dart';

class RssFeedPage extends ConsumerWidget {
  const RssFeedPage({super.key});
  static const topics = ['python', 'flutter', 'javascript', 'ruby', 'swift'];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTopic = ref.watch(topicProvider);
    final articlesAsync = ref.watch(articlesProvider(topic: selectedTopic));
    return DefaultTabController(
        length: topics.length,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Zenn RSS Feed'),
              bottom: TabBar(
                isScrollable: true,
                tabs: topics.map((topic) {
                  return Tab(text: topics[topics.indexOf(topic)]);
                }).toList(),
                onTap: (value) async {
                  ref
                      .read(topicProvider.notifier)
                      .updateTopic(topic: topics[value]);
                },
              ),
            ),
            body: articlesAsync.when(
                loading: () => Lottie.asset('assets/loading.json'),
                error: (error, stackTrace) =>
                    Center(child: Text(error.toString())),
                data: (articles) {
                  return RefreshIndicator(
                      child: ListView.builder(
                        itemCount: articles.length,
                        itemBuilder: (context, index) {
                          final article = articles[index];
                          return ArticleContainerWidget(article: article);
                        },
                      ),
                      onRefresh: () async {
                        ref.invalidate(articlesProvider);
                      });
                })));
  }
}
