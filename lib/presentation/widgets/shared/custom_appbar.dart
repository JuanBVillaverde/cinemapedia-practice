import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme.titleMedium;
    return SafeArea(
      bottom: false,
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Icon(Icons.movie_outlined, color: colors.primary,),
            const SizedBox(width: 5.0,),
            Text('Cinemapedia', style: textStyle,),
            const Spacer(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.search,),)
          ],
        ),
      ),
    ));
  }
}