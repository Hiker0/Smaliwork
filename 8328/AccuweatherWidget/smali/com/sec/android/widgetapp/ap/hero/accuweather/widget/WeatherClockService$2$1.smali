.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2$1;
.super Ljava/lang/Object;
.source "WeatherClockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;

    iget-object v1, v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;

    iget-object v2, v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget v2, v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->what:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method
