.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;
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
    .line 426
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const v8, 0x7f0a0009

    const/4 v10, 0x0

    .line 428
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 538
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 430
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 431
    .local v6, value:Ljava/lang/String;
    const-string v7, "android.intent.action.TIME_TICK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 433
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 434
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->getDrawingInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    move-result-object v1

    .line 435
    .local v1, drawinginfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    if-eqz v1, :cond_4

    .line 436
    const-string v0, ""

    .line 437
    .local v0, day:Ljava/lang/String;
    const-string v5, ""

    .line 438
    .local v5, night:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 439
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 440
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    .line 441
    .local v4, item:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 442
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getSunRiseTime()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getSunSetTime()Ljava/lang/String;

    move-result-object v5

    .line 449
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    :cond_2
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTz:Ljava/util/TimeZone;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->isDay()Z

    move-result v9

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkDayOrNightAnimation(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Z)I
    invoke-static {v7, v8, v0, v5, v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 450
    .local v2, effect:I
    const/16 v7, 0x100

    if-eq v2, v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 451
    const/16 v7, 0x101

    if-ne v2, v7, :cond_6

    .line 452
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->setDayOrNight(Z)V

    .line 456
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->changeDayNightAnimation()V

    .line 460
    .end local v0           #day:Ljava/lang/String;
    .end local v1           #drawinginfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    .end local v2           #effect:I
    .end local v5           #night:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isNewDay()Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 461
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createEventUi:Z
    invoke-static {v7, v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1602(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Z)Z

    .line 462
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->onResume()V

    .line 532
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 533
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->buildTimeCurrentClock()V

    goto/16 :goto_0

    .line 453
    .restart local v0       #day:Ljava/lang/String;
    .restart local v1       #drawinginfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    .restart local v2       #effect:I
    .restart local v5       #night:Ljava/lang/String;
    :cond_6
    const/16 v7, 0x102

    if-ne v2, v7, :cond_3

    .line 454
    invoke-virtual {v1, v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->setDayOrNight(Z)V

    goto :goto_1

    .line 464
    .end local v0           #day:Ljava/lang/String;
    .end local v1           #drawinginfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    .end local v2           #effect:I
    .end local v5           #night:Ljava/lang/String;
    :cond_7
    const-string v7, "com.sec.android.widgetapp.ap.hero.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 465
    const-string v7, ""

    const-string v8, " mSHandler syncDM "

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setUiWithDatabaseData()V

    goto :goto_2

    .line 467
    :cond_8
    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "clock.date_format_changed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 471
    :cond_9
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mSHandler EU : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createEventUi:Z
    invoke-static {v7, v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1602(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Z)Z

    .line 473
    const-string v7, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 474
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->onResume()V

    goto :goto_2

    .line 476
    :cond_a
    const-string v7, "HYBRID_WEATHER_EVENT_UPDATE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 477
    const-string v7, ""

    const-string v8, " mSHandler EU "

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createEventUi:Z
    invoke-static {v7, v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1602(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Z)Z

    goto/16 :goto_2

    .line 479
    :cond_b
    const-string v7, "HYBRID_WEATHER_MANUALREFRESH_DB_FULL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 480
    const-string v7, ""

    const-string v8, " mSHandler MR DB F "

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeDBFullUI()V
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1700(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    goto/16 :goto_2

    .line 482
    :cond_c
    const-string v7, "HYBRID_WEATHER_MANUALREFRESH_SETUI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 483
    const-string v7, ""

    const-string v8, " mSHandler MR setUI"

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setUiWithDatabaseData()V

    goto/16 :goto_2

    .line 485
    :cond_d
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 486
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoScrollHandler()V
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    goto/16 :goto_2

    .line 487
    :cond_e
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 488
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startAutoScroll()V

    goto/16 :goto_2

    .line 489
    :cond_f
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 490
    const-string v7, ""

    const-string v8, " mSHandler SD "

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->updateLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 492
    :cond_10
    const-string v7, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_OK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 493
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getSettings(Landroid/content/Context;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    move-result-object v8

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1902(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    .line 494
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v7

    if-gtz v7, :cond_11

    .line 495
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLocating()V
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 497
    :cond_11
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getAllCityList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeUi(Ljava/util/ArrayList;)V
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 498
    :cond_12
    const-string v7, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_START"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 499
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showLocating()V
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    goto/16 :goto_2

    .line 500
    :cond_13
    const-string v7, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_EXCEPTION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 501
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v7

    if-gtz v7, :cond_14

    .line 502
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLocating()V
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 504
    :cond_14
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showError(I)V
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)V

    goto/16 :goto_2

    .line 505
    :cond_15
    const-string v7, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_DATA_NETWORK_ERROR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 506
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v7

    if-gtz v7, :cond_16

    .line 507
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLocating()V
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 509
    :cond_16
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showError(I)V
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)V

    goto/16 :goto_2

    .line 510
    :cond_17
    const-string v7, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_ERROR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 511
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v7

    if-gtz v7, :cond_18

    .line 512
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLocating()V
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 514
    :cond_18
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showError(I)V
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)V

    goto/16 :goto_2

    .line 515
    :cond_19
    const-string v7, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_PROVIDER_ERR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 516
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v7

    if-gtz v7, :cond_1a

    .line 517
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLocating()V
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 519
    :cond_1a
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showError(I)V
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)V

    goto/16 :goto_2

    .line 520
    :cond_1b
    const-string v7, "com.sec.android.widgetapp.ap.hero.accuweather.action.NOT_ENOUGHT_SPACE_ERR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 521
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 522
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLocating()V
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 524
    :cond_1c
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const v8, 0x7f0a0040

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showError(I)V
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)V

    goto/16 :goto_2

    .line 525
    :cond_1d
    const-string v7, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_NETWORK_FAILED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 526
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 527
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLocating()V
    invoke-static {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 529
    :cond_1e
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iput-boolean v10, v7, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    .line 530
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const v8, 0x7f0a0007

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showError(I)V
    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)V

    goto/16 :goto_2

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
