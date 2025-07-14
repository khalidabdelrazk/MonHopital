
import 'package:mon_hopital/features/login/data/models/login_request_body.dart';
import 'package:mon_hopital/features/login/data/repository/login_repository.dart';
import 'package:mon_hopital/features/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  void emitLoadingState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepository.login(loginRequestBody);

    response.when(success: (data) {
      emit(LoginState.success(data));
    }, error: (error) {
      emit(LoginState.error(error.apiErrorModel.message ?? 'An error occurred'));
    });
  }
}
