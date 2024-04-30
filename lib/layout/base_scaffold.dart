import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realworldflutterbloc/home/home_page.dart';
import 'package:realworldflutterbloc/layout/cubit/nav_cubit.dart';
import 'package:realworldflutterbloc/signin/signin_page.dart';
import 'package:realworldflutterbloc/signup/signup_page.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  const BaseScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select((NavCubit cubit) => cubit.state.tab);
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: TextButton(
            onPressed: () {
              context.read<NavCubit>().setTab(NavTab.home);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: Text(
              'conduit',
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          actions: [
            _NavTextButton(
              name: 'Home',
              tab: NavTab.home,
              selectedTab: selectedTab,
              page: const HomePage(),
            ),
            _NavTextButton(
              name: 'Sign in',
              tab: NavTab.signin,
              selectedTab: selectedTab,
              page: const SignInPage(),
            ),
            _NavTextButton(
              name: 'Sign up',
              tab: NavTab.signup,
              selectedTab: selectedTab,
              page: const SignUpPage(),
            ),
          ],
        ),
        body: body,
      ),
    );
  }
}

class _NavTextButton extends StatelessWidget {
  const _NavTextButton({
    required this.tab,
    required this.name,
    required this.selectedTab,
    required this.page,
  });

  final NavTab tab;
  final String name;
  final NavTab selectedTab;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<NavCubit>().setTab(tab);
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Text(
        name,
        style: TextStyle(
          fontSize: 16,
          color: selectedTab == tab
              ? Theme.of(context).highlightColor
              : Theme.of(context).colorScheme.tertiary,
        ),
      ),
    );
  }
}
