import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Label extends StatelessWidget {
  const Label(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context).textTheme.headlineLarge,
      );
}

class Paragraph extends StatelessWidget {
  const Paragraph(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge,
      );
}

class RichParagraph extends StatelessWidget {
  const RichParagraph(this.texts, {super.key});

  factory RichParagraph.rich(String text) => RichParagraph(
        [TextSpan(text: text)],
      );

  final List<TextSpan> texts;

  @override
  Widget build(BuildContext context) => Text.rich(
        TextSpan(
          style: Theme.of(context).textTheme.bodyLarge,
          children: texts,
        ),
      );
}

class Link extends StatelessWidget {
  const Link(this.url, {super.key});

  final String url;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => launchUrl(Uri.parse(url)),
        child: Text(
          url,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.blue),
        ),
      );
}
