
import 'package:flutter/material.dart';
import 'package:todoapp/screen/categories_screen.dart';
import 'package:todoapp/screen/homeScreen.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:const CircleAvatar(
                backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/ACg8ocLbY5UQLQih1h5jfY1KOmYRKgcTWOgeuhjZkDPi1hFPoVg=s360-c-no'),
               ),
                accountName:const  Text("Salinda Gnarathna"),
                accountEmail:const  Text("salindalakshan@gmail.com"),
                decoration:const BoxDecoration(color: Colors.blue),
                
                ),
                ListTile(
                  leading:const Icon(Icons.home),
                  title:const Text('Home'),
                  onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>HomeScreen() )),
                ),
                ListTile(
                  leading:const Icon(Icons.view_list),
                  title:const Text('Categories'),
                  onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>CategoriesScreen() )),

                )
          ],
        ),


      ),
    );
  }
}
