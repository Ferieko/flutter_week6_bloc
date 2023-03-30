import 'package:flutter/material.dart';
import 'package:flutter_week6_bloc/feature/contact/model/contact_model.dart';

//part 'contact_bloc.dart';

@immutable
abstract class ContactState{}
class ContactInitial extends ContactState{}

class OnLoadingAddContact extends ContactState{}

class OnSuccesAddContact extends ContactState{
  final List<ContactModel> result;

  OnSuccesAddContact(this.result);
}
class OnFailedAddContact extends ContactState{}
