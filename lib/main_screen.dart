import 'package:flutter/material.dart';
import 'package:proyek_akhir/detail_screen.dart';
import 'package:proyek_akhir/mhs_data.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Mahasiswa'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final MhsData data = mhsDataList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  data: data,
                );
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(data.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            data.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(data.nim),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(data.location),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: mhsDataList.length,
      ),
    );
  }
}
