.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$1;
.super Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService$Stub;
.source "WeatherClockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 108
    :cond_0
    return-void
.end method
