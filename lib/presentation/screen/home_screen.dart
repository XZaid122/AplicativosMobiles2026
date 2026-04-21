import 'dart:io';
import 'package:flutter/material.dart';
import 'package:counter_appv2/presentation/screen/mision_screen.dart';

import 'one_screen.dart';
import 'two_screen.dart';
import 'three_screen.dart';
import 'login_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('CounterApp'),
            actions: [IconButton(onPressed: (){
              exit(0);
            }, 
            icon: Icon(Icons.logout_rounded))],
            //leading: Icon(Icons.menu_rounded),
          ),
          drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(child: Image.asset('image/logo.png')),

      ListTile(
        title: Text('counterApp'),
        onTap: () {
          Navigator.pop(context);
        },
      ),

      Divider(),

      ListTile(
        title: Text('counterApp'),
        subtitle: Text('encuentra nuestra mision'),
        leading: Icon(Icons.military_tech),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MisionScreen()));
        },
      ),

      ListTile(
        title: Text('One Screen'),
        leading: Icon(Icons.looks_one),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OneScreen()));
        },
      ),

      ListTile(
        title: Text('Two Screen'),
        leading: Icon(Icons.looks_two),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TwoScreen()));
        },
      ),

      ListTile(
        title: Text('Three Screen'),
        leading: Icon(Icons.looks_3),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ThreeScreen()));
        },
      ),

      ListTile(
        title: Text('Login'),
        leading: Icon(Icons.login),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginScreen()));
        },
      ),
    ],
  ),
),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$counter',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                Text('Click${counter == 1 ? '' : 's'}',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _CustomButton(
                icon: Icons.refresh_outlined, 
                onpressed: () {
                setState(() {
                  counter = 0;
                });
              },
              nombre: 'Reset',),
                SizedBox(height: 10,),
                _CustomButton(
                  icon: Icons.plus_one_outlined, 
                  onpressed: () {
                  setState(() {
                    counter++;
                  });
                },
                nombre: 'Aumentar',),
                SizedBox(height: 10,),
                _CustomButton(
                  icon: Icons.exposure_minus_1_rounded, 
                  onpressed: () {
                    setState(() {
                      if (counter <=0){
                        return;
                      }
                      counter--;
                    });
                },
                nombre: 'Disminuir',),
                SizedBox(height: 10,)
            ],
          ),
        );
  }
}

class _CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onpressed;
  final String nombre;

  const _CustomButton({
    required this.icon,
    this.onpressed,
    required this.nombre
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 20,
      hoverColor: Colors.amber,
      tooltip: '$nombre',
      onPressed: onpressed,
      child: Icon(icon),
      );
  }
}