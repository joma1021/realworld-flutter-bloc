import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realworldflutterbloc/common/widgets/tags.dart';
import 'package:realworldflutterbloc/models/article.dart';

class ArticleItem extends StatelessWidget {
  final Article article;
  const ArticleItem({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child:
                    Image.network(width: 30, height: 30, article.author.image),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      article.author.username,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                  ),
                  Text(article.createdAt,
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                article.title,
                style: GoogleFonts.ptSans(
                    textStyle: Theme.of(context).textTheme.titleMedium),
              ),
              Text(
                article.description,
                style: GoogleFonts.sourceSerif4(
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    child: Text(
                      'Read more...',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 6),
                  alignment: Alignment.centerRight,
                  child: Tags(tags: article.tagList),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
