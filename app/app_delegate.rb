class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'FlurryTest'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    builder = FlurrySessionBuilder.new
    builder.withLogLevel(FlurryLogLevelAll)
    .withCrashReporting(false)
    .withAppVersion("0.0.1")
    
    Flurry.startSession("xxx", withSessionBuilder: builder)

    true
  end
end
