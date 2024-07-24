import 'package:flutter/material.dart';

class showTrip extends StatefulWidget {
  const showTrip({super.key});

  @override
  State<showTrip> createState() => _showTripState();
}

class _showTripState extends State<showTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('รายการทริป'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('ปลายทาง'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilledButton(
                    onPressed: () {},
                    child: const Text(
                      'ทั้งหมด',
                      style: TextStyle(fontSize: 12),
                )),
                FilledButton(
                    onPressed: () {},
                    child: const Text(
                      'เอเชีย',
                      style: TextStyle(fontSize: 12),
                )),
                FilledButton(
                    onPressed: () {},
                    child: const Text(
                      'ยุโรป',
                      style: TextStyle(fontSize: 12),
                )),
                FilledButton(
                    onPressed: () {},
                    child: const Text(
                      'อาเซียน',
                      style: TextStyle(fontSize: 12),
                )),
              ],
            ),
            Column(
              children: [
                // ignore: prefer_const_constructors
                Row(
                  children: const [
                    Row(
                      children: [
                        Text('อันซีนสวิตเซอร์แลน'),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                        width: 150, // set the desired width
                        child: Image.asset('assets/images/logo.png'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('ประเทศสวิตเซอแลนด์'),
                              Text('ระยะเวลา 10 วัน'),
                            Text('ราคา 9,999 บาท'),
                            ],
                          ),
                        ),
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FilledButton(onPressed: (){}, 
                            child: const Text('รายละเอียดเพิ่มเติม')),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
