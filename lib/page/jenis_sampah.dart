import 'package:flutter/material.dart';
import 'package:sampahku_app/model/model_jenissampah.dart';

class JenisSampah extends StatelessWidget {
  const JenisSampah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            title: const Text(
              'SAMPAHKU',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
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
      body: ListView.builder(
        itemCount: modelJenissampahList.length,
        itemBuilder: (context, index) {
          final ModelJenissampah place = modelJenissampahList[index];
          return Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                Text(
                  place.title,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Image.asset(place.imageAsset),
                Text(
                  place.description,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

