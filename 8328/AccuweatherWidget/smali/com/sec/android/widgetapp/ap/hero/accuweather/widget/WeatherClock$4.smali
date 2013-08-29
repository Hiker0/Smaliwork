.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;
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
    .line 542
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const v13, 0x7f02000b

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 544
    iget v8, p1, Landroid/os/Message;->what:I

    if-eq v8, v12, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "today"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    .line 549
    .local v6, today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    if-eqz v6, :cond_0

    .line 550
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "tempscale"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 551
    .local v5, toScaleSetting:I
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v8, v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setmTTStoScaleSetting(I)V

    .line 553
    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;-><init>()V

    .line 554
    .local v1, drawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->current_temp:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTempScale()I

    move-result v9

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v10

    invoke-static {v9, v5, v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->convertTemp(IIF)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    if-ne v5, v12, :cond_3

    .line 557
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->single_temp_c:Landroid/widget/ImageView;

    const v9, 0x7f020009

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->single_temp_icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 563
    :goto_1
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->single_temp_c:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->single_temp_icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_state:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getIconNum()I

    move-result v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getDateTimeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 568
    .local v7, updatedTime:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->last_update:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 571
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 572
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 573
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    .line 574
    .local v3, item:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_city:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->setTemperature(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->setTimeZone(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTempScale()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->setTempScale(I)V

    .line 578
    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getSunRiseTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->setSunRiseTime(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getSunSetTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->setSunSetTime(Ljava/lang/String;)V

    .line 580
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTz:Ljava/util/TimeZone;

    .line 583
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getSummerTime()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 584
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getSummerTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->setDTS(I)V

    .line 597
    .end local v2           #i:I
    .end local v3           #item:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    :cond_2
    :goto_3
    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getIconNum()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->setWeatherIcon(I)V

    .line 599
    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getSunRiseTime()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, day:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getSunSetTime()Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, night:Ljava/lang/String;
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "===== mSetUIDataHandler(): day = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", night="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v9, v9, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTz:Ljava/util/TimeZone;

    invoke-virtual {v8, v9, v0, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isDay(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->setDayOrNight(Z)V

    .line 603
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setTTSInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;)V
    invoke-static {v8, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;)V

    .line 604
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setDrawingInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;)V

    .line 605
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    invoke-static {v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFlickingDirection:I
    invoke-static {v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2600(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->startAnimation(I)V

    .line 606
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mIsRefreshing:Z
    invoke-static {v8, v11}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2702(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Z)Z

    .line 607
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFlickingDirection:I
    invoke-static {v8, v11}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2602(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)I

    goto/16 :goto_0

    .line 560
    .end local v0           #day:Ljava/lang/String;
    .end local v4           #night:Ljava/lang/String;
    .end local v7           #updatedTime:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->single_temp_c:Landroid/widget/ImageView;

    const v9, 0x7f02000a

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v8, v8, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->single_temp_icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 586
    .restart local v2       #i:I
    .restart local v3       #item:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    .restart local v7       #updatedTime:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1, v11}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->setDTS(I)V

    goto :goto_3

    .line 571
    .end local v3           #item:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method
