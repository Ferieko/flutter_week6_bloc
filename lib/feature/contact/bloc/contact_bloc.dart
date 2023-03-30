import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_week6_bloc/feature/contact/bloc/contact_event.dart';
import 'package:flutter_week6_bloc/feature/contact/bloc/contact_state.dart';
import 'package:flutter_week6_bloc/feature/contact/model/contact_model.dart';

//part  'contact_event.dart';
//part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent,ContactState>{
  List<ContactModel> contacctData = [
    ContactModel(name: 'joni',nomorTelepon: '0341'),
    ContactModel(name: 'jono', nomorTelepon: '0431')
  ];
  ContactBloc():super(ContactInitial()){
    on<AddContact>(_onAddedContact);

  }

  Future<void> _onAddedContact(
      AddContact event, Emitter<ContactState> emit) async{
    emit(OnLoadingAddContact());

    await Future.delayed(const Duration(seconds: 2));

    emit(OnSuccesAddContact(contacctData));

    emit(OnFailedAddContact());
  }
}

