part of 'nav_cubit.dart';

enum NavTab { home, aricle, signin, signup }

final class NavState extends Equatable {
  final NavTab tab;
  const NavState({this.tab = NavTab.home});

  @override
  List<Object> get props => [tab];
}

final class NavInitial extends NavState {}
