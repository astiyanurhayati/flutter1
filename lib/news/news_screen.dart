import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        itemNews(),
        itemNews(),
        itemNews(),
      ],
    ));
  }

  Widget itemNews() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 4,
        child: IntrinsicHeight(
          child: InkWell(
            onTap: () {
              const snackBar = SnackBar(
                content: Text("Item Clicked!"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/news.jpg',
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Global food concerns rise as Russia halts Ukraine grain deal",
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "VelasNews",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: Colors.orange),
                        ),
                        Text(
                          "Global food concerns rise as Russia halts Ukraine grain deal “It’s really outrageous,” said Biden speaking in Wilmington, Delaware, on Saturday. “There’s no merit to what they’re doing. The U.N. negotiated that deal and that should be the end of it.”",
                          maxLines: 4,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
