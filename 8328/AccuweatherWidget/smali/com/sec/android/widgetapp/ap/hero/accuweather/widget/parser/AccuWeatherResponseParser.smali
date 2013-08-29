.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;
.super Ljava/lang/Object;
.source "AccuWeatherResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;
    }
.end annotation


# instance fields
.field info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

.field locitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/MapCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field lstResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field results:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;->results:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;

    .line 29
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;->info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

    .line 30
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    .line 31
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;->locitems:Ljava/util/ArrayList;

    .line 998
    return-void
.end method


# virtual methods
.method public parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;
    .locals 8
    .parameter "tempScale"
    .parameter "inputSource"
    .parameter "updateDate"

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 126
    .local v4, parserModel:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 127
    .local v0, concreteParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 128
    .local v2, myReader:Lorg/xml/sax/XMLReader;
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseDW tempS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;

    invoke-direct {v3, p0, p1, p3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser$ParserHandlerSingle;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;ILjava/lang/String;)V

    .line 130
    .local v3, mySample:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 131
    invoke-interface {v2, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/parser/AccuWeatherResponseParser;->info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

    .end local v0           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v2           #myReader:Lorg/xml/sax/XMLReader;
    .end local v3           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v4           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :goto_0
    return-object v5

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const/4 v5, 0x0

    goto :goto_0
.end method
