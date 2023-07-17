![Image](https://i.imgur.com/5dpnbVy.png)
## Android TV
![Image](https://i.imgur.com/ZK5NJTd.png)
## Features

- Get The External Storage path
- Get paths for both USB and SDCard
- Work on both Android Phone and TV
- Get Download and DCIM Folders...etc


## Installation

Run This to install the package .
```sh
flutter pub add android_x_storage
```

## How To Use It
Create new instance of AndroidXStorage class
```dart
  final _androidXStorage = AndroidXStorage();
```
To get the External Storage
```dart
_androidXStorage.getExternalStorageDirectory();
```
Then call any function to return the public folder
```dart
_androidXStorage.getDownloadsDirectory();
_androidXStorage.getDocumentsDirectory();
_androidXStorage.getPicturesDirectory();
_androidXStorage.getDCIMDirectory();
_androidXStorage.getAlarmsDirectory();
_androidXStorage.getRingtonesDirectory();
_androidXStorage.getNotificationsDirectory();
_androidXStorage.getMusicDirectory();
_androidXStorage.getMoviesDirectory();
_androidXStorage.getPodcastsDirectory();
```

To get List of path to USBs
```dart
_androidXStorage.getUSBStorageDirectories();
```
To get the SDCard path
```dart
_androidXStorage.getSDCardStorageDirectory();
```
> Bonus: ``_androidXStorage.getPlatformVersion()`` return the SDK number to request permissions.

see The Example App.
## LICENSE
```
BSD 3-Clause License

Copyright (c) 2023 Djeddi Yacine
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```