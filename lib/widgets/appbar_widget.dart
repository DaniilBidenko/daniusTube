import 'package:flutter/material.dart';

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget{
  const AppbarWidget({Key? key}) : preferredSize = const Size.fromHeight(kToolbarHeight), super(key: key);
  @override
  final Size preferredSize;
  State<AppbarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent
                ),
                onPressed: () {}, 
                child: Center(
                  child: Row(
                    children: [
                              Icon(Icons.smart_display,
                        color: Colors.green,
                        size: 50,
                      ),
                      Text('DaniusTube',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ],
                  ),
                )
                ),
              SizedBox(
                width: 300,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    labelText: 'Введите запрос',
                    suffixIcon: Icon(Icons.keyboard),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)
                        )
                      ),
                    )
                  ), 
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    border: Border.all(
                      width: 0,
                      color: Colors.black
                      )
                  ),
                  child: Center(
                    child: Icon(Icons.search),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Center(
                    child: Icon(Icons.mic),
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.grey,
                   ),
                    onPressed: () {}, 
                    child: Text('+ Создать',
                    style: TextStyle(
                      color: Colors.white
                      ),
                    )
                  ),
                ), 
                SizedBox(
                  width: 25,
                ),
                Icon(Icons.notifications,
                color: Colors.white,
                size: 30,
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Center(
                    child: Text('Д'),
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
