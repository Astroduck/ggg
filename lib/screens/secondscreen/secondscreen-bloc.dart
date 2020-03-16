import 'dart:async';
import 'package:ggg/bloc/bloc.dart';

class Example2Bloc extends Bloc {

  Stream<String> get example => _exampleSubject.stream;
  Sink<String> get exampleSink => _exampleSubject.sink;
  final StreamController<String> _exampleSubject = StreamController<String>();

  Example2Bloc();

  void dispose() {
    _exampleSubject.close();  
  }
}