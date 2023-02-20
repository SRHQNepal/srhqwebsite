import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:riverpod/riverpod.dart';
import 'package:srhqwebsite/src/commons/responsive/size_config.dart';
import 'package:srhqwebsite/src/presentation/home/components/Footer.dart';

import 'components/Header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // Creating a GlobalKey that uniquely identifies the Scaffold widget.
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Initializing the SizeConfig class
    SizeConfig().init(context);

    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(
          width: SizeConfig.blockSizeHorizontal! * 40, child: const Drawer()),
      // appBar: Responsive.isMobile(context)
      //     ? AppBar(
      //         elevation: 0,
      //         backgroundColor: Theme.of(context).colorScheme.background,
      //         leading: IconButton(
      //           icon: Icon(
      //             Icons.menu,
      //             color: Theme.of(context).colorScheme.primary,
      //           ),
      //           onPressed: () {
      //             _drawerKey.currentState?.openDrawer();
      //           },
      //         ),
      //         // actions: const [
      //         //   AppBarActionItems(),
      //         // ],
      //       )
      //     : const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Header(
                tabController: _tabController,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 100,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  LocalpasalLayout(),
                  LocalpasalPOSLayout(),
                ],
              ),
            ),
            const Footer()
          ]),
        ),
      ),
    );
  }
}

// Creating a widget with a container of a fixed size
class LocalpasalLayout extends StatelessWidget {
  const LocalpasalLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 40,
              width: SizeConfig.blockSizeHorizontal! * 40,
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal! * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Localpasal",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                              ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const SizedBox(width: 20.0, height: 100.0),
                        Text(
                          'Shop',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                        ),
                        const SizedBox(width: 20.0, height: 100.0),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Horizon',
                          ),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            animatedTexts: [
                              RotateAnimatedText(
                                'AWESOME',
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 5,
                                    ),
                              ),
                              RotateAnimatedText(
                                'OPTIMISTIC',
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 5,
                                    ),
                              ),
                              RotateAnimatedText(
                                'DIFFERENT',
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 5,
                                    ),
                              ),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Localpasal is a local business directory that helps you find local businesses in your area. It is a platform where you can find local businesses, products, and services. It is a platform where you can find local businesses, products, and services.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: SizeConfig.blockSizeHorizontal! * 1.5,
                              ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeHorizontal! * 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Learn More",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 1.5,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeHorizontal! * 2,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Lottie.network(
                'https://assets2.lottiefiles.com/packages/lf20_rVEgYArLER.json',
                height: SizeConfig.blockSizeHorizontal! * 40,
                width: SizeConfig.blockSizeHorizontal!,
                fit: BoxFit.fill),
          ),
        ],
      ),
      // Row(
      //   children: const [
      //     Text('Localpasal Brief Description'),
      //   ],
      // ),
    ]);
  }
}

// Creating a widget with a container of a fixed size
class LocalpasalPOSLayout extends StatelessWidget {
  const LocalpasalPOSLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 40,
              width: SizeConfig.blockSizeHorizontal! * 40,
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal! * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Localpasal POS",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                              ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Localpasal POS is a point of sale system that helps you manage your business. It is a platform where you can find local businesses, products, and services. It is a platform where you can find local businesses, products, and services.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: SizeConfig.blockSizeHorizontal! * 1.5,
                              ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeHorizontal! * 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Learn More",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 1.5,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeHorizontal! * 2,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_GpkgC3heHj.json',
                height: SizeConfig.blockSizeHorizontal! * 40,
                width: SizeConfig.blockSizeHorizontal!,
                fit: BoxFit.fill),
          ),
        ],
      ),
      Row(
        children: const [
          Text('Localpasal POS Brief Description'),
        ],
      ),
    ]);
  }
}
