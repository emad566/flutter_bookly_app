import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/features/home/presenation/views/widgets/build_home_bar.dart';
import 'package:flutter_bookly_app/features/home/presenation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(context, setState),
      body: const HomeViewBody(),
    );
  }
}
