import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app01_task2/providers/places_data_provider.dart';
import 'package:flutter_app01_task2/screens/places_list_screen.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(WondersApp());

}

class WondersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: providers,
        child: MaterialApp(
          title:"Travel",
          theme: ThemeData(
              appBarTheme: AppBarTheme(backgroundColor: Colors.blueAccent),),


          home: placesListScreen(),

        ));
  }
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<placeDataProvider>(create: (_) => placeDataProvider())
];
