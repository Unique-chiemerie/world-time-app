import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'world_list.dart';

class Kantry {
  String timezone;
  String utc_datetime;
  String utc_offset;

  Kantry(
      {required this.timezone,
      required this.utc_datetime,
      required this.utc_offset});

  factory Kantry.fromJson(Map<String, dynamic> json) {
    return Kantry(
      timezone: json['timezone'],
      utc_datetime: json["utc_datetime"],
      utc_offset: json["utc_offset"],
    );
  }
}

Future<Kantry> fetchcountry(String Tamzone) async {
  final datafetch = await http.get(
    Uri.parse('http://worldtimeapi.org/api/timezone/$Tamzone'),
  );
  if (datafetch.statusCode == 200) {
    return Kantry.fromJson(
      jsonDecode(datafetch.body),
    );
  } else {
    throw Exception('failed to get $Tamzone');
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainApp(),
    ),
  );
}

class mainApp extends StatefulWidget {
  const mainApp({super.key});

  @override
  State<mainApp> createState() => _mainAppState();
}

class _mainAppState extends State<mainApp> {
  late Future<List<Kantry>> futurama;

  @override
  void initState() {
    super.initState();
    futurama = fetchAllcountries();
  }

  Future<List<Kantry>> fetchAllcountries() async {
    final List<Kantry> cuntry = [];
    for (final countryItem in countrylist) {
      final response = await fetchcountry(countryItem.name);
      print(response);
      final worldtime = Kantry(
          timezone: response.timezone,
          utc_datetime: response.utc_datetime,
          utc_offset: response.utc_offset);
      cuntry.add(worldtime);
    }
    return cuntry;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('World Date and time'),
      ),
      body: FutureBuilder(
        future: futurama,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Text('Error from our developers');
          } else if (snapshot.hasData) {
            final snappy = snapshot.data!;
            return ListView.builder(
                itemCount: countrylist.length,
                itemBuilder: (context, index) {
                  final countries = countrylist[index];
                  final dayta = snappy[index];
                  final readabletime =
                      DateFormat('EEEE, MMMM d, y - h:mm a').format(
                    DateTime.parse(dayta.utc_datetime),
                  );
                  return ListTile(
                    title: Text(dayta.timezone),
                    subtitle: Text(readabletime),
                    leading: countries.pic,
                  );
                });
          }
          return const Center(child: Text('No data found'));
        },
      ),
    );
  }
}
