import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:srhqwebsite/src/commons/responsive/size_config.dart';
import 'package:srhqwebsite/src/commons/responsive/themes/theme_provider.dart';

class Header extends ConsumerStatefulWidget {
  final tabController;

  const Header({super.key, required this.tabController});

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends ConsumerState<Header>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Text(
                    'SRHQ',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                        ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                height: 45,
                width: SizeConfig.blockSizeHorizontal! * 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.0, 6.0),
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5.0,
                    ),
                  ],
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: TabBar(
                  controller: widget.tabController,
                  labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 1.5,
                      ),
                  // give the indicator a decoration (color and border radius)
                  // indicator: BoxDecoration(

                  //   borderRadius: BorderRadius.circular(
                  //     50.0,
                  //   ),
                  //   color: Theme.of(context).colorScheme.secondary,
                  // ),
                  labelColor: Theme.of(context).colorScheme.primary,
                  unselectedLabelColor: Theme.of(context).colorScheme.secondary,
                  tabs: const [
                    // first tab [you can add an icon using the icon property]
                    Tab(
                      text: 'Localpasal',
                    ),

                    // second tab [you can add an icon using the icon property]
                    Tab(
                      text: 'Localpasal POS',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.light_mode,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {
                      // checking if the current theme mode is light
                      if (ref.read(themeModeProvider.notifier).state ==
                          ThemeMode.light) {
                        // if it is light, then set it to dark
                        ref.read(themeModeProvider.notifier).state =
                            ThemeMode.dark;
                      } else {
                        // if it is dark, then set it to light
                        ref.read(themeModeProvider.notifier).state =
                            ThemeMode.light;
                      }
                    },
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Icon(
                    Icons.info_outline,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
