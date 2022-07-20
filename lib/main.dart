import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.redAccent,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: LayoutBuilder(
                        builder: (context, constrains) =>
                            Stack(
                              fit: StackFit.expand,
                              children: const [
                                Positioned(
                                    top: 0,
                                    child: Banner(message: 'topStart', location: BannerLocation.topStart)
                                ),
                                Banner(message: 'topEnd', location: BannerLocation.topEnd),
                                Banner(message: 'bottomEnd', location: BannerLocation.bottomEnd),
                                Banner(message: 'bottomStart', location: BannerLocation.bottomStart),
                              ],
                            ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.purple),
                        )
                    ),
                  ],
                )
              ),
              Center(
                child: IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(onPressed: (){}, child: Text('align button')),
                      ),
                      ElevatedButton(onPressed: (){}, child: Text('Short')),
                      ElevatedButton(onPressed: (){}, child: const Text(
                        'Longest text everrr',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Baseline',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text(
                    'Baseline',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.black87, width: 3),
                  borderRadius: BorderRadius.all(const Radius.circular(18))
                ),
                child: const Image(
                  image: AssetImage('assets/diamond.png'),
                ),
              ),
              Container(
                color: Colors.red,
                child: Text("Merah"),
                height: 100,
                width: 100
              )
            ],
          ),
        ),
      ),
    );
  }
}
