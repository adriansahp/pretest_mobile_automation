require "appium_lib"

capabilities = {
    caps:{
        deviceName: "YT911BUYFF",
        platformName: "Android",
        platformVersion: "6",
        appPackage: "com.loginmodule.learning",
        appActivity: "com.loginmodule.learning/.activities.LoginActivity",
        },
        appium_lib:{
            server_url: "http://0.0.0.0:4723/wd/hub",
            wait: 10
        }
}

@driver = Appium::Driver.new(capabilities, true)
@touch = Appium::TouchAction.new(@driver)
Appium.promote_appium_methods Object