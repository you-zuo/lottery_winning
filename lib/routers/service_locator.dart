import 'package:get_it/get_it.dart';
import 'NavigateService.dart';

final GetIt getIt = GetIt();
    void setupLocator(){
     getIt.registerSingleton(NavigateService());
    }