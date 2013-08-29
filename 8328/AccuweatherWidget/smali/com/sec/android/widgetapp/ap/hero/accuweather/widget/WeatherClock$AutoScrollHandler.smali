.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;
.super Landroid/os/Handler;
.source "WeatherClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;


# direct methods
.method private constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1981
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1981
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 1984
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_1

    .line 1985
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1986
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmAutoScroll()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v6, :cond_2

    .line 1987
    :cond_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3600(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1988
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3600(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->removeMessages(I)V

    .line 2006
    :cond_1
    :goto_0
    return-void

    .line 1993
    :cond_2
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getLocationIndex()I
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3700(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1994
    .local v0, index:I
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3

    .line 1995
    const/4 v0, 0x0

    .line 1997
    :cond_3
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1302(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/lang/String;)Ljava/lang/String;

    .line 1998
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFlickingDirection:I
    invoke-static {v1, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2602(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)I

    .line 1999
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setUiWithDatabaseData()V

    .line 2001
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3600(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2002
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3600(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->interval:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v6, v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
