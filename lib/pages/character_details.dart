import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/character_bloc.dart';
import '../bloc/character_state.dart';
import '../data/models/character_model.dart';

class CharacterDetails extends StatelessWidget {
  final CharacterModel item;
  const CharacterDetails({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Details'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocBuilder<CharacterCubit, CharacterCubitState>(
          builder: (context, state) {
        return SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Hero(
                  tag: item.image,
                  child: Container(
                    //  margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      image: DecorationImage(
                          image: NetworkImage(item.image), fit: BoxFit.cover),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 10),
                          child: Text(
                            item.id.toString(),
                            style: TextStyle(
                                color: Colors.blueGrey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    item.name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.blueGrey[600],
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    item.gender,
                    style: TextStyle(
                        color: Colors.blueGrey[600],
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    item.species,
                    style: TextStyle(
                        color: Colors.blueGrey[600],
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    item.status,
                    style: TextStyle(
                        color: Colors.blueGrey[600],
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
