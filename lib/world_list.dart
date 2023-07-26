import 'package:flutter/material.dart';

class countrybio {
  String name;
  Image pic;
  countrybio({required this.name, required this.pic});
}

List<countrybio> countrylist = [
  countrybio(
    name: 'Africa/Lagos',
    pic: Image.network(
        'https://cdn-icons-png.flaticon.com/128/9993/9993892.png'),
  ),
  countrybio(
    name: 'Europe/London',
    pic: Image.network(
        'https://cdn-icons-png.flaticon.com/128/8363/8363075.png'),
  ),
  countrybio(
    name: 'Africa/Cairo',
    pic: Image.network('https://cdn-icons-png.flaticon.com/128/197/197558.png'),
  ),
  countrybio(
    name: 'America/Detroit',
    pic: Image.network(
        'https://cdn-icons-png.flaticon.com/128/5373/5373324.png'),
  ),
  countrybio(
    name: 'America/New_York',
    pic: Image.network(
        'https://cdn-icons-png.flaticon.com/128/4800/4800901.png'),
  ),
  countrybio(
    name: 'Asia/Qatar',
    pic: Image.network('https://cdn-icons-png.flaticon.com/128/197/197618.png'),
  ),
  countrybio(
    name: 'Asia/Singapore',
    pic: Image.network('https://cdn-icons-png.flaticon.com/128/197/197496.png'),
  ),
  countrybio(
    name: 'Asia/Tokyo',
    pic: Image.network('https://cdn-icons-png.flaticon.com/128/197/197604.png'),
  ),
  countrybio(
    name: 'Australia/Melbourne',
    pic: Image.network('https://cdn-icons-png.flaticon.com/128/323/323367.png'),
  ),
  countrybio(
    name: 'Europe/Paris',
    pic: Image.network('https://cdn-icons-png.flaticon.com/128/323/323315.png'),
  ),
  countrybio(
    name: 'Europe/Moscow',
    pic: Image.network(
        'https://cdn-icons-png.flaticon.com/128/9994/9994030.png'),
  ),
  countrybio(
    name: 'Europe/Rome',
    pic: Image.network('https://cdn-icons-png.flaticon.com/128/323/323325.png'),
  ),
  countrybio(
    name: 'Indian/Maldives',
    pic: Image.network(
        'https://cdn-icons-png.flaticon.com/128/7493/7493701.png'),
  ),
  countrybio(
    name: 'Pacific/Fiji',
    pic: Image.network('https://cdn-icons-png.flaticon.com/128/197/197492.png'),
  ),
  countrybio(
    name: 'Europe/Madrid',
    pic: Image.network('https://cdn-icons-png.flaticon.com/128/323/323365.png'),
  ),
  countrybio(
    name: 'Asia/Dubai',
    pic: Image.network(
        'https://cdn-icons-png.flaticon.com/128/3054/3054093.png'),
  ),
];
