import 'package:flutter/material.dart';

Widget newsItemComponent(
  String title,
  String url,
  String publishedAt,
  BuildContext context,
) {
  return InkWell(
    onTap: () {
      // Navigator.of(context).push(
      //     MaterialPageRoute(builder: (context) => WebViewScreen(url: url)));
    },
    child: Container(
      padding: const EdgeInsets.all(20),
      width: 150,
      height: 180,
      color: Colors.grey,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white60),
            width: 150,
            height: 150,
          ), //image
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: 210,
                height: 50,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(publishedAt),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
