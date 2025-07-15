


import 'package:daniustub/bloc/danius_bloc.dart';
import 'package:daniustub/bloc/danius_state.dart';
import 'package:daniustub/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class HomeScreen extends StatefulWidget{
  HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: BlocBuilder<DaniusBloc, DaniusState>(
        builder: (context, state) {
          if (state is DaniusLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DaniusLoaded) {
            final danius =  state.danius;
            return Center(
              child: GridView.builder(
                itemCount: danius.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  ), 
                itemBuilder: (context, index) {
                  return Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.red
                    ),
                    child: Column(
                      children: [
                        Image.network(danius[index].thumbNailsUrl),
                        Text(danius[index].title),
                        Text(danius[index].description),
                        Text(danius[index].publishedAt)
                      ],
                    ),
                  );
                }
              )
            );
          } else if (state is DaniusError) {
            return Center(
              child: Text('Ошибка загрузки идиот'),
            );
          } 
          return Text('Да-да Алеша, соси Бибу!');
        }
      )
    );
  }
}