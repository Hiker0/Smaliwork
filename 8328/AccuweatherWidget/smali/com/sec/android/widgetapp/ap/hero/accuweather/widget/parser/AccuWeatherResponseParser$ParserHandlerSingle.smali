.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AccuWeatherResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserHandlerSingle"
.end annotation


# instance fields
.field private alldayurl:Ljava/lang/String;

.field private cal:Ljava/util/Calendar;

.field private currenttemp:Ljava/lang/StringBuffer;

.field private currentweathericon:Ljava/lang/StringBuffer;

.field private dayurl:Ljava/lang/StringBuffer;

.field private first:Z

.field private forecasthightemp:Ljava/lang/StringBuffer;

.field private forecastlowtemp:Ljava/lang/StringBuffer;

.field private forecastweathericon:Ljava/lang/StringBuffer;

.field private hasAllUrl:Z

.field private hasCurrent:Z

.field private hasDay:Z

.field private hasDayTime:Z

.field private hasForeCast:Z

.field private hasHightemp:Z

.field private hasLocal:Z

.field private hasLowtemp:Z

.field private hasSummertime:Z

.field private hasTemperture:Z

.field private hasTime:Z

.field private hasTimeZone:Z

.field private hasUrl:Z

.field private hasWeatherIcon:Z

.field private hasWeathertext:Z

.field private iconNum:I

.field private nowTemp:F

.field private summertime:Ljava/lang/StringBuffer;

.field private sunRiseTime:Ljava/lang/StringBuffer;

.field private sunSetTime:Ljava/lang/StringBuffer;

.field private tagnames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tempScale:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;

.field private time:Ljava/lang/StringBuffer;

.field private timezone:Ljava/lang/StringBuffer;

.field private todayurl:Ljava/lang/String;

.field private tz:Ljava/lang/String;

.field private updateDate:Ljava/lang/String;

.field private url:Ljava/lang/StringBuffer;

