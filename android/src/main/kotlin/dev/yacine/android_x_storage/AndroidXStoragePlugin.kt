package dev.yacine.android_x_storage

import android.content.Context
import android.hardware.usb.UsbDevice
import android.hardware.usb.UsbManager
import android.os.Environment

import androidx.annotation.NonNull
import androidx.core.content.ContextCompat

import java.io.File
import java.util.HashMap

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class AndroidXStoragePlugin : FlutterPlugin, MethodCallHandler {
  private lateinit var channel: MethodChannel
  private lateinit var applicationContext: Context

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    applicationContext = flutterPluginBinding.applicationContext
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
      "getSDCardStorageDirectory" -> {
        val sdCardPath = getSDCardPath()
        if (sdCardPath != null) {
          result.success(sdCardPath)
        } else {
          result.error("SDCardNotFound", "No SD card available", null)
        }
      }
      "getUSBStorageDirectories" -> {
        val usbPaths = getUSBPaths()
        result.success(usbPaths)
      }
      else -> {
        result.notImplemented()
      }
    }
  }

  private fun getSDCardPath(): String? {
    val externalStorageVolumes = ContextCompat.getExternalFilesDirs(applicationContext, null)
    for (file in externalStorageVolumes) {
      if (isSDCard(file)) {
        val path = file.path
        val sdCardPath = path.substringBefore("/Android/data")
        return sdCardPath
      }
    }
    return null
  }

  private fun isSDCard(file: File): Boolean {
    val state = Environment.getExternalStorageState(file)
    if (Environment.MEDIA_MOUNTED == state) {
      val removable = Environment.isExternalStorageRemovable(file)
      val emulated = Environment.isExternalStorageEmulated(file)
      return removable && !emulated
    }
    return false
  }

  private fun getUSBPaths(): List<String> {
    val usbManager = applicationContext.getSystemService(Context.USB_SERVICE) as UsbManager
    val usbDevices: HashMap<String, UsbDevice> = usbManager.deviceList
    val usbPaths = mutableListOf<String>()

    for (device in usbDevices.values) {
      val usbPath = "/storage/" + device.deviceName
      if (isDirectoryExists(usbPath)) {
        usbPaths.add(usbPath)
      }
    }
    return usbPaths
  }

  private fun isDirectoryExists(path: String): Boolean {
    val directory = File(path)
    return directory.exists() && directory.isDirectory
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
