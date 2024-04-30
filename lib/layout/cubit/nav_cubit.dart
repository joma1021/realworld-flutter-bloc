import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'nav_state.dart';

class NavCubit extends Cubit<NavState> {
  NavCubit() : super(NavInitial());

  void setTab(NavTab tab) => emit(NavState(tab: tab));
}
