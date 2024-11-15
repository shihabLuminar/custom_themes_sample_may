import 'package:custom_themes_sample/home_screen_controller.dart';
import 'package:custom_themes_sample/second_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(),
              ));
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Theme.of(context).primaryColor)),
                onPressed: () {},
                child: Text(
                  "data",
                  style: Theme.of(context).textTheme.bodyLarge,
                )),
            Switch(
              value: context.watch<ThemeController>().isDark,
              onChanged: (value) {
                context.read<ThemeController>().onThemetoggled(value);
              },
            ),
            AnimatedContainer(
              curve: Curves.linear,
              duration: Duration(seconds: 2),
              alignment: context.watch<ThemeController>().isDark
                  ? Alignment.topLeft
                  : Alignment.bottomRight,
              color: context.watch<ThemeController>().isDark
                  ? Colors.red
                  : Colors.blue,
              height: context.watch<ThemeController>().isDark ? 200 : 100,
              width: context.watch<ThemeController>().isDark ? 200 : 300,
              child: Text("helloo"),
            ),
            SizedBox(
              height: 20,
            ),
            AnimatedOpacity(
              opacity: context.watch<ThemeController>().isDark ? 1 : .5,
              duration: Duration(seconds: 2),
              child: Container(
                color: Colors.red,
                height: 200,
                width: 200,
              ),
            ),
            Hero(
              tag: "1",
              child: Image.network(
                  height: 100,
                  "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            )
          ],
        ),
      ),
    );
  }
}
