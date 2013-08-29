.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2$1;
.super Ljava/lang/Object;
.source "WeatherClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->httpResponse(IILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefresh(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Z)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startAutoScroll()V

    .line 418
    return-void
.end method
