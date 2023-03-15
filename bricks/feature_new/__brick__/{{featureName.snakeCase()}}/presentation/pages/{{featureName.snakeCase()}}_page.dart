import 'package:flutter/material.dart';
import '../../presentation/bloc/{{featureName.snakeCase()}}_bloc.dart';

class {{featureName.pascalCase()}}Page extends StatefulWidget {
  const {{featureName.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  State<{{featureName.pascalCase()}}Page> createState() => _{{featureName.pascalCase()}}PageState();
}

class _{{featureName.pascalCase()}}PageState extends State<{{featureName.pascalCase()}}Page> {
  final {{featureName.pascalCase()}}Bloc _bloc = {{featureName.pascalCase()}}Bloc();

  @override
  void initState() {
    _bloc.add({{featureName.pascalCase()}}DataEvent(id: 1321));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
