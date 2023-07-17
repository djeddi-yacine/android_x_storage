package dev.yacine.android_x_storage

import androidx.annotation.NonNull
import android.os.Environment

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** AndroidXStoragePlugin */
class AndroidXStoragePlugin: FlutterPlugin, MethodCallHandler {
  private lateinit var channel: MethodChannel

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "android_x_storage")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      "getPlatformVersion" -> {
        result.success(android.os.Build.VERSION.SDK_INT)
      }
      "getExternalStorageDirectory" -> {
        result.success(Environment.getExternalStorageDirectory().toString())
      }
      "getMusicDirectory" -> {
        result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MUSIC).toString())
      }
      "getAlarmsDirectory" -> {
        result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_ALARMS).toString())
      }
      "getNotificationsDirectory" -> {
        result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_NOTIFICATIONS).toString())
      }
      "getPicturesDirectory" -> {
        result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).toString())
      }
      "getDCIMDirectory" -> {
        result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).toString())
      }
      "getMoviesDirectory" -> {
        result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES).toString())
      }
      "getRingtonesDirectory" -> {
        result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_RINGTONES).toString())
      }
      "getPodcastsDirectory" -> {
        result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PODCASTS).toString())
      }
      "getDownloadsDirectory" -> {
        result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).toString())
      }
      "getDocumentsDirectory" -> {
        result.success(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS).toString())
      }
      else -> result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
