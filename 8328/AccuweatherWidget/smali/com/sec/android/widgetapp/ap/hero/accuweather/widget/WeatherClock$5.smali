.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$5;
.super Landroid/database/ContentObserver;
.source "WeatherClock.java"


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
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 823
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$5;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 825
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 826
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$5;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createEventUi:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1602(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Z)Z

    .line 827
    return-void
.end method
