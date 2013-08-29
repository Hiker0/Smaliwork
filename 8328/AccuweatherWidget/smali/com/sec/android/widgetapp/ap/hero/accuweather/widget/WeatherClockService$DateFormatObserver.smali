.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;
.super Landroid/database/ContentObserver;
.source "WeatherClockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateFormatObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)V
    .locals 1
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 246
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "clock.date_format_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    return-void
.end method
