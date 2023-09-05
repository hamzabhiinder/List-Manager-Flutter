import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/ui/screens/onboarding/bloc/onboarding_state.dart';


class OnboardingCubit extends Cubit<OnboardingState>{
  OnboardingCubit() : super(OnboardingState.init());

  onPageChange({int? index}){
    emit(state.copyWith(index: index));
  }

}