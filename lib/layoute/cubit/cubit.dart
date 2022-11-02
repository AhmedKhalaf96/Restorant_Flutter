import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/layoute/cubit/states.dart';

class FoodCubit extends Cubit<FoodStates> {
  FoodCubit() : super(FoodInitialState());

  static FoodCubit get(context) => BlocProvider.of(context);


}