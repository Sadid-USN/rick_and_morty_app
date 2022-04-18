import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:rick_and_morty/bloc/character_bloc.dart';
import 'package:rick_and_morty/bloc/character_state.dart';
import 'package:rick_and_morty/data/models/character_model.dart';
import 'package:rick_and_morty/data/repository/character_repo.dart';
import 'package:rick_and_morty/pages/character_details.dart';
import 'package:rick_and_morty/pages/search_page.dart';

class CharacterPage extends StatefulWidget {
  CharacterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  final repository = CharacterRepo();

  final ScrollController _scrollController = ScrollController();
  bool loading = false, allLoaded = false;
  _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll == 0) {
      context.read<CharacterCubit>().getCharacters();
    }
  }

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocBuilder<CharacterCubit, CharacterCubitState>(
          builder: (context, state) {
        if (state.status == Status.loading || state.status == Status.initial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status == Status.success ||
            state.status == Status.empty) {
          return Scrollbar(
            child: AnimationLimiter(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: state.characterList.length,
                itemBuilder: (context, index) {
                  if (index == state.characterList.length) {
                    if (state.status == Status.success) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return Center(
                        child: Text(
                          '⭐️⭐️⭐️ The End ⭐️⭐️⭐️',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 25),
                        ),
                      );
                    }
                  } else {
                    CharacterModel item = state.characterList[index];
                    return AnimationConfiguration.staggeredGrid(
                      position: index,
                      duration: const Duration(milliseconds: 400),
                      columnCount: state.characterList.length,
                      child: ScaleAnimation(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BlocProvider(
                                create: (context) =>
                                    CharacterCubit()..getCharacters(),
                                child: CharacterDetails(
                                  item: item,
                                ),
                              );
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, top: 16),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                CardModel(
                                  item: item,
                                ),
                                ImageCard(
                                  item: item,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          );
        } else {
          return const Center(child: Text('Oups'));
        }
      }),
    );
  }
}

class ImageCard extends StatelessWidget {
  ImageCard({required this.item});
  final CharacterModel item;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: item.image,
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        height: 130,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: NetworkImage(
                item.image,
              ),
              fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0.0, 2.0),
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CardModel extends StatelessWidget {
  CardModel({required this.item});
  final CharacterModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            color: Color(0xFFDAECE4),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(0.0, 2.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          height: 200,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: 200,
                      child: Text(
                        item.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.blueGrey[900],
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Text(
                    item.id.toString(),
                    style: TextStyle(
                        color: Colors.blueGrey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 30),
                  ),
                ],
              ),
              // Text(
              //   'Learn more about this character',
              //   style: TextStyle(
              //       color: Colors.blueGrey[500],
              //       fontWeight: FontWeight.w600,
              //       fontSize: 18),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
