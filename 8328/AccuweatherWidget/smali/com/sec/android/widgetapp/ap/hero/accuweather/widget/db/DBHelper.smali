.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# static fields
.field public static final ACCU_DETAILS_URI:Landroid/net/Uri;

.field public static final ACCU_LIST_URI:Landroid/net/Uri;

.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static sDetailProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "content://com.sec.android.widgetapp.ap.hero.accuweather/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "content://com.sec.android.widgetapp.ap.hero.accuweather/list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_LIST_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://com.sec.android.widgetapp.ap.hero.accuweather/details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_DETAILS_URI:Landroid/net/Uri;

    .line 104
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TEMP_SCALE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TODAY_DATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TODAY_TEMP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TODAY_HIGH_TEMP"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TODAY_LOW_TEMP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TODAY_ICON_NUM"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TODAY_WIND_DIRECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TODAY_WIND_SPEED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TODAY_WEATHER_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TODAY_WEATHER_URL"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TIMEZONE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TODAY_SUNRISE_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TODAY_SUNSET_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ONEDAY_HIGH_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ONEDAY_LOW_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ONEDAY_ICON_NUM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ONEDAY_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TWODAY_HIGH_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TWODAY_LOW_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TWODAY_ICON_NUM"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TWODAY_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "THREEDAY_HIGH_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "THREEDAY_LOW_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "THREEDAY_ICON_NUM"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "THREEDAY_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "FOURDAY_HIGH_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "FOURDAY_LOW_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "FOURDAY_ICON_NUM"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "FOURDAY_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "FIVEDAY_HIGH_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "FIVEDAY_LOW_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "FIVEDAY_ICON_NUM"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "FIVEDAY_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SIXDAY_HIGH_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "SIXDAY_LOW_TEMP"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SIXDAY_ICON_NUM"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "SIXDAY_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "UPDATE_DATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->sDetailProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applySummerTime(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;)V
    .locals 5
    .parameter "ctx"
    .parameter "location"
    .parameter "info"

    .prologue
    .line 803
    invoke-static {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->isSummerTime(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    invoke-virtual {p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    move-result-object v2

    .line 805
    .local v2, today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, timezone:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 807
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 808
    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 809
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 812
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #timezone:Ljava/lang/String;
    .end local v2           #today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    :cond_0
    return-void
.end method

.method private static buildDetailWeatherContentValues(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;)Landroid/content/ContentValues;
    .locals 10
    .parameter "ctx"
    .parameter "info"

    .prologue
    .line 747
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 749
    .local v0, data:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    move-result-object v6

    .line 750
    .local v6, today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    const-string v8, "TIMEZONE"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v8, "TEMP_SCALE"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTempScale()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string v8, "TODAY_DATE"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v8, "TODAY_TEMP"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 754
    const-string v8, "TODAY_HIGH_TEMP"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 755
    const-string v8, "TODAY_LOW_TEMP"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 756
    const-string v8, "TODAY_ICON_NUM"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    const-string v8, "UPDATE_DATE"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v8, "TODAY_WEATHER_TEXT"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {p0, v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v8, "TODAY_WEATHER_URL"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v8, "TODAY_SUNRISE_TIME"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getSunRiseTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v8, "TODAY_SUNSET_TIME"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getSunSetTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    move-result-object v3

    .line 764
    .local v3, oneday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    const-string v8, "ONEDAY_HIGH_TEMP"

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 765
    const-string v8, "ONEDAY_LOW_TEMP"

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 766
    const-string v8, "ONEDAY_ICON_NUM"

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    const-string v8, "ONEDAY_URL"

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    move-result-object v7

    .line 770
    .local v7, twoday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    const-string v8, "TWODAY_HIGH_TEMP"

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 771
    const-string v8, "TWODAY_LOW_TEMP"

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 772
    const-string v8, "TWODAY_ICON_NUM"

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    const-string v8, "TWODAY_URL"

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    move-result-object v5

    .line 776
    .local v5, threeday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    const-string v8, "THREEDAY_HIGH_TEMP"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 777
    const-string v8, "THREEDAY_LOW_TEMP"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 778
    const-string v8, "THREEDAY_ICON_NUM"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    const-string v8, "THREEDAY_URL"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    move-result-object v2

    .line 782
    .local v2, fourday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    const-string v8, "FOURDAY_HIGH_TEMP"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 783
    const-string v8, "FOURDAY_LOW_TEMP"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 784
    const-string v8, "FOURDAY_ICON_NUM"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    const-string v8, "FOURDAY_URL"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    move-result-object v1

    .line 788
    .local v1, fiveday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    const-string v8, "FIVEDAY_HIGH_TEMP"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 789
    const-string v8, "FIVEDAY_LOW_TEMP"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 790
    const-string v8, "FIVEDAY_ICON_NUM"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 791
    const-string v8, "FIVEDAY_URL"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const/4 v8, 0x5

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    move-result-object v4

    .line 794
    .local v4, sixday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    const-string v8, "SIXDAY_HIGH_TEMP"

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 795
    const-string v8, "SIXDAY_LOW_TEMP"

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 796
    const-string v8, "SIXDAY_ICON_NUM"

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    const-string v8, "SIXDAY_URL"

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-object v0
.end method

.method public static getAllCityList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v11, aryCity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;>;"
    if-nez p0, :cond_1

    .line 180
    const-string v1, ""

    const-string v2, "gACL: context is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    return-object v11

    .line 184
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_4

    .line 187
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_LIST_URI:Landroid/net/Uri;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "STATE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "MAIN_DISPLAY"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "SUMMER_TIME"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "LATITUDE"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "LONGITUDE"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "PROVIDER"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "REAL_LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 198
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    .line 199
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    :cond_2
    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x4

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, 0x8

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 216
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 217
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_0

    .line 218
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cityId:current"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    .line 220
    .local v14, mCLItem:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    const/4 v1, 0x0

    invoke-virtual {v11, v1, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 217
    .end local v14           #mCLItem:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 201
    .end local v13           #i:I
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getAutoRefreshTime(Landroid/content/Context;)I
    .locals 10
    .parameter "ctx"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 589
    const/4 v7, 0x0

    .line 590
    .local v7, time:I
    if-nez p0, :cond_0

    .line 591
    const-string v1, ""

    const-string v2, "gART: context is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 606
    .end local v7           #time:I
    .local v8, time:I
    :goto_0
    return v8

    .line 595
    .end local v8           #time:I
    .restart local v7       #time:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 596
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 597
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "AUTO_REFRESH_TIME"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 599
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 600
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 603
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    move v8, v7

    .line 606
    .end local v7           #time:I
    .restart local v8       #time:I
    goto :goto_0
.end method

.method public static getDetailDataForMain(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 17
    .parameter "ctx"
    .parameter "location"
    .parameter "handler"

    .prologue
    .line 318
    const/16 v16, 0x0

    .line 319
    .local v16, today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    const/4 v15, 0x0

    .line 320
    .local v15, tempscale:I
    const/4 v14, 0x0

    .line 321
    .local v14, result:I
    if-nez p0, :cond_2

    .line 322
    const-string v2, ""

    const-string v3, "gDDFM: context is null"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v14, 0x0

    .line 373
    :goto_0
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 374
    .local v13, msg:Landroid/os/Message;
    iput v14, v13, Landroid/os/Message;->what:I

    .line 375
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 376
    .local v12, data:Landroid/os/Bundle;
    const/4 v2, 0x1

    if-ne v14, v2, :cond_0

    .line 377
    const-string v2, "today"

    move-object/from16 v0, v16

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    const-string v2, "tempscale"

    invoke-virtual {v12, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    :cond_0
    invoke-virtual {v13, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 381
    if-eqz p2, :cond_1

    .line 382
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 384
    :cond_1
    return-void

    .line 325
    .end local v12           #data:Landroid/os/Bundle;
    .end local v13           #msg:Landroid/os/Message;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 327
    .local v1, cp:Landroid/content/ContentResolver;
    if-eqz v1, :cond_7

    .line 328
    const-string v2, "Location=\"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, loc:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_DETAILS_URI:Landroid/net/Uri;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "TEMP_SCALE"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "TODAY_TEMP"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "TODAY_HIGH_TEMP"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "TODAY_LOW_TEMP"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "TODAY_ICON_NUM"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "TODAY_WEATHER_TEXT"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "UPDATE_DATE"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "TODAY_SUNRISE_TIME"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "TODAY_SUNSET_TIME"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "TIMEZONE"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 342
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 343
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    new-instance v16, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    .end local v16           #today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    invoke-direct/range {v16 .. v16}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;-><init>()V

    .line 345
    .restart local v16       #today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    const-string v2, "TEMP_SCALE"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setTempScale(I)V

    .line 346
    const-string v2, "TODAY_TEMP"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setCurrentTemp(F)V

    .line 347
    const-string v2, "TODAY_HIGH_TEMP"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setHighTemp(F)V

    .line 348
    const-string v2, "TODAY_LOW_TEMP"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setLowTemp(F)V

    .line 349
    const-string v2, "TODAY_ICON_NUM"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setIconNum(I)V

    .line 350
    const-string v2, "TODAY_WEATHER_TEXT"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setWeatherText(Ljava/lang/String;)V

    .line 351
    const-string v2, "UPDATE_DATE"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 352
    const-string v2, "TODAY_SUNRISE_TIME"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setSunRiseTime(Ljava/lang/String;)V

    .line 353
    const-string v2, "TODAY_SUNSET_TIME"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setSunSetTime(Ljava/lang/String;)V

    .line 354
    const-string v2, "TIMEZONE"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setTimeZone(Ljava/lang/String;)V

    .line 356
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_4
    sget-object v6, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TEMP_SCALE"

    aput-object v3, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 361
    if-eqz v11, :cond_6

    .line 362
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 363
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 365
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_6
    const/4 v14, 0x1

    .line 368
    goto/16 :goto_0

    .line 369
    .end local v4           #loc:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static getDetailWeatherInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;
    .locals 13
    .parameter "ctx"
    .parameter "location"

    .prologue
    const/4 v4, 0x0

    .line 450
    if-nez p0, :cond_0

    .line 451
    const-string v1, ""

    const-string v2, "gDWI: context is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_0
    return-object v4

    .line 455
    :cond_0
    new-instance v11, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

    invoke-direct {v11}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;-><init>()V

    .line 456
    .local v11, info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 458
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 459
    const-string v1, "Location=\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, loc:Ljava/lang/String;
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_DETAILS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->sDetailProjection:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 461
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 462
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    new-instance v11, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

    .end local v11           #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;
    invoke-direct {v11}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;-><init>()V

    .line 465
    .restart local v11       #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;
    const-string v1, "TEMP_SCALE"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 468
    .local v5, tempScale:I
    new-instance v12, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    invoke-direct {v12}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;-><init>()V

    .line 469
    .local v12, today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    invoke-virtual {v12, v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setTempScale(I)V

    .line 470
    const-string v1, "TODAY_DATE"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 471
    const-string v1, "TODAY_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setCurrentTemp(F)V

    .line 472
    const-string v1, "TODAY_HIGH_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setHighTemp(F)V

    .line 473
    const-string v1, "TODAY_LOW_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setLowTemp(F)V

    .line 474
    const-string v1, "TODAY_ICON_NUM"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setIconNum(I)V

    .line 475
    const-string v1, "TODAY_WEATHER_TEXT"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setWeatherText(Ljava/lang/String;)V

    .line 476
    const-string v1, "TODAY_WEATHER_URL"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 477
    const-string v1, "UPDATE_DATE"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 478
    const-string v1, "TIMEZONE"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setTimeZone(Ljava/lang/String;)V

    .line 479
    const-string v1, "TODAY_SUNRISE_TIME"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setSunRiseTime(Ljava/lang/String;)V

    .line 480
    const-string v1, "TODAY_SUNSET_TIME"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->setSunSetTime(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v11, v12}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->setTodayWeatherInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;)V

    .line 483
    new-instance v4, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    const-string v1, "ONEDAY_HIGH_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const-string v1, "ONEDAY_LOW_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    const-string v1, "ONEDAY_ICON_NUM"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v1, "ONEDAY_URL"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;)V

    .line 488
    new-instance v4, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    const-string v1, "TWODAY_HIGH_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const-string v1, "TWODAY_LOW_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    const-string v1, "TWODAY_ICON_NUM"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v1, "TWODAY_URL"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;)V

    .line 493
    new-instance v4, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    const-string v1, "THREEDAY_HIGH_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const-string v1, "THREEDAY_LOW_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    const-string v1, "THREEDAY_ICON_NUM"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v1, "THREEDAY_URL"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;)V

    .line 498
    new-instance v4, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    const-string v1, "FOURDAY_HIGH_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const-string v1, "FOURDAY_LOW_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    const-string v1, "FOURDAY_ICON_NUM"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v1, "FOURDAY_URL"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;)V

    .line 503
    new-instance v4, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    const-string v1, "FIVEDAY_HIGH_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const-string v1, "FIVEDAY_LOW_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    const-string v1, "FIVEDAY_ICON_NUM"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v1, "FIVEDAY_URL"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;)V

    .line 508
    new-instance v4, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    const-string v1, "SIXDAY_HIGH_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const-string v1, "SIXDAY_LOW_TEMP"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    const-string v1, "SIXDAY_ICON_NUM"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v1, "SIXDAY_URL"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;)V

    .line 515
    .end local v5           #tempScale:I
    .end local v12           #today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v3           #loc:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_2
    move-object v4, v11

    .line 519
    goto/16 :goto_0
.end method

.method public static getMainDefaultLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 705
    const/4 v7, 0x0

    .line 706
    .local v7, defaultLocation:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 707
    const-string v1, ""

    const-string v2, "gMDL: context is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    return-object v4

    .line 711
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 712
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 713
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_LIST_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "LOCATION"

    aput-object v3, v2, v8

    const-string v3, "MAIN_DISPLAY=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 715
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 716
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 719
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    move-object v4, v7

    .line 722
    goto :goto_0
.end method

.method public static getNextRefreshTime(Landroid/content/Context;)J
    .locals 12
    .parameter "ctx"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 609
    const-wide/16 v7, 0x0

    .line 610
    .local v7, time:J
    if-nez p0, :cond_0

    .line 611
    const-string v1, ""

    const-string v2, "gNRT: context is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v9, v7

    .line 626
    .end local v7           #time:J
    .local v9, time:J
    :goto_0
    return-wide v9

    .line 615
    .end local v9           #time:J
    .restart local v7       #time:J
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 616
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 617
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "AUTO_REF_NEXT_TIME"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 619
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 620
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 623
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    move-wide v9, v7

    .line 626
    .end local v7           #time:J
    .restart local v9       #time:J
    goto :goto_0
.end method

.method public static getRegisteredCityCount(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v6, 0x0

    .line 155
    .local v6, count:I
    if-nez p0, :cond_0

    .line 156
    const-string v1, ""

    const-string v2, "gRCC: context is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, -0x1

    .line 174
    :goto_0
    return v1

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 162
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_LIST_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "LOCATION"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 164
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 165
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 168
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    move v1, v6

    .line 174
    goto :goto_0

    .line 171
    :cond_3
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public static getSettings(Landroid/content/Context;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    .locals 16
    .parameter "ctx"

    .prologue
    .line 547
    const/4 v15, 0x0

    .line 548
    .local v15, info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    if-nez p0, :cond_0

    .line 549
    const-string v2, ""

    const-string v3, "gS: context is null"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, v15

    .line 586
    .end local v15           #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    .local v1, info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    :goto_0
    return-object v2

    .line 553
    .end local v1           #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    .restart local v15       #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 554
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 555
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TEMP_SCALE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "AUTO_REFRESH_TIME"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ENABLE_CURRENT_LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "AUTO_SCROLL"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "ENABLE_NEW_YEAR"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "ENABLE_MY_BIRTHDAY"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ENABLE_CONTACTS_BIRTHDAY"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "AUTO_REF_NEXT_TIME"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "NEED_LOCATION"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "LAST_SEL_LOCATION"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "CHECK_CURRENT_CITY_LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 568
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 569
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    const-string v2, "TEMP_SCALE"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "AUTO_REFRESH_TIME"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "ENABLE_CURRENT_LOCATION"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "AUTO_SCROLL"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "ENABLE_NEW_YEAR"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "ENABLE_MY_BIRTHDAY"

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "ENABLE_CONTACTS_BIRTHDAY"

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "NEED_LOCATION"

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "AUTO_REF_NEXT_TIME"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v12, "LAST_SEL_LOCATION"

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "CHECK_CURRENT_CITY_LOCATION"

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct/range {v1 .. v13}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;-><init>(IIIIIIIIJLjava/lang/String;I)V

    .line 583
    .end local v15           #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    .restart local v1       #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .end local v14           #cursor:Landroid/database/Cursor;
    :goto_2
    move-object v2, v1

    .line 586
    goto/16 :goto_0

    .end local v1           #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v15       #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    :cond_1
    move-object v1, v15

    .end local v15           #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    .restart local v1       #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    goto :goto_1

    .end local v1           #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    .end local v14           #cursor:Landroid/database/Cursor;
    .restart local v15       #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    :cond_2
    move-object v1, v15

    .end local v15           #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    .restart local v1       #info:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    goto :goto_2
.end method

.method public static getTempScaleSetting(Landroid/content/Context;)I
    .locals 10
    .parameter "ctx"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 726
    const/4 v7, 0x0

    .line 727
    .local v7, tempScale:I
    if-nez p0, :cond_0

    .line 728
    const-string v1, ""

    const-string v2, "gTSS: context is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 742
    .end local v7           #tempScale:I
    .local v8, tempScale:I
    :goto_0
    return v8

    .line 731
    .end local v8           #tempScale:I
    .restart local v7       #tempScale:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 732
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 733
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "TEMP_SCALE"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 735
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 736
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 739
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    move v8, v7

    .line 742
    .end local v7           #tempScale:I
    .restart local v8       #tempScale:I
    goto :goto_0
.end method

.method private static isSummerTime(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "ctx"
    .parameter "location"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 815
    const/4 v7, 0x0

    .line 816
    .local v7, result:Z
    if-nez p0, :cond_0

    .line 817
    const-string v1, ""

    const-string v2, "iST: context is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 834
    .end local v7           #result:Z
    .local v8, result:I
    :goto_0
    return v8

    .line 820
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 821
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 822
    const-string v1, "Location=\"%s\""

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 823
    .local v3, loc:Ljava/lang/String;
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_LIST_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v5, "SUMMER_TIME"

    aput-object v5, v2, v9

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 825
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 826
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 828
    const/4 v7, 0x1

    .line 831
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v3           #loc:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    move v8, v7

    .line 834
    .restart local v8       #result:I
    goto :goto_0
.end method

.method public static updateAutoRefreshTime(Landroid/content/Context;I)I
    .locals 9
    .parameter "ctx"
    .parameter "time"

    .prologue
    const/4 v8, 0x0

    .line 630
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ud AF "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v1, 0x0

    .line 632
    .local v1, result:I
    if-nez p0, :cond_0

    .line 633
    const-string v5, ""

    const-string v6, "uART: context is null"

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 648
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 637
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 638
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 639
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 640
    .local v4, vals:Landroid/content/ContentValues;
    const-string v5, "AUTO_REFRESH_TIME"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 642
    .local v3, updateResult:I
    if-lez v3, :cond_2

    .line 643
    const/4 v1, 0x1

    .end local v3           #updateResult:I
    .end local v4           #vals:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    move v2, v1

    .line 648
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 645
    .end local v2           #result:I
    .restart local v1       #result:I
    .restart local v3       #updateResult:I
    .restart local v4       #vals:Landroid/content/ContentValues;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static updateDetailInfo(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;)I
    .locals 9
    .parameter "ctx"
    .parameter "location"
    .parameter "info"

    .prologue
    .line 523
    const/4 v3, 0x0

    .line 524
    .local v3, result:I
    if-nez p0, :cond_0

    .line 525
    const-string v6, ""

    const-string v7, "uDI: context is null"

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 543
    .end local v3           #result:I
    .local v4, result:I
    :goto_0
    return v4

    .line 529
    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 530
    .local v0, cp:Landroid/content/ContentResolver;
    invoke-static {p0, p1, p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->applySummerTime(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;)V

    .line 531
    if-eqz v0, :cond_1

    .line 532
    invoke-static {p0, p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->buildDetailWeatherContentValues(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;)Landroid/content/ContentValues;

    move-result-object v1

    .line 534
    .local v1, data:Landroid/content/ContentValues;
    const-string v6, "Location=\"%s\""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, loc:Ljava/lang/String;
    sget-object v6, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_DETAILS_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v1, v2, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 537
    .local v5, updateResult:I
    if-lez v5, :cond_2

    .line 538
    const/4 v3, 0x1

    .end local v1           #data:Landroid/content/ContentValues;
    .end local v2           #loc:Ljava/lang/String;
    .end local v5           #updateResult:I
    :cond_1
    :goto_1
    move v4, v3

    .line 543
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_0

    .line 540
    .end local v4           #result:I
    .restart local v1       #data:Landroid/content/ContentValues;
    .restart local v2       #loc:Ljava/lang/String;
    .restart local v3       #result:I
    .restart local v5       #updateResult:I
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public static updateLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "ctx"
    .parameter "location"

    .prologue
    .line 137
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ud lsl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, result:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v1, vals:Landroid/content/ContentValues;
    const-string v2, "LAST_SEL_LOCATION"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->updateSettingTable(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v0

    .line 144
    if-lez v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 147
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static updateNextTime(Landroid/content/Context;J)I
    .locals 9
    .parameter "ctx"
    .parameter "nextTime"

    .prologue
    const/4 v8, 0x0

    .line 652
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ud NT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, result:I
    if-nez p0, :cond_0

    .line 655
    const-string v5, ""

    const-string v6, "uNT: context is null"

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 673
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 659
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 661
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 662
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 663
    .local v4, vals:Landroid/content/ContentValues;
    const-string v5, "AUTO_REF_NEXT_TIME"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 665
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 666
    .local v3, updateResult:I
    if-lez v3, :cond_2

    .line 667
    const/4 v1, 0x1

    .end local v3           #updateResult:I
    .end local v4           #vals:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    move v2, v1

    .line 673
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 669
    .end local v2           #result:I
    .restart local v1       #result:I
    .restart local v3       #updateResult:I
    .restart local v4       #vals:Landroid/content/ContentValues;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static updateSettingTable(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 4
    .parameter "ctx"
    .parameter "vals"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    if-nez p0, :cond_1

    .line 124
    const-string v2, ""

    const-string v3, "uST: context is null"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 130
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static updateTempScale(Landroid/content/Context;I)I
    .locals 9
    .parameter "ctx"
    .parameter "scale"

    .prologue
    const/4 v8, 0x0

    .line 678
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ud TS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v1, 0x0

    .line 680
    .local v1, result:I
    if-nez p0, :cond_0

    .line 681
    const-string v5, ""

    const-string v6, "uTS: context is null"

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 700
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 685
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 687
    .local v0, cp:Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 688
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 689
    .local v4, vals:Landroid/content/ContentValues;
    const-string v5, "TEMP_SCALE"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->ACCU_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 693
    .local v3, updateResult:I
    if-lez v3, :cond_2

    .line 694
    const/4 v1, 0x1

    .end local v3           #updateResult:I
    .end local v4           #vals:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    move v2, v1

    .line 700
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 696
    .end local v2           #result:I
    .restart local v1       #result:I
    .restart local v3       #updateResult:I
    .restart local v4       #vals:Landroid/content/ContentValues;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method
