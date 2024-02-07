import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_loading_sample/format_published_date.dart';
import 'package:image_loading_sample/article_model.dart';
import 'package:image_loading_sample/skelton_container_widget.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class ArticleContainerWidget extends ConsumerWidget {
  const ArticleContainerWidget({
    super.key,
    required this.article,
  });
  final Article article;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final now = DateTime.now();
    final publishedDate = formatPublishedDate(article.pubDate, now);
    return StickyHeaderBuilder(
        builder: (context, stuckAmount) {
          return Container(
            height: 50.0,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: [
                  Color.fromARGB(255, 107, 202, 255),
                  Color.fromARGB(255, 179, 152, 255)
                ],
                stops: [
                  0.0,
                  1.0,
                ],
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: Row(children: [
              Text(
                publishedDate,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          );
        },
        content: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: article.enclosureUrl != ''
                  ? CachedNetworkImage(
                      imageUrl: article.enclosureUrl,
                      placeholder: (context, url) => SkeltonContainerWidget(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          radius: 10),
                      errorWidget: (context, url, error) => const Image(
                          image: AssetImage('assets/images/no_image.png')))
                  : const Image(
                      image: AssetImage('assets/images/no_image.png')),
            )
          ],
        ));
  }
}
