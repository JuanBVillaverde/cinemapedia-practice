import 'package:flutter/material.dart';

class FullscreenLoader extends StatelessWidget {
   FullscreenLoader({super.key});


  



Stream<String> getLoadingMessages(){

final messages = <String>[
    'Loading movies',
    'Making popcorn',
    'Loading popular',
    'Almost there...'
    'This is taking more than expected',

  ];

  return Stream.periodic(const Duration(milliseconds: 1200), (step){
    return messages[step];
  });
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [const Text('Wait Please'),
        SizedBox(height: 10.0,),
        CircularProgressIndicator(strokeWidth: 2.0,),
        SizedBox(height: 10.0,),


        StreamBuilder(
          stream: getLoadingMessages(),
          
          builder: ( context,  snapshot) {
           if(!snapshot.hasData) return const Text('Loading...');

           return Text(snapshot.data!);
          },
        ),
        ],
      ),
    );
  }
}