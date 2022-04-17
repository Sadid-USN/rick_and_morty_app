import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/bloc/character_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // @override
  // void initState() {
  //   // context
  //   //     .read<CharacterBloc>()
  //   //     .add(const CharacterEvent.fetch(name: '', page: 1));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromRGBO(86, 86, 86, 0.8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Search',
              hintStyle: const TextStyle(color: Colors.white),
            ),
            onChanged: (value) {
              // context.read<CharacterBloc>().add(
              //       CharacterEvent.fetch(name: value, page: 1),
              //);
            },
          ),
        ),
        // state.when(
        //   loading: () {
        //     return Center(
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: const [
        //           CircularProgressIndicator(
        //             strokeWidth: 2,
        //           ),
        //           SizedBox(
        //             width: 10,
        //           ),
        //           Text('Loading...'),
        //         ],
        //       ),
        //     );
        //   },
        //   loaded: (characterModelLoaded) {
        //     return Text('${characterModelLoaded.info}');
        //   },
        //   error: () => const Text('Nothing found'),
        // ),
      ],
    );
  }
}
