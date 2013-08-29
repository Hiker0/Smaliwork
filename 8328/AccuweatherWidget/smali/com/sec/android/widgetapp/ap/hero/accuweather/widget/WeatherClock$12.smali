.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter

    .prologue
    .line 2430
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2432
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2457
    :cond_0
    :goto_0
    return-void

    .line 2434
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLoading()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$4300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    goto :goto_0

    .line 2439
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 2440
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLoading()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$4300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 2442
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    .line 2443
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const v1, 0x7f0a0007

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showError(I)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)V

    goto :goto_0

    .line 2445
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const v1, 0x7f0a0008

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showError(I)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)V

    goto :goto_0

    .line 2448
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 2449
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLoading()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$4300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 2451
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mIsRefreshing:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2702(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Z)Z

    .line 2452
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setUiWithDatabaseData()V

    goto :goto_0

    .line 2432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
