package com.examplecomponent

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = ExampleComponentViewManager.NAME)
class ExampleComponentViewManager :
  ExampleComponentViewManagerSpec<ExampleComponentView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): ExampleComponentView {
    return ExampleComponentView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: ExampleComponentView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "ExampleComponentView"
  }
}
