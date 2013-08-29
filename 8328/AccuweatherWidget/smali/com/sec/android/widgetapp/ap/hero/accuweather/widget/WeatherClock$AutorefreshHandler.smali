.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;
.super Landroid/os/Handler;
.source "WeatherClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutorefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;


# direct methods
.method private constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1859
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 1863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1864
    .local v16, now:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getNextRefreshTime(Landroid/content/Context;)J

    move-result-wide v11

    .line 1865
    .local v11, lasttime:J
    cmp-long v3, v11, v16

    if-gtz v3, :cond_1

    const/4 v7, 0x1

    .line 1866
    .local v7, need_refresh:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v14

    .line 1867
    .local v14, nexttime:J
    const-string v3, "yy/MM/dd HH:mm:ss"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    .line 1873
    .local v13, len:I
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nt="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ARH] now = ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] lt = ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] need RF = ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->removeMessages(I)V

    .line 1877
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->removeMessages(I)V

    .line 1878
    const/4 v3, 0x0

    sub-long v18, v14, v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1879
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nt - now ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v18, v14, v16

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " now : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->sdf:Ljava/text/SimpleDateFormat;
    invoke-static {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/text/SimpleDateFormat;

    move-result-object v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lt : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->sdf:Ljava/text/SimpleDateFormat;
    invoke-static {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/text/SimpleDateFormat;

    move-result-object v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    if-eqz v7, :cond_2

    .line 1885
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need RF = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$602(Z)Z

    .line 1887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getAllCityList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$902(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1891
    :cond_0
    new-instance v10, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.ap.hero.accuweather.action.ACTION_STOP_THREAD"

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1892
    .local v10, intent:Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.widgetapp.ap.hero.accuweather"

    const-string v4, "com.sec.android.widgetapp.ap.hero.accuweather.service.AccuBCService"

    invoke-direct {v9, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    .local v9, component:Landroid/content/ComponentName;
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoScrollHandler()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefreshHandler()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mResponseCnt:I
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$402(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)I

    .line 1901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$502(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)I

    .line 1902
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_2

    .line 1904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->performNetworkAccess(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;IZZI)V
    invoke-static/range {v3 .. v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;IZZI)V

    .line 1902
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1865
    .end local v5           #i:I
    .end local v7           #need_refresh:Z
    .end local v9           #component:Landroid/content/ComponentName;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v13           #len:I
    .end local v14           #nexttime:J
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1907
    .restart local v7       #need_refresh:Z
    .restart local v13       #len:I
    .restart local v14       #nexttime:J
    :cond_2
    return-void
.end method
