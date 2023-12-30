import 'package:bloc/bloc.dart';
import 'package:flutter_seller_app/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_seller_app/data/models/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/request/register_request_model.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const _Initial()) {
    on<_Register>((event, emit) async {
      emit(_Loading());
      final result = await AuthRemoteDatasource().register(event.model);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}