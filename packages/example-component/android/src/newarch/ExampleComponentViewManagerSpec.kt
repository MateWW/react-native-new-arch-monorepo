package com.examplecomponent

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.ExampleComponentViewManagerDelegate
import com.facebook.react.viewmanagers.ExampleComponentViewManagerInterface

abstract class ExampleComponentViewManagerSpec<T : View> : SimpleViewManager<T>(), ExampleComponentViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = ExampleComponentViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
