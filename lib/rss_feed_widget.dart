import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_loading_sample/article_container_widget.dart';
import 'package:image_loading_sample/zenn_articles_provider.dart';

class RssFeedPage extends ConsumerWidget {
  const RssFeedPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articlesAsync = ref.watch(rssFeedArticleProvider);
    return articlesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
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
                ref.invalidate(rssFeedArticleProvider);
              });
        });
  }
}
