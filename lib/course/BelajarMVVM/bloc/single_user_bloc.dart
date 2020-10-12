import 'package:bloc/bloc.dart';
import 'package:my_first_flutter/course/BelajarMVVM/model/single_user.dart';

class SingleUserBloc extends Bloc<int, SingleUser>{

  @override
  SingleUser get initialState => UninitializedSingleUser();

  @override
  Stream<SingleUser> mapEventToState(int event) async* {
    try{
      SingleUser singleUser = await SingleUser.getSingleUserFromAPI(event);
      yield singleUser;
    } catch (_){
      //
    }
  }
}