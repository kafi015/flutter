import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return const DesktopView();
        } else if (constraints.maxWidth > 600) {
          return const TabletView();
        } else {
          return const MobileView();
        }
      },
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: width *.13),
          child: const Text('Flutter Responsive Design'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Episodes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: width*.13),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'About',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.13, vertical: height * 0.13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 SizedBox(
                  width: width*0.30,
                  child: const Text(
                    'In this tutorial, we will go over the basics of using Flutter Web for development. '
                    'We\'ll talk about Responsive Layouts, Building for all devices, Hover Feedback, '
                    'and the basics of routing.',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Join Course',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: width *.13),
          child: const Text('Flutter Responsive Design'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Episodes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: width*.05),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'About',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.13,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'In this tutorial, we will go over the basics of using Flutter Web for development. '
                  'We\'ll talk about Responsive Layouts, Building for all devices, Hover Feedback, '
                  'and the basics of routing.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.13,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Join Course',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: width*0.1),
            child: Text('Flutter Responsive Design',style: TextStyle(fontSize: width*0.04),),
          )
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Text('Hello')
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.13,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(fontSize: width * 0.07, fontWeight: FontWeight.w900),textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'In this tutorial, we will go over the basics of using Flutter Web for development. '
                  'We\'ll talk about Responsive Layouts, Building for all devices, Hover Feedback, '
                  'and the basics of routing.',
              style: TextStyle(fontSize: width*0.04),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.13,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Join Course',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
