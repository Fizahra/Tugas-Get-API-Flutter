import 'package:flutter/material.dart';
import 'package:tugas_get_api_flutter/model.dart';
import 'package:tugas_get_api_flutter/repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Staff> listStaff = [];
  Repository repository = Repository();

  getData() async {
    listStaff = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return Container(
              child: Text(listStaff[index].name),
            );
          }),
          separatorBuilder: ((context, index) {
            return Divider();
          }),
          itemCount: listStaff.length),
    );
  }
}
