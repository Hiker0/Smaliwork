.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;
.super Ljava/lang/Object;
.source "WeatherClock.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-static {p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    .line 294
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mBound:Z

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCallback:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;->registerCallback(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    .line 306
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mBound:Z

    .line 307
    return-void
.end method
