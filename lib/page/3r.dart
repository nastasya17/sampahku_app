import 'package:flutter/material.dart';
import 'package:sampahku_app/page/recycle_page.dart' as recycle_page;
import 'package:sampahku_app/page/reduce_page.dart' as reduce_page;
import 'package:sampahku_app/page/reuse_page.dart' as reuse_page;

class DaurUlang extends StatefulWidget {
  const DaurUlang({Key? key}) : super(key: key);

  @override
  State<DaurUlang> createState() => _DaurUlangState();
}

class _DaurUlangState extends State<DaurUlang>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          '3 R',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        bottom: TabBar(
          controller: controller,
          tabs: const <Widget>[
            Tab(text: 'Reduce'),
            Tab(text: 'Reuse'),
            Tab(text: 'Recycle'),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 3, 71, 50),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 3, 71, 50),
                Color.fromARGB(255, 4, 107, 75),
                Color.fromARGB(255, 23, 104, 255),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          reduce_page.ReducePage(),
          reuse_page.ReusePage(),
          recycle_page.RecyclePage(),
        ],
      ),
    );
  }
}
