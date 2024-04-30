import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  final List<String> tags;
  const Tags({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return tagsToRow(tags);
  }
}

Widget tagsToRow(List<String> tags) {
  List<_Tag> tagList = [];
  for (var tagName in tags) {
    tagList.add(_Tag(name: tagName));
  }

  return Wrap(
    children: tagList,
  );
}

class _Tag extends StatelessWidget {
  final String name;
  const _Tag({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.tertiary),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        name,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
