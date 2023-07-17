import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:android_x_storage/android_x_storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _androidXStoragePlugin = AndroidXStorage();

  int _platform = 0;
  String _x = "empty";
  String _download = "empty";
  String _documents = "empty";
  String _pictures = "empty";
  String _dcim = "empty";
  String _alarms = "empty";
  String _ringtones = "empty";
  String _notifications = "empty";
  String _music = "empty";
  String _movies = "empty";
  String _podcasts = "empty";
  String _sdcard = "empty";
  List<String> _usb = [];
  @override
  void initState() {
    super.initState();
    platform();
    x();
    download();
    documents();
    pictures();
    dcim();
    alarms();
    ringtones();
    notifications();
    music();
    movies();
    podcasts();
    sdcard();
    usb();
  }

  Future<void> platform() async {
    int platform;
    try {
      platform = await _androidXStoragePlugin.getPlatformVersion() ?? 0;
    } on PlatformException {
      platform = 0;
    }
    if (!mounted) return;

    setState(() {
      _platform = platform;
    });
  }

  Future<void> x() async {
    String x;
    try {
      x = await _androidXStoragePlugin.getExternalStorageDirectory() ??
          "no external";
    } on PlatformException {
      x = "error";
    }
    if (!mounted) return;
    setState(() {
      _x = x;
    });
  }

  Future<void> download() async {
    String download;
    try {
      download =
          await _androidXStoragePlugin.getDownloadsDirectory() ?? "no download";
    } on PlatformException {
      download = "error";
    }
    if (!mounted) return;
    setState(() {
      _download = download;
    });
  }

  Future<void> documents() async {
    String documents;
    try {
      documents = await _androidXStoragePlugin.getDocumentsDirectory() ??
          "no documents";
    } on PlatformException {
      documents = "error";
    }
    if (!mounted) return;
    setState(() {
      _documents = documents;
    });
  }

  Future<void> pictures() async {
    String pictures;
    try {
      pictures =
          await _androidXStoragePlugin.getPicturesDirectory() ?? "no pictures";
    } on PlatformException {
      pictures = "error";
    }
    if (!mounted) return;
    setState(() {
      _pictures = pictures;
    });
  }

  Future<void> dcim() async {
    String dcim;
    try {
      dcim = await _androidXStoragePlugin.getDCIMDirectory() ?? "no dcim";
    } on PlatformException {
      dcim = "error";
    }
    if (!mounted) return;
    setState(() {
      _dcim = dcim;
    });
  }

  Future<void> alarms() async {
    String alarms;
    try {
      alarms = await _androidXStoragePlugin.getAlarmsDirectory() ?? "no alarms";
    } on PlatformException {
      alarms = "error";
    }
    if (!mounted) return;
    setState(() {
      _alarms = alarms;
    });
  }

  Future<void> ringtones() async {
    String ringtones;
    try {
      ringtones = await _androidXStoragePlugin.getRingtonesDirectory() ??
          "no ringtones";
    } on PlatformException {
      ringtones = "error";
    }
    if (!mounted) return;
    setState(() {
      _ringtones = ringtones;
    });
  }

  Future<void> notifications() async {
    String notifications;
    try {
      notifications =
          await _androidXStoragePlugin.getNotificationsDirectory() ??
              "no notifications";
    } on PlatformException {
      notifications = "error";
    }
    if (!mounted) return;
    setState(() {
      _notifications = notifications;
    });
  }

  Future<void> music() async {
    String music;
    try {
      music = await _androidXStoragePlugin.getMusicDirectory() ?? "no music";
    } on PlatformException {
      music = "error";
    }
    if (!mounted) return;
    setState(() {
      _music = music;
    });
  }

  Future<void> movies() async {
    String movies;
    try {
      movies = await _androidXStoragePlugin.getMoviesDirectory() ?? "no movies";
    } on PlatformException {
      movies = "error";
    }
    if (!mounted) return;
    setState(() {
      _movies = movies;
    });
  }

  Future<void> podcasts() async {
    String podcasts;
    try {
      podcasts =
          await _androidXStoragePlugin.getDownloadsDirectory() ?? "no podcasts";
    } on PlatformException {
      podcasts = "error";
    }
    if (!mounted) return;
    setState(() {
      _podcasts = podcasts;
    });
  }

  Future<void> sdcard() async {
    String sdcard;
    try {
      sdcard = await _androidXStoragePlugin.getSDCardStorageDirectory() ??
          "no sdcard";
    } on PlatformException {
      sdcard = "error";
    }
    if (!mounted) return;
    setState(() {
      _sdcard = sdcard;
    });
  }

  Future<void> usb() async {
    List<String> usb;
    try {
      usb = await _androidXStoragePlugin.getUSBStorageDirectories() ?? [];
    } on PlatformException {
      usb = ["error"];
    }
    if (!mounted) return;
    setState(() {
      _usb = usb;
    });
  }

  @override
  Widget build(BuildContext context) {
/*    print('Running on SDK : ${_platform.toString()}\n');
    print('USB Paths : $_usb\n');
    print('External Storage Path : $_x\n');
    print('Download Path : $_download\n');
    print('Documents Path : $_documents\n');
    print('DCIM Path : $_dcim\n');
    print('Pictures Path : $_pictures\n');
    print('Podcasts Path : $_podcasts\n');
    print('Music Path : $_music\n');
    print('Movies Path : $_movies\n');
    print('Notifications Path : $_notifications\n');
    print('Alarms Path : $_alarms\n');
    print('Ringtones Path : $_ringtones\n');
    print('SDCard Path : $_sdcard\n');*/
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Android Storage Plugin'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Running on SDK : ${_platform.toString()}\n'),
                Text('USB Paths : $_usb\n'),
                Text('External Storage Path : $_x\n'),
                Text('Download Path : $_download\n'),
                Text('Documents Path : $_documents\n'),
                Text('DCIM Path : $_dcim\n'),
                Text('Pictures Path : $_pictures\n'),
                Text('Podcasts Path : $_podcasts\n'),
                Text('Music Path : $_music\n'),
                Text('Movies Path : $_movies\n'),
                Text('Notifications Path : $_notifications\n'),
                Text('Alarms Path : $_alarms\n'),
                Text('Ringtones Path : $_ringtones\n'),
                Text('SDCard Path : $_sdcard\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
