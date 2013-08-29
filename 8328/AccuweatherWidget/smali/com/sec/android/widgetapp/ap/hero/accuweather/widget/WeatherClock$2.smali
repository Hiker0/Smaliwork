.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;
.super Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback$Stub;
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
    .line 310
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public httpResponse(IILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZI)V
    .locals 19
    .parameter "position"
    .parameter "responseCode"
    .parameter "location"
    .parameter "tempScaleSetting"
    .parameter "bool"
    .parameter "needRefresh"
    .parameter "responseStatus"
    .parameter "responseBody"
    .parameter "bConnected"
    .parameter "msgWhat"

    .prologue
    .line 327
    const/4 v3, 0x0

    .line 328
    .local v3, detailInfos:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;
    const/4 v2, 0x0

    .line 330
    .local v2, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;>;"
    const/4 v14, 0x1

    .line 332
    .local v14, readResult:I
    const-string v16, ""

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[pNA!!!!!!!!] RC= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCanceled:Z
    invoke-static/range {v18 .. v18}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", sC = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCanceled:Z
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$408(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$510(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    .line 339
    const/16 v16, 0xc8

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 340
    new-instance v13, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;

    invoke-direct {v13}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;-><init>()V

    .line 341
    .local v13, parser:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;
    invoke-static {}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v15

    .line 342
    .local v15, updateDate:Ljava/lang/String;
    new-instance v16, Lorg/xml/sax/InputSource;

    new-instance v17, Ljava/io/StringReader;

    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1, v15}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;->parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

    move-result-object v3

    .line 346
    if-nez v3, :cond_2

    .line 347
    const/4 v14, 0x2

    .line 352
    .end local v13           #parser:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;
    .end local v15           #updateDate:Ljava/lang/String;
    :cond_2
    :goto_1
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    .line 353
    invoke-static {}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$600()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 354
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$702(Z)Z

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->messageHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 356
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$602(Z)Z

    .line 373
    :goto_2
    const-string v16, ""

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[pNA] rslt 2 : FLAG_AR = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$600()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", AR after connet = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$700()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 349
    :cond_3
    const/4 v14, 0x2

    goto :goto_1

    .line 358
    :cond_4
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 359
    .local v7, msg:Landroid/os/Message;
    const/16 v16, 0x1

    move/from16 v0, p10

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 360
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v7, Landroid/os/Message;->what:I

    .line 370
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->messageHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 363
    :cond_5
    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v7, Landroid/os/Message;->what:I

    .line 364
    if-eqz p9, :cond_6

    .line 365
    const/16 v16, 0x100

    move/from16 v0, v16

    iput v0, v7, Landroid/os/Message;->arg1:I

    goto :goto_3

    .line 367
    :cond_6
    const/16 v16, 0x101

    move/from16 v0, v16

    iput v0, v7, Landroid/os/Message;->arg1:I

    goto :goto_3

    .line 377
    .end local v7           #msg:Landroid/os/Message;
    :cond_7
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v14, :cond_9

    .line 378
    invoke-static {}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$600()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 379
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$702(Z)Z

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->messageHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 381
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$602(Z)Z

    .line 385
    :goto_4
    const-string v16, ""

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[pNA] rslt # : FLAG_AR = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$600()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 383
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->messageHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 390
    :cond_9
    if-eqz v3, :cond_a

    .line 391
    move-object v4, v3

    .line 392
    .local v4, info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->updateDetailInfo(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;)I

    .line 395
    .end local v4           #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;
    :cond_a
    const-string v16, ""

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mRC "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mResponseCnt:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getAllCityList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 397
    if-eqz p5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mResponseCnt:I
    invoke-static/range {v17 .. v17}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->checkSameDaemonCityIdAtDate(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;Ljava/util/ArrayList;)V

    .line 400
    :cond_b
    if-eqz p6, :cond_c

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 402
    .local v11, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getNextRefreshTime(Landroid/content/Context;)J

    move-result-wide v5

    .line 403
    .local v5, lasttime:J
    cmp-long v16, v5, v11

    if-gtz v16, :cond_d

    const/4 v8, 0x1

    .line 404
    .local v8, need_refresh:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v9

    .line 405
    .local v9, nextTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v9, v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->updateNextTime(Landroid/content/Context;J)I

    .line 407
    .end local v5           #lasttime:J
    .end local v8           #need_refresh:Z
    .end local v9           #nextTime:J
    .end local v11           #now:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$902(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->messageHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$702(Z)Z

    .line 411
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$602(Z)Z

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->handler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/os/Handler;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->handler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/os/Handler;

    move-result-object v16

    new-instance v17, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2$1;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 403
    .restart local v5       #lasttime:J
    .restart local v11       #now:J
    :cond_d
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public valueChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    :cond_0
    return-void
.end method