.field private weathertext:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "tempScale"
    .parameter "updateDate"

    .prologue
    const/4 v1, 0x0

    .line 380
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 339
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    .line 340
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    .line 341
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    .line 342
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    .line 343
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    .line 344
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    .line 345
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    .line 346
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->url:Ljava/lang/StringBuffer;

    .line 347
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    .line 348
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->time:Ljava/lang/StringBuffer;

    .line 349
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->summertime:Ljava/lang/StringBuffer;

    .line 350
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunRiseTime:Ljava/lang/StringBuffer;

    .line 351
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunSetTime:Ljava/lang/StringBuffer;

    .line 353
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasSummertime:Z

    .line 354
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    .line 355
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    .line 356
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTime:Z

    .line 358
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    .line 359
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    .line 360
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    .line 361
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    .line 362
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    .line 364
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    .line 365
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    .line 366
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    .line 367
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    .line 368
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    .line 369
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    .line 372
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    .line 381
    iput p2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    .line 382
    iput-object p3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->updateDate:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "currentGmtOffset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "currentconditions"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "temperature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "weathertext"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "weathericon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "planets"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "sun"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "forecast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "day"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "obsDaylight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "daytime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "hightemperature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "lowtemperature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "chars"
    .parameter "start"
    .parameter "leng"

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    if-eqz v0, :cond_3

    .line 584
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTime:Z

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->time:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 588
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasSummertime:Z

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->summertime:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 591
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    if-eqz v0, :cond_7

    .line 593
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    if-eqz v0, :cond_4

    .line 594
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 595
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    if-eqz v0, :cond_5

    .line 596
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 597
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    if-eqz v0, :cond_6

    .line 598
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 599
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->url:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 604
    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    if-eqz v0, :cond_0

    .line 606
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    if-eqz v0, :cond_8

    .line 607
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    if-eqz v0, :cond_8

    .line 608
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 611
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    if-eqz v0, :cond_0

    .line 613
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    if-eqz v0, :cond_9

    .line 614
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 615
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    if-eqz v0, :cond_a

    .line 616
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 617
    :cond_a
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/high16 v5, 0x4270

    const/4 v11, 0x0

    .line 467
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 578
    :goto_0
    :pswitch_0
    return-void

    .line 470
    :pswitch_1
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    goto :goto_0

    .line 474
    :pswitch_2
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    .local v10, timeZoneStr:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .local v8, dotIndex:I
    const/4 v9, 0x0

    .line 476
    .local v9, min:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 477
    const-string v3, "GMT"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    if-le v8, v6, :cond_0

    .line 479
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v9, v3

    .line 481
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 498
    :goto_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    .line 500
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    .line 501
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 504
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    goto/16 :goto_0

    .line 484
    :cond_0
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 488
    :cond_1
    const-string v3, "GMT+"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    if-le v8, v6, :cond_2

    .line 490
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v9, v3

    .line 492
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 495
    :cond_2
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 508
    .end local v8           #dotIndex:I
    .end local v9           #min:I
    .end local v10           #timeZoneStr:Ljava/lang/StringBuffer;
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->nowTemp:F

    .line 509
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParserHandlerSingle nowTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->nowTemp:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->iconNum:I

    .line 511
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->url:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->todayurl:Ljava/lang/String;

    .line 512
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    goto/16 :goto_0

    .line 515
    :pswitch_4
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    goto/16 :goto_0

    .line 516
    :pswitch_5
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    goto/16 :goto_0

    .line 517
    :pswitch_6
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    goto/16 :goto_0

    .line 520
    :pswitch_7
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    goto/16 :goto_0

    .line 524
    :pswitch_8
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    goto/16 :goto_0

    .line 528
    :pswitch_9
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasSummertime:Z

    goto/16 :goto_0

    .line 532
    :pswitch_a
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    if-eqz v3, :cond_7

    .line 534
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->alldayurl:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    .line 540
    .local v0, today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    iget v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    iget v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->nowTemp:F

    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->todayurl:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;-><init>(ILcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .local v1, todayInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParserHandlerSingle tempScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nowTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->nowTemp:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->iconNum:I

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setIconNum(I)V

    .line 543
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->updateDate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 544
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->summertime:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setSummerTime(Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunRiseTime:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunRiseTime:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 548
    :cond_3
    const-string v3, ""

    const-string v4, "ParserHandlerSingle : sunrise time is null "

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_4
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunSetTime:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunSetTime:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_6

    .line 550
    :cond_5
    const-string v3, ""

    const-string v4, "ParserHandlerSingle : sunset time is null "

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_6
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunRiseTime:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setSunRiseTime(Ljava/lang/String;)V

    .line 552
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunSetTime:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setSunSetTime(Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;->info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

    invoke-virtual {v3, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->setTodayWeatherInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;)V

    .line 554
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    .line 567
    .end local v0           #today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    .end local v1           #todayInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    :goto_2
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    goto/16 :goto_0

    .line 558
    :cond_7
    new-instance v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    iget v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->alldayurl:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    .line 564
    .local v2, adayinfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParserHandlerSingle tempScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;->info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;)V

    goto :goto_2

    .line 570
    .end local v2           #adayinfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    :pswitch_b
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    goto/16 :goto_0

    .line 571
    :pswitch_c
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    goto/16 :goto_0

    .line 573
    :pswitch_d
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->alldayurl:Ljava/lang/String;

    .line 574
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    .line 575
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    goto/16 :goto_0

    .line 576
    :pswitch_e
    iput-boolean v11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTime:Z

    goto/16 :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 404
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 462
    :goto_0
    return-void

    .line 407
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 408
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 409
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 410
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 411
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 412
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 413
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 415
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->summertime:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->summertime:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 416
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;

    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;-><init>()V

    iput-object v1, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;->info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

    .line 418
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    goto :goto_0

    .line 420
    :pswitch_1
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    goto :goto_0

    .line 421
    :pswitch_2
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    goto :goto_0

    .line 422
    :pswitch_3
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    goto :goto_0

    .line 423
    :pswitch_4
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    goto :goto_0

    .line 424
    :pswitch_5
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    goto :goto_0

    .line 427
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunRiseTime:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunRiseTime:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 428
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunSetTime:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunSetTime:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 431
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunRiseTime:Ljava/lang/StringBuffer;

    const-string v1, "rise"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->sunSetTime:Ljava/lang/StringBuffer;

    const-string v1, "set"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 436
    :pswitch_8
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    .line 437
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    goto/16 :goto_0

    .line 440
    :pswitch_9
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    goto/16 :goto_0

    .line 443
    :pswitch_a
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasSummertime:Z

    goto/16 :goto_0

    .line 447
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 448
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 449
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 450
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 452
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    goto/16 :goto_0

    .line 455
    :pswitch_c
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    goto/16 :goto_0

    .line 456
    :pswitch_d
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    goto/16 :goto_0

    .line 458
    :pswitch_e
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    .line 459
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    goto/16 :goto_0

    .line 460
    :pswitch_f
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;->hasTime:Z

    goto/16 :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
