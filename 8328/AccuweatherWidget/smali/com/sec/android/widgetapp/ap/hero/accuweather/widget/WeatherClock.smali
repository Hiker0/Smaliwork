.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;
.super Landroid/app/Activity;
.source "WeatherClock.java"

# interfaces
.implements Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;,
        Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;
    }
.end annotation


# static fields
.field private static AUTOREFRESH_AFTER_CONNECTED:Z

.field private static CHECK_AFTER_CONNECTED:Z

.field private static FLAG_FOR_AUTOREFRESHING:Z

.field private static firstUpdate:Z


# instance fields
.field am_pm:Landroid/widget/TextView;

.field am_pm2:Landroid/widget/TextView;

.field arrowGroup:Landroid/widget/RelativeLayout;

.field private audio:Landroid/media/AudioManager;

.field private autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

.field background:Landroid/widget/RelativeLayout;

.field private cal_b:Ljava/util/Calendar;

.field createComposui:Z

.field private createEventUi:Z

.field current_temp:Landroid/widget/TextView;

.field date:Landroid/widget/TextView;

.field datezone:Landroid/widget/RelativeLayout;

.field private display:Landroid/view/Display;

.field emboss:Landroid/widget/ImageView;

.field empty_city:Landroid/widget/RelativeLayout;

.field emptyselect:Landroid/widget/TextView;

.field error:Landroid/widget/RelativeLayout;

.field error_message:Landroid/widget/TextView;

.field public eventHandler:Landroid/os/Handler;

.field event_icon:Landroid/widget/ImageView;

.field eventiconzone:Landroid/widget/RelativeLayout;

.field first_hour:Landroid/widget/ImageView;

.field first_hour2:Landroid/widget/ImageView;

.field first_minute:Landroid/widget/ImageView;

.field first_minute2:Landroid/widget/ImageView;

.field private handler:Landroid/os/Handler;

.field private height:I

.field private interval:I

.field last_update:Landroid/widget/TextView;

.field logo_zone:Landroid/widget/RelativeLayout;

.field private mAutoScrollTime:I

.field mBound:Z

.field private mCallback:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

.field private mCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCtx:Landroid/content/Context;

.field mDownPositionY:F

.field private mEventBackupDate:Ljava/lang/String;

.field private mFlickingDirection:I

.field mFrameMasking:Landroid/widget/ImageView;

.field private mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

.field private mFromActivityResult:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsRefreshing:Z

.field private mIsVisible:Z

.field private mLastTime:J

.field private mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

.field private mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

.field private mObserver:Landroid/database/ContentObserver;

.field private mRefreshCanceled:Z

.field private mRefreshCnt:I

.field mRefreshCompleted:Z

.field private mResponseCnt:I

.field private mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

.field private mSelectedLocation:Ljava/lang/String;

.field mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

.field private mServiceHandler:Landroid/os/Handler;

.field private mSetUIDataHandler:Landroid/os/Handler;

.field private mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

.field private mTTScityname:Ljava/lang/String;

.field private mTTStemp:Ljava/lang/String;

.field private mTTStoScaleSetting:I

.field private mTTStoday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

.field private mTTSweatherText:Ljava/lang/String;

.field private mThemeName:Ljava/lang/String;

.field mTimeImages:[I

.field mTz:Ljava/util/TimeZone;

.field private mUseCurrentLocation:Z

.field messageHandler:Landroid/os/Handler;

.field notempty_city:Landroid/widget/RelativeLayout;

.field refresh:Landroid/widget/RelativeLayout;

.field refreshLayout:Landroid/widget/RelativeLayout;

.field refreshflipper:Landroid/widget/ProgressBar;

.field private refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

.field private sdf:Ljava/text/SimpleDateFormat;

.field second_hour:Landroid/widget/ImageView;

.field second_hour2:Landroid/widget/ImageView;

.field second_minute:Landroid/widget/ImageView;

.field second_minute2:Landroid/widget/ImageView;

.field single_temp_c:Landroid/widget/ImageView;

.field single_temp_icon:Landroid/widget/ImageView;

.field summmerTime_icon:Landroid/widget/ImageView;

.field summmerTime_icon2:Landroid/widget/ImageView;

.field taptoaddcity:Landroid/widget/TextView;

.field temper_zone:Landroid/widget/RelativeLayout;

.field timezone:Landroid/widget/RelativeLayout;

.field timezone2:Landroid/widget/RelativeLayout;

.field timezoneGroup:Landroid/widget/RelativeLayout;

.field tv_current:Landroid/widget/ImageView;

.field weather_bg1:Landroid/widget/ImageView;

.field weather_bg2:Landroid/widget/ImageView;

.field weather_city:Landroid/widget/TextView;

.field weather_front1:Landroid/widget/ImageView;

.field weather_front2:Landroid/widget/ImageView;

.field weather_icon:Landroid/widget/ImageView;

.field weather_rain:Landroid/widget/ImageView;

.field weather_state:Landroid/widget/TextView;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->firstUpdate:Z

    .line 1853
    sput-boolean v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->FLAG_FOR_AUTOREFRESHING:Z

    .line 1854
    sput-boolean v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 1855
    sput-boolean v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->CHECK_AFTER_CONNECTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCanceled:Z

    .line 76
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    .line 79
    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    .line 80
    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    .line 84
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFromActivityResult:Z

    .line 94
    iput v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mResponseCnt:I

    .line 95
    iput v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->handler:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mHandler:Landroid/os/Handler;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mDownPositionY:F

    .line 166
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createComposui:Z

    .line 169
    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mEventBackupDate:Ljava/lang/String;

    .line 170
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createEventUi:Z

    .line 173
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mBound:Z

    .line 177
    iput v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFlickingDirection:I

    .line 178
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mIsRefreshing:Z

    .line 180
    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    .line 182
    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->audio:Landroid/media/AudioManager;

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mLastTime:J

    .line 188
    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStoday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    .line 189
    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTScityname:Ljava/lang/String;

    .line 190
    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStemp:Ljava/lang/String;

    .line 191
    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTSweatherText:Ljava/lang/String;

    .line 192
    iput v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStoScaleSetting:I

    .line 195
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mUseCurrentLocation:Z

    .line 290
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mConnection:Landroid/content/ServiceConnection;

    .line 310
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$2;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCallback:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

    .line 426
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$3;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    .line 542
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$4;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetUIDataHandler:Landroid/os/Handler;

    .line 822
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$5;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mObserver:Landroid/database/ContentObserver;

    .line 1438
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    .line 1450
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTz:Ljava/util/TimeZone;

    .line 1852
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->sdf:Ljava/text/SimpleDateFormat;

    .line 1955
    iput v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mAutoScrollTime:I

    .line 2257
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventHandler:Landroid/os/Handler;

    .line 2430
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$12;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->messageHandler:Landroid/os/Handler;

    return-void

    .line 1438
    :array_0
    .array-data 0x4
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCallback:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefresh(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkDayOrNightAnimation(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isNewDay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createEventUi:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeDBFullUI()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoScrollHandler()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLocating()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeUi(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showLocating()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showError(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setTTSInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFlickingDirection:I

    return v0
.end method

.method static synthetic access$2602(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFlickingDirection:I

    return p1
.end method

.method static synthetic access$2702(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mIsRefreshing:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->stopLoading()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->audio:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCanceled:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startWithLocationForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->sdf:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefreshHandler()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;IZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->performNetworkAccess(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;IZZI)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getLocationIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->interval:I

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mResponseCnt:I

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mResponseCnt:I

    return p1
.end method

.method static synthetic access$408(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mResponseCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mResponseCnt:I

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideError()V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLoading()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    return p1
.end method

.method static synthetic access$510(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->FLAG_FOR_AUTOREFRESHING:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-boolean p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->FLAG_FOR_AUTOREFRESHING:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->AUTOREFRESH_AFTER_CONNECTED:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-boolean p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->AUTOREFRESH_AFTER_CONNECTED:Z

    return p0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private checkAutoRefresh(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1912
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    if-nez v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getSettings(Landroid/content/Context;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    .line 1915
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmAutoRefreshSetting()I

    move-result v0

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AR_S_T : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    if-eqz v0, :cond_1

    .line 1919
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->isWifiConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->isNeedAutoRefresh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1922
    sput-boolean v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->CHECK_AFTER_CONNECTED:Z

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waiting ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->CHECK_AFTER_CONNECTED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_1
    :goto_0
    return-void

    .line 1927
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefreshHandler()V

    .line 1928
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    .line 1929
    if-ne p1, v3, :cond_3

    .line 1930
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1933
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkAutoRefreshHandler()V
    .locals 2

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    if-eqz v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->removeMessages(I)V

    .line 1944
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->removeMessages(I)V

    .line 1945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    .line 1947
    :cond_0
    return-void
.end method

.method private checkAutoScrollHandler()V
    .locals 2

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->removeMessages(I)V

    .line 2012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    .line 2014
    :cond_0
    return-void
.end method

.method private checkDayOrNightAnimation(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x12

    const/4 v8, 0x6

    const/16 v1, 0x102

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2089
    .line 2090
    if-eqz p1, :cond_1

    .line 2091
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2096
    :goto_0
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2097
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2100
    if-nez p2, :cond_2

    .line 2101
    const-string v0, ""

    const-string v2, "cDayONight() ::: sunrise is null "

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2103
    aput v8, v0, v6

    .line 2104
    aput v6, v0, v7

    move-object v2, v0

    .line 2112
    :goto_1
    if-nez p3, :cond_3

    .line 2113
    const-string v0, ""

    const-string v5, "cDayONight() ::: sunset is null "

    invoke-static {v0, v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2115
    aput v9, v0, v6

    .line 2116
    aput v6, v0, v7

    .line 2124
    :goto_2
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 2131
    if-eqz p4, :cond_6

    .line 2132
    aget v5, v0, v6

    if-gt v3, v5, :cond_0

    aget v5, v0, v6

    if-ne v3, v5, :cond_4

    aget v0, v0, v7

    if-lt v4, v0, :cond_4

    :cond_0
    move v0, v1

    .line 2162
    :goto_3
    return v0

    .line 2093
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 2106
    :cond_2
    invoke-static {p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getHourAndMin(Ljava/lang/String;)[I

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 2118
    :cond_3
    invoke-static {p3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getHourAndMin(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_2

    .line 2135
    :cond_4
    aget v0, v2, v6

    if-lt v3, v0, :cond_5

    aget v0, v2, v6

    if-ne v3, v0, :cond_c

    aget v0, v2, v7

    if-ge v4, v0, :cond_c

    :cond_5
    move v0, v1

    .line 2136
    goto :goto_3

    .line 2138
    :cond_6
    aget v1, v2, v6

    if-gt v3, v1, :cond_7

    aget v1, v2, v6

    if-ne v3, v1, :cond_c

    aget v1, v2, v7

    if-lt v4, v1, :cond_c

    .line 2139
    :cond_7
    aget v1, v0, v6

    if-lt v3, v1, :cond_8

    aget v1, v0, v6

    if-ne v3, v1, :cond_c

    aget v0, v0, v7

    if-ge v4, v0, :cond_c

    .line 2140
    :cond_8
    const/16 v0, 0x101

    goto :goto_3

    .line 2148
    :cond_9
    if-eqz p4, :cond_b

    .line 2149
    if-lt v3, v9, :cond_a

    move v0, v1

    .line 2150
    goto :goto_3

    .line 2152
    :cond_a
    if-ge v3, v8, :cond_c

    move v0, v1

    .line 2153
    goto :goto_3

    .line 2155
    :cond_b
    if-lt v3, v8, :cond_c

    .line 2156
    if-ge v3, v9, :cond_c

    .line 2157
    const/16 v0, 0x101

    goto :goto_3

    .line 2162
    :cond_c
    const/16 v0, 0x100

    goto :goto_3
.end method

.method private clearEventListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1278
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1280
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1281
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1286
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1287
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1289
    :cond_1
    return-void
.end method

.method private composeDBFullUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1154
    const-string v0, ""

    const-string v1, " composeDBFullUI "

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTz:Ljava/util/TimeZone;

    .line 1156
    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    .line 1157
    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    .line 1158
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1159
    return-void
.end method

.method private composeEmptyCityUI(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f020019

    const v5, 0x7f020003

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 1162
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " composeEmptyCityUI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTz:Ljava/util/TimeZone;

    .line 1164
    iput-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    .line 1165
    iput-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    .line 1166
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezoneGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ismPlayAnim()Z

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1173
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1174
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1175
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1176
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->datezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->temper_zone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1179
    if-eqz p1, :cond_3

    .line 1180
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->taptoaddcity:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1183
    :goto_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->last_update:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1185
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_rain:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1186
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1187
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1189
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setDefaultDrawInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    .line 1190
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setImageResource(Z)V

    .line 1194
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->clearEventListener()V

    .line 1195
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    if-eqz v0, :cond_2

    .line 1196
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->buildTimeCurrentClock()V

    .line 1197
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->watchViewShow()V

    .line 1199
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setEventListener()V

    .line 1200
    return-void

    .line 1182
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->taptoaddcity:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private composeEventUI()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 2235
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->initEvent()V

    .line 2237
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmMyBirthday()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    if-eqz v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->findContactsEvent(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 2242
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isNewYear()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmNewyear()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2243
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    if-eqz v0, :cond_1

    .line 2244
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->buildEventInfo(ZLjava/lang/String;IJ)V

    .line 2245
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2246
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2250
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmContactsBirthday()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2251
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    if-eqz v0, :cond_2

    .line 2252
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->findContactsEvent(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 2255
    :cond_2
    return-void
.end method

.method private composeNotEmptyCityUI(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1204
    .line 1205
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmLastSelectLocation()Ljava/lang/String;

    move-result-object v4

    .line 1207
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->notempty_city:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1208
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->last_update:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v3

    .line 1233
    :goto_0
    if-eqz v0, :cond_7

    .line 1234
    iput-object p2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    .line 1236
    if-nez p1, :cond_b

    .line 1237
    iput-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    .line 1238
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 1239
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v1, v2

    move v3, v2

    .line 1241
    :goto_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1243
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1245
    add-int/lit8 v3, v3, 0x1

    .line 1241
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1218
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 1219
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    .line 1221
    goto :goto_0

    .line 1222
    :cond_4
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v5, "cityId:current"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v5, "cityId:current"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1224
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getRealLocation()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getRealLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    .line 1226
    goto/16 :goto_0

    .line 1218
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1248
    :cond_6
    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1249
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    .line 1263
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setUiWithDatabaseData()V

    .line 1264
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setEventListener()V

    .line 1265
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1267
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    const-string v1, "cityId:current"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1268
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->tv_current:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1269
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->tv_current:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1275
    :cond_8
    :goto_4
    return-void

    .line 1252
    :cond_9
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getCheckCurLoc()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 1253
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1254
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    goto :goto_3

    .line 1257
    :cond_a
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getMainDefaultLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    goto :goto_3

    .line 1260
    :cond_b
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    goto :goto_3

    .line 1271
    :cond_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->tv_current:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1272
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->tv_current:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_d
    move v0, v2

    goto/16 :goto_0
.end method

.method private composeUi(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1130
    if-eqz p1, :cond_1

    .line 1131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1135
    :goto_0
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cUI : cnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRC  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    if-nez v0, :cond_2

    .line 1137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeEmptyCityUI(Z)V

    .line 1138
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    if-nez v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezoneGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->datezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventiconzone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->temper_zone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1144
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->taptoaddcity:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    :cond_0
    :goto_1
    return-void

    .line 1133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1146
    :cond_2
    if-lez v0, :cond_3

    .line 1147
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeNotEmptyCityUI(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1149
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeDBFullUI()V

    goto :goto_1
.end method

.method private getCurrentDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 832
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 833
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocationIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2017
    const/4 v0, 0x0

    .line 2018
    .local v0, index:I
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2019
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    move v1, v2

    .line 2026
    :goto_0
    return v1

    .line 2022
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2023
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v0

    .line 2026
    goto :goto_0

    .line 2022
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getTTStoday()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    .locals 1

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStoday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    return-object v0
.end method

.method private hideError()V
    .locals 2

    .prologue
    .line 2421
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    if-nez v0, :cond_0

    .line 2422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    .line 2424
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->error:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2425
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->notempty_city:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2427
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startAutoScroll()V

    .line 2428
    return-void
.end method

.method private hideLoading()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2355
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshflipper:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2356
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getRegisteredCityCount(Landroid/content/Context;)I

    move-result v0

    .line 2357
    .local v0, mWeatherCount:I
    if-lez v0, :cond_0

    .line 2358
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2362
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    .line 2363
    iput v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    .line 2364
    return-void

    .line 2360
    :cond_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideLocating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2335
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->empty_city:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2336
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLoading()V

    .line 2337
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezoneGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2339
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->datezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2340
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventiconzone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2341
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->temper_zone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2342
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    .line 2344
    return-void
.end method

.method private isChangedTimeForAppearenceAnim(Ljava/util/TimeZone;)Z
    .locals 7
    .parameter "timeZone"

    .prologue
    .line 2509
    const/4 v0, 0x0

    .line 2510
    .local v0, cal:Ljava/util/Calendar;
    if-eqz p1, :cond_0

    .line 2511
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2515
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    div-long v1, v3, v5

    .line 2517
    .local v1, currentTime:J
    iget-wide v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mLastTime:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 2518
    const/4 v3, 0x1

    .line 2520
    :goto_1
    return v3

    .line 2513
    .end local v1           #currentTime:J
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 2520
    .restart local v1       #currentTime:J
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isNewDay()Z
    .locals 2

    .prologue
    .line 2526
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2527
    .local v0, cal:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 2528
    const/4 v1, 0x1

    .line 2530
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNewYear()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1684
    const-string v1, ""

    const-string v2, " isNewYear check "

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1687
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1688
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1690
    if-ne v2, v0, :cond_0

    if-ne v1, v0, :cond_0

    .line 1696
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowLocating()Z
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->empty_city:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->empty_city:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshflipper:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshflipper:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2328
    :cond_1
    const/4 v0, 0x1

    .line 2330
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeTimeText()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x6d

    const/16 v5, 0x6b

    const/16 v4, 0x68

    .line 1452
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 1453
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    .line 1454
    :cond_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTz:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1455
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1457
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1458
    .local v0, format:Ljava/lang/StringBuffer;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1459
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1460
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1465
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1466
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1467
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1462
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1463
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private performNetworkAccess(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;IZZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1767
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [pNA] : bool = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [pNA] : index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", city = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCanceled:Z

    .line 1770
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    .line 1772
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1842
    :cond_0
    :goto_0
    return-void

    .line 1774
    :cond_1
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[pNA] : size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmTempScaleSetting()I

    move-result v2

    .line 1779
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.widgetapp.ap.hero.accuweather"

    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.service.AccuBCService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cityId:current"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1784
    if-eqz p4, :cond_3

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->checkDaemonServerApp(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->getDaemonStatus(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1785
    const-string v2, ""

    const-string v3, "Do not Send Currnet location update"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1787
    const-string v2, ""

    const-string v3, "update autorefresh time!! finsh autorefresh!!"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1789
    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getNextRefreshTime(Landroid/content/Context;)J

    move-result-wide v4

    .line 1790
    cmp-long v2, v4, v2

    if-gtz v2, :cond_2

    move v0, v1

    .line 1791
    :cond_2
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v0

    .line 1792
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->updateNextTime(Landroid/content/Context;J)I

    goto :goto_0

    .line 1795
    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mUseCurrentLocation:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmCurrentLoccation()I

    move-result v4

    if-ne v4, v1, :cond_4

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getCheckCurLoc()I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 1798
    const-string v1, ""

    const-string v2, "request new current location"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoScrollHandler()V

    .line 1800
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefreshHandler()V

    .line 1802
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather.action.MYCURRENTLOCATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1804
    const-string v2, "FIRSTUPDATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1805
    const-string v2, "NETWORK_ONLY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1806
    const-string v0, "NREFRESH"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1807
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1809
    :cond_4
    const-string v0, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no request current locaion : setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmCurrentLoccation()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", switch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getCheckCurLoc()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1814
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showLoading()V

    .line 1815
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.ap.hero.accuweather.action.PERFORM_NETWORK_ACCESS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1817
    const-string v3, "LOCATION"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getRealLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1818
    const-string v3, "SCALESETTING"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1819
    const-string v2, "IS_CURRENT_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1820
    const-string v1, "BOOL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1821
    const-string v1, "NREFRESH"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1822
    const-string v1, "MSGWHAT"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1824
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1825
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    goto/16 :goto_0

    .line 1828
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1829
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showLoading()V

    .line 1830
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.ap.hero.accuweather.action.PERFORM_NETWORK_ACCESS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1832
    const-string v3, "LOCATION"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    const-string v3, "SCALESETTING"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1834
    const-string v2, "IS_CURRENT_LOCATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1835
    const-string v0, "BOOL"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1836
    const-string v0, "NREFRESH"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1837
    const-string v0, "MSGWHAT"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1839
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1840
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    goto/16 :goto_0
.end method

.method private setChangedTimeForAppearenceAnim(Ljava/util/TimeZone;)V
    .locals 5
    .parameter "timeZone"

    .prologue
    .line 2499
    const/4 v0, 0x0

    .line 2500
    .local v0, cal:Ljava/util/Calendar;
    if-eqz p1, :cond_0

    .line 2501
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2505
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mLastTime:J

    .line 2506
    return-void

    .line 2503
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method private setEventListener()V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$6;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$7;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$7;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->logo_zone:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1307
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->logo_zone:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$8;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$8;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1316
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFrameMasking:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1317
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFrameMasking:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1380
    :cond_3
    return-void
.end method

.method private setTTSInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;)V
    .locals 14
    .parameter "today"

    .prologue
    const v13, 0x7f0a0046

    const/16 v12, 0x6d

    const/16 v11, 0x9

    const/16 v9, 0x6b

    const/4 v10, 0x1

    .line 617
    if-nez p1, :cond_1

    .line 618
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStoday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 623
    .local v5, sb:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 624
    .local v3, format:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 625
    .local v6, tempString:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setTTStoday(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;)V

    .line 627
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    if-nez v7, :cond_2

    .line 628
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    .line 630
    :cond_2
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->background:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    .line 631
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v10, :cond_8

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, cityname:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 634
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 635
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setmTTScityname(Ljava/lang/String;)V

    .line 640
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 642
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-nez v7, :cond_5

    .line 643
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hh:mm"

    iget-object v9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-virtual {p0, v8, v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setDateString(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTempScale()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getmTTStoScaleSetting()I

    move-result v8

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->convertTemp(IIF)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, currentTemp:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getmTTStoScaleSetting()I

    move-result v7

    if-ne v7, v10, :cond_7

    .line 661
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0049

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 662
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setmTTStemp(Ljava/lang/String;)V

    .line 670
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getWeatherText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getWeatherText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setmTTSweatherText(Ljava/lang/String;)V

    .line 674
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->background:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 633
    .end local v1           #currentTemp:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 646
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hh:mm"

    iget-object v9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "PM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 649
    :cond_6
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 650
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 651
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 652
    const-string v7, "m, "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, dates:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 665
    .end local v2           #dates:Ljava/lang/String;
    .restart local v1       #currentTemp:Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0048

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 666
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setmTTStemp(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 676
    .end local v0           #cityname:Ljava/lang/String;
    .end local v1           #currentTemp:Ljava/lang/String;
    .end local v4           #i:I
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 677
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 678
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-nez v7, :cond_9

    .line 680
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hh:mm"

    iget-object v9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v8, v9, v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->dateFormat(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    iget-object v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->background:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 683
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hh:mm"

    iget-object v9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "PM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 686
    :cond_a
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 687
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 688
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 689
    const-string v7, "m, "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 691
    .restart local v2       #dates:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4
.end method

.method private setTTStoday(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;)V
    .locals 0
    .parameter "today"

    .prologue
    .line 2574
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStoday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    .line 2575
    return-void
.end method

.method private showError(I)V
    .locals 5
    .parameter "res"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 2380
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezoneGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2382
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->datezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2383
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventiconzone:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2384
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->temper_zone:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2385
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->notempty_city:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2386
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->taptoaddcity:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2387
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2389
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setDefaultDrawInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    move-result-object v0

    .line 2390
    .local v0, predrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    if-eqz v1, :cond_0

    .line 2391
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setImageResource(Z)V

    .line 2395
    :cond_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->error:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2396
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->error_message:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2397
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->error_message:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2399
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoScrollHandler()V

    .line 2401
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 2403
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2417
    :cond_1
    return-void
.end method

.method private showLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2348
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2349
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshflipper:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2350
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    .line 2351
    return-void
.end method

.method private showLocating()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2312
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezoneGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2314
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->datezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2315
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventiconzone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2316
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->temper_zone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2317
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->notempty_city:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2318
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->empty_city:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2319
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showLoading()V

    .line 2320
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->emptyselect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2321
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->taptoaddcity:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2322
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    .line 2323
    return-void
.end method

.method private startWithLocationForResult(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "code"

    .prologue
    .line 1846
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1847
    return-void
.end method

.method private stopLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2367
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshflipper:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2368
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshflipper:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2369
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getRegisteredCityCount(Landroid/content/Context;)I

    move-result v0

    .line 2370
    .local v0, mWeatherCount:I
    if-lez v0, :cond_1

    .line 2371
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2376
    .end local v0           #mWeatherCount:I
    :cond_0
    :goto_0
    return-void

    .line 2373
    .restart local v0       #mWeatherCount:I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTTSInfo()V
    .locals 8

    .prologue
    const/16 v7, 0x6b

    const/4 v6, 0x1

    .line 703
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 704
    .local v2, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 706
    .local v1, format:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    if-nez v3, :cond_0

    .line 707
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    .line 709
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 710
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 711
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hh:mm"

    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 725
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-virtual {p0, v4, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setDateString(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 726
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v6, :cond_3

    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getTTStoday()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getmTTStemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getmTTScityname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getmTTSweatherText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    :goto_1
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->background:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 735
    return-void

    .line 715
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hh:mm"

    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 718
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 719
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 720
    const/16 v3, 0x6d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 721
    const-string v3, "m, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 722
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, dates:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 732
    .end local v0           #dates:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public buildTimeMap()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1518
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1519
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->makeTimeText()Ljava/lang/String;

    move-result-object v0

    .line 1520
    .local v0, dates:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showAmPm1()V

    .line 1521
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1522
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1523
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1533
    :goto_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_hour:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1534
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_minute:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1535
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_minute:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1536
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->date:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->updateTTSInfo()V

    .line 1539
    .end local v0           #dates:Ljava/lang/String;
    :cond_0
    return-void

    .line 1525
    .restart local v0       #dates:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1526
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1529
    :cond_2
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1530
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public buildTimeMap2()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1542
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm2:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1543
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->makeTimeText()Ljava/lang/String;

    move-result-object v0

    .line 1544
    .local v0, dates:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showAmPm2()V

    .line 1545
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1546
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1547
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1557
    :goto_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_hour2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1558
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_minute2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1559
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_minute2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1560
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->date:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->updateTTSInfo()V

    .line 1563
    .end local v0           #dates:Ljava/lang/String;
    :cond_0
    return-void

    .line 1549
    .restart local v0       #dates:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1550
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1553
    :cond_2
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1554
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public buildTimeMapAll()V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1565
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1566
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->makeTimeText()Ljava/lang/String;

    move-result-object v0

    .line 1568
    .local v0, dates:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showAmPm1()V

    .line 1569
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showAmPm2()V

    .line 1570
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1571
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1572
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1573
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1587
    :goto_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_hour2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1588
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_minute2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1589
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_minute2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1591
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_hour:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1592
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_minute:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1593
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_minute:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1595
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->date:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1596
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->updateTTSInfo()V

    .line 1598
    .end local v0           #dates:Ljava/lang/String;
    :cond_0
    return-void

    .line 1575
    .restart local v0       #dates:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1576
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1577
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1578
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1581
    :cond_2
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1582
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1583
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1584
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTimeImages:[I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public cleanResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 974
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 976
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->messageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 981
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->messageHandler:Landroid/os/Handler;

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    if-eqz v0, :cond_2

    .line 985
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 986
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshhandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutorefreshHandler;

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    if-eqz v0, :cond_3

    .line 990
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 991
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    .line 994
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 995
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 996
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mHandler:Landroid/os/Handler;

    .line 999
    :cond_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 1000
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1001
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->handler:Landroid/os/Handler;

    .line 1004
    :cond_5
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 1005
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1006
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventHandler:Landroid/os/Handler;

    .line 1009
    :cond_6
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetUIDataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 1010
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetUIDataHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1011
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetUIDataHandler:Landroid/os/Handler;

    .line 1014
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->clearEventListener()V

    .line 1015
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->clearView()V

    .line 1016
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    if-eqz v0, :cond_8

    .line 1017
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clearView()V

    .line 1018
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    .line 1021
    :cond_8
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    if-eqz v0, :cond_9

    .line 1022
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    .line 1025
    :cond_9
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    if-eqz v0, :cond_a

    .line 1026
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    .line 1029
    :cond_a
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    if-eqz v0, :cond_b

    .line 1030
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    .line 1033
    :cond_b
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 1034
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1035
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    .line 1039
    :cond_c
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStoday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    .line 1041
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshLayout:Landroid/widget/RelativeLayout;

    .line 1042
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    .line 1043
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->audio:Landroid/media/AudioManager;

    .line 1044
    return-void
.end method

.method public clearView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1047
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm:Landroid/widget/TextView;

    .line 1048
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm2:Landroid/widget/TextView;

    .line 1049
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    .line 1050
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_hour:Landroid/widget/ImageView;

    .line 1051
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_minute:Landroid/widget/ImageView;

    .line 1052
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_minute:Landroid/widget/ImageView;

    .line 1053
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->single_temp_icon:Landroid/widget/ImageView;

    .line 1054
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->single_temp_c:Landroid/widget/ImageView;

    .line 1055
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    .line 1056
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFrameMasking:Landroid/widget/ImageView;

    .line 1057
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->taptoaddcity:Landroid/widget/TextView;

    .line 1059
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->date:Landroid/widget/TextView;

    .line 1060
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->current_temp:Landroid/widget/TextView;

    .line 1061
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_city:Landroid/widget/TextView;

    .line 1062
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_state:Landroid/widget/TextView;

    .line 1063
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->last_update:Landroid/widget/TextView;

    .line 1064
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->error_message:Landroid/widget/TextView;

    .line 1065
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->emptyselect:Landroid/widget/TextView;

    .line 1067
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezone:Landroid/widget/RelativeLayout;

    .line 1068
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->datezone:Landroid/widget/RelativeLayout;

    .line 1069
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventiconzone:Landroid/widget/RelativeLayout;

    .line 1070
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->temper_zone:Landroid/widget/RelativeLayout;

    .line 1072
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->empty_city:Landroid/widget/RelativeLayout;

    .line 1073
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->notempty_city:Landroid/widget/RelativeLayout;

    .line 1074
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->error:Landroid/widget/RelativeLayout;

    .line 1076
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->background:Landroid/widget/RelativeLayout;

    .line 1077
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg1:Landroid/widget/ImageView;

    .line 1078
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg2:Landroid/widget/ImageView;

    .line 1079
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_icon:Landroid/widget/ImageView;

    .line 1080
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front1:Landroid/widget/ImageView;

    .line 1081
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front2:Landroid/widget/ImageView;

    .line 1082
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_rain:Landroid/widget/ImageView;

    .line 1084
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    .line 1085
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_hour2:Landroid/widget/ImageView;

    .line 1086
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_minute2:Landroid/widget/ImageView;

    .line 1087
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_minute2:Landroid/widget/ImageView;

    .line 1089
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezone2:Landroid/widget/RelativeLayout;

    .line 1090
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezoneGroup:Landroid/widget/RelativeLayout;

    .line 1091
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->logo_zone:Landroid/widget/RelativeLayout;

    .line 1092
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon:Landroid/widget/ImageView;

    .line 1093
    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon2:Landroid/widget/ImageView;

    .line 1094
    return-void
.end method

.method public fireOnPause()V
    .locals 2

    .prologue
    .line 1097
    const-string v0, ""

    const-string v1, " fireOP"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setActivityVisibleState(Z)V

    .line 1100
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTz:Ljava/util/TimeZone;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setChangedTimeForAppearenceAnim(Ljava/util/TimeZone;)V

    .line 1101
    return-void
.end method

.method public fireOnResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1104
    const-string v0, ""

    const-string v1, " fireOR"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mIsVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->getDrawingInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTz:Ljava/util/TimeZone;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isChangedTimeForAppearenceAnim(Ljava/util/TimeZone;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->buildTimeCurrentClock()V

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1111
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->getmAnimHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->isPlayAin()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmAutoScroll()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1113
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->getmAnimHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1118
    :goto_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setWindowImage(Z)V

    .line 1124
    :cond_1
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setActivityVisibleState(Z)V

    .line 1125
    return-void

    .line 1116
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setImageResource(Z)V

    goto :goto_0

    .line 1120
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1121
    const-string v0, ""

    const-string v1, " fireOR, mCityList == NULL"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAllData()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1747
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1748
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCanceled:Z

    .line 1749
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCompleted:Z

    .line 1750
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getAllCityList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    .line 1751
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoScrollHandler()V

    .line 1752
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefreshHandler()V

    .line 1754
    iput v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mResponseCnt:I

    .line 1755
    iput v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    .line 1756
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    const/4 v3, 0x1

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->performNetworkAccess(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;IZZI)V

    .line 1756
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1760
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method public getArrowGroup()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->arrowGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCityCount()I
    .locals 1

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2535
    const/4 v0, 0x0

    .line 2537
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEmboss()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->emboss:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTimezone()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezone:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTimezone2()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezone2:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getWeather_bg1()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg1:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getWeather_bg2()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg2:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getWeather_front1()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front1:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getWeather_front2()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front2:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getWeather_icon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getWeather_rain()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_rain:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getmTTScityname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTScityname:Ljava/lang/String;

    return-object v0
.end method

.method public getmTTStemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStemp:Ljava/lang/String;

    return-object v0
.end method

.method public getmTTStoScaleSetting()I
    .locals 1

    .prologue
    .line 2582
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStoScaleSetting:I

    return v0
.end method

.method public getmTTSweatherText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTSweatherText:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 739
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezoneGroup:Landroid/widget/RelativeLayout;

    .line 741
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezone:Landroid/widget/RelativeLayout;

    .line 742
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->datezone:Landroid/widget/RelativeLayout;

    .line 743
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventiconzone:Landroid/widget/RelativeLayout;

    .line 744
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    .line 745
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->temper_zone:Landroid/widget/RelativeLayout;

    .line 746
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->empty_city:Landroid/widget/RelativeLayout;

    .line 747
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->emptyselect:Landroid/widget/TextView;

    .line 748
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->notempty_city:Landroid/widget/RelativeLayout;

    .line 749
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshLayout:Landroid/widget/RelativeLayout;

    .line 750
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refresh:Landroid/widget/RelativeLayout;

    .line 751
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->refreshflipper:Landroid/widget/ProgressBar;

    .line 752
    const v0, 0x7f06003f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->error:Landroid/widget/RelativeLayout;

    .line 753
    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->error_message:Landroid/widget/TextView;

    .line 755
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezone2:Landroid/widget/RelativeLayout;

    .line 757
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm:Landroid/widget/TextView;

    .line 758
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm2:Landroid/widget/TextView;

    .line 759
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour:Landroid/widget/ImageView;

    .line 760
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_hour:Landroid/widget/ImageView;

    .line 761
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_minute:Landroid/widget/ImageView;

    .line 762
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_minute:Landroid/widget/ImageView;

    .line 763
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->date:Landroid/widget/TextView;

    .line 764
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->current_temp:Landroid/widget/TextView;

    .line 765
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->single_temp_c:Landroid/widget/ImageView;

    .line 766
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->single_temp_icon:Landroid/widget/ImageView;

    .line 767
    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_city:Landroid/widget/TextView;

    .line 768
    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_state:Landroid/widget/TextView;

    .line 769
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->last_update:Landroid/widget/TextView;

    .line 770
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFrameMasking:Landroid/widget/ImageView;

    .line 771
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->background:Landroid/widget/RelativeLayout;

    .line 772
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->taptoaddcity:Landroid/widget/TextView;

    .line 773
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->logo_zone:Landroid/widget/RelativeLayout;

    .line 775
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->arrowGroup:Landroid/widget/RelativeLayout;

    .line 776
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon:Landroid/widget/ImageView;

    .line 777
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon2:Landroid/widget/ImageView;

    .line 779
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_hour2:Landroid/widget/ImageView;

    .line 780
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_hour2:Landroid/widget/ImageView;

    .line 781
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->first_minute2:Landroid/widget/ImageView;

    .line 782
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->second_minute2:Landroid/widget/ImageView;

    .line 784
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg1:Landroid/widget/ImageView;

    .line 785
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg2:Landroid/widget/ImageView;

    .line 786
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_rain:Landroid/widget/ImageView;

    .line 787
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front1:Landroid/widget/ImageView;

    .line 788
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front2:Landroid/widget/ImageView;

    .line 789
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_icon:Landroid/widget/ImageView;

    .line 790
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->tv_current:Landroid/widget/ImageView;

    .line 792
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->emboss:Landroid/widget/ImageView;

    .line 793
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mLastTime:J

    .line 794
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFlickingDirection:I

    .line 795
    return-void
.end method

.method public initEvent()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    if-nez v0, :cond_2

    .line 799
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    .line 803
    :goto_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    if-nez v0, :cond_3

    .line 804
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    .line 808
    :goto_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    if-nez v0, :cond_4

    .line 809
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    .line 813
    :goto_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mEventBackupDate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mEventBackupDate:Ljava/lang/String;

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 818
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    :cond_1
    return-void

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->init()V

    goto :goto_0

    .line 806
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->init()V

    goto :goto_1

    .line 811
    :cond_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->init()V

    goto :goto_2
.end method

.method public isDay(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x12

    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2166
    .line 2167
    if-eqz p1, :cond_2

    .line 2168
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2173
    :goto_0
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2174
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2177
    if-nez p2, :cond_3

    .line 2178
    const-string v0, ""

    const-string v3, "isDay() ::: sunrise is null "

    invoke-static {v0, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    new-array v0, v7, [I

    .line 2180
    aput v8, v0, v1

    .line 2181
    aput v1, v0, v2

    move-object v3, v0

    .line 2189
    :goto_1
    if-nez p3, :cond_4

    .line 2190
    const-string v0, ""

    const-string v6, "isDay() ::: sunset is null "

    invoke-static {v0, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    new-array v0, v7, [I

    .line 2192
    aput v9, v0, v1

    .line 2193
    aput v1, v0, v2

    .line 2201
    :goto_2
    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    .line 2208
    aget v6, v3, v1

    if-gt v4, v6, :cond_0

    aget v6, v3, v1

    if-ne v4, v6, :cond_6

    aget v3, v3, v2

    if-lt v5, v3, :cond_6

    .line 2209
    :cond_0
    aget v3, v0, v1

    if-gt v4, v3, :cond_1

    aget v3, v0, v1

    if-ne v4, v3, :cond_5

    aget v0, v0, v2

    if-lt v5, v0, :cond_5

    :cond_1
    move v0, v1

    .line 2228
    :goto_3
    return v0

    .line 2170
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 2183
    :cond_3
    invoke-static {p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getHourAndMin(Ljava/lang/String;)[I

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 2195
    :cond_4
    invoke-static {p3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getHourAndMin(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v2

    .line 2212
    goto :goto_3

    :cond_6
    move v0, v1

    .line 2214
    goto :goto_3

    .line 2222
    :cond_7
    if-lt v4, v8, :cond_9

    .line 2223
    if-lt v4, v9, :cond_8

    move v0, v1

    .line 2224
    goto :goto_3

    :cond_8
    move v0, v2

    .line 2226
    goto :goto_3

    :cond_9
    move v0, v1

    .line 2228
    goto :goto_3
.end method

.method public ismIsRefreshing()Z
    .locals 1

    .prologue
    .line 2541
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mIsRefreshing:Z

    return v0
.end method

.method public makeTodayDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 1640
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1642
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1643
    :cond_0
    const-string v0, "mm-dd-yyyy"

    .line 1646
    :cond_1
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    .line 1647
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0x14

    invoke-static {v1, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    .line 1648
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0044

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1649
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0045

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1650
    const/4 v1, 0x0

    .line 1651
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 1653
    if-eqz v6, :cond_9

    .line 1654
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ja"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ko"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1655
    :cond_2
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1656
    const-string v0, "%te%s %s %s%s%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v9

    aput-object v4, v1, v10

    aput-object v2, v1, v8

    const-string v2, "("

    aput-object v2, v1, v11

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x5

    const-string v3, ")"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    :goto_0
    return-object v0

    .line 1657
    :cond_3
    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1658
    const-string v0, "%s %te%s %s%s%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v9

    aput-object p1, v1, v10

    aput-object v4, v1, v8

    const-string v2, "("

    aput-object v2, v1, v11

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x5

    const-string v3, ")"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1661
    :cond_4
    const-string v0, "%s %te%s %s%s%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v9

    aput-object p1, v1, v10

    aput-object v4, v1, v8

    const-string v2, "("

    aput-object v2, v1, v11

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x5

    const-string v3, ")"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1665
    :cond_5
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1666
    const-string v0, "%s %te%s %s"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    aput-object p1, v1, v10

    aput-object v4, v1, v8

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1667
    :cond_6
    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1668
    const-string v0, "%s %s %te%s"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    aput-object v2, v1, v10

    aput-object p1, v1, v8

    aput-object v4, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1669
    :cond_7
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1671
    const-string v0, "%s %te%s %s"

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v2, v1, v9

    aput-object p1, v1, v10

    aput-object v4, v1, v8

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1673
    :cond_8
    const-string v0, "%s %tY%s %s %te%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    aput-object p1, v1, v10

    aput-object v5, v1, v8

    aput-object v2, v1, v11

    aput-object p1, v1, v12

    const/4 v2, 0x5

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1712
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1713
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getAllCityList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1715
    .local v0, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;>;"
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFromActivityResult:Z

    .line 1716
    const/16 v2, 0x3e7

    if-ne v2, p2, :cond_0

    .line 1717
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeDBFullUI()V

    .line 1743
    :goto_0
    return-void

    .line 1721
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isShowLocating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1722
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideLocating()V

    .line 1725
    :cond_1
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getSettings(Landroid/content/Context;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    .line 1726
    const/16 v2, 0x7cf

    if-eq p1, v2, :cond_2

    const/16 v2, 0xbb7

    if-ne p1, v2, :cond_4

    .line 1728
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1729
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmLastSelectLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeNotEmptyCityUI(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1733
    :catch_0
    move-exception v1

    .line 1734
    .local v1, ex:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeUi(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1731
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeUi(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1738
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmLastSelectLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeNotEmptyCityUI(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1739
    :catch_1
    move-exception v1

    .line 1740
    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeUi(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 845
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 846
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setContentView(I)V

    .line 847
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setActivityVisibleState(Z)V

    .line 848
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->init()V

    .line 849
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->audio:Landroid/media/AudioManager;

    .line 850
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    .line 851
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setmIsFirstAppearenceAnim(Z)V

    .line 852
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->buildTimeMapAll()V

    .line 853
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getAllCityList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeUi(Ljava/util/ArrayList;)V

    .line 854
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setEventListener()V

    .line 855
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 856
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x320

    const/16 v3, 0x1e0

    const/4 v4, 0x1

    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mUseCurrentLocation:Z

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 207
    iput-object p0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mThemeName:Ljava/lang/String;

    .line 209
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " theme -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mThemeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mThemeName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 213
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mThemeName:Ljava/lang/String;

    .line 215
    :cond_0
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->width:I

    if-gt v0, v3, :cond_1

    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->height:I

    if-le v0, v5, :cond_3

    :cond_1
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->width:I

    if-gt v0, v5, :cond_2

    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->height:I

    if-le v0, v3, :cond_3

    .line 216
    :cond_2
    const-string v0, "AccuWeather (Weather Analog Clock 1)"

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mThemeName:Ljava/lang/String;

    .line 219
    :cond_3
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setContentView(I)V

    .line 221
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setActivityVisibleState(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->init()V

    .line 225
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->audio:Landroid/media/AudioManager;

    .line 226
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getSettings(Landroid/content/Context;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    .line 228
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->buildTimeMapAll()V

    .line 230
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createComposui:Z

    if-nez v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getAllCityList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeUi(Ljava/util/ArrayList;)V

    .line 232
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createComposui:Z

    .line 234
    :cond_4
    invoke-static {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getWindowDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->display:Landroid/view/Display;

    .line 235
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->width:I

    .line 236
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->height:I

    .line 238
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setEventListener()V

    .line 239
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 932
    const-string v0, ""

    const-string v1, " onDestroy "

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 937
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoScrollHandler()V

    .line 938
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefreshHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 942
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 943
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cleanResource()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 955
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mBound:Z

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    if-eqz v0, :cond_0

    .line 958
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCallback:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

    invoke-interface {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;->unregisterCallback(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;)V

    .line 959
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 966
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 967
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mBound:Z

    .line 970
    :cond_1
    :goto_2
    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 947
    :try_start_3
    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 950
    :catch_1
    move-exception v0

    .line 952
    :try_start_4
    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 955
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mBound:Z

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    if-eqz v0, :cond_2

    .line 958
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCallback:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

    invoke-interface {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;->unregisterCallback(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;)V

    .line 959
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 966
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 967
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mBound:Z

    goto :goto_2

    .line 955
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mBound:Z

    if-eqz v1, :cond_4

    .line 956
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    if-eqz v1, :cond_3

    .line 958
    :try_start_6
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mService:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCallback:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;->unregisterCallback(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;)V

    .line 959
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 960
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 961
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mServiceHandler:Landroid/os/Handler;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 966
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 967
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mBound:Z

    :cond_4
    throw v0

    .line 963
    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 916
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 918
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFromActivityResult:Z

    .line 919
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createComposui:Z

    .line 920
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoScrollHandler()V

    .line 921
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefreshHandler()V

    .line 923
    const-string v0, ""

    const-string v1, " onPause "

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 925
    const-string v0, ""

    const-string v1, "isFinishing"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->updateLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)I

    .line 928
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 859
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 862
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getAllCityList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 863
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getSettings(Landroid/content/Context;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    .line 864
    invoke-static {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 866
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onResume :: fU = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->firstUpdate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  cEUi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createEventUi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 870
    sget-boolean v4, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->firstUpdate:Z

    if-eqz v4, :cond_0

    .line 872
    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmNeedLocation()I

    move-result v4

    if-ne v4, v1, :cond_0

    if-nez v3, :cond_0

    .line 874
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCanceled:Z

    .line 875
    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mRefreshCnt:I

    .line 877
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoScrollHandler()V

    .line 878
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefreshHandler()V

    .line 880
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeEmptyCityUI(Z)V

    .line 882
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.action.MYCURRENTLOCATION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.widgetapp.ap.hero.accuweather"

    const-string v7, "com.sec.android.widgetapp.ap.hero.accuweather.service.AccuBCService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 886
    const-string v5, "FIRSTUPDATE"

    sget-boolean v6, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->firstUpdate:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 887
    const-string v5, "NETWORK_ONLY"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 888
    const-string v5, "NREFRESH"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 889
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 890
    sput-boolean v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->firstUpdate:Z

    move v0, v1

    .line 894
    :cond_0
    if-nez v0, :cond_1

    if-lez v3, :cond_1

    .line 896
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->checkAutoRefresh(Z)V

    .line 897
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startAutoScroll()V

    .line 899
    :cond_1
    if-eqz v0, :cond_2

    .line 900
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setAutoScrollTime()V

    .line 903
    :cond_2
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onResume :: mFAR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFromActivityResult:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createComposui:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cEUI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createEventUi:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFromActivityResult:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createComposui:Z

    if-nez v0, :cond_3

    .line 905
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createComposui:Z

    .line 906
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeUi(Ljava/util/ArrayList;)V

    .line 908
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createEventUi:Z

    if-nez v0, :cond_4

    .line 910
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->composeEventUI()V

    .line 911
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->createEventUi:Z

    .line 913
    :cond_4
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .locals 0
    .parameter "onoff"

    .prologue
    .line 841
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mIsVisible:Z

    .line 842
    return-void
.end method

.method public setAutoScrollTime()V
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmAutoScroll()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mAutoScrollTime:I

    .line 1958
    return-void
.end method

.method public setDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1601
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1604
    if-eqz v0, :cond_1

    .line 1605
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->makeTodayDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 1616
    :goto_0
    return-object v0

    .line 1609
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->dateFormat(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1613
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->dateFormat(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setDateString(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1623
    if-eqz v0, :cond_1

    .line 1624
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->makeTodayDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 1635
    :goto_0
    return-object v0

    .line 1628
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->dateFormat(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1632
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->dateFormat(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setDefaultDrawInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    .locals 3

    .prologue
    .line 2486
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;-><init>()V

    .line 2487
    .local v0, drawInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->setWeatherIcon(I)V

    .line 2488
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    if-eqz v2, :cond_1

    .line 2489
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->getDrawingInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    move-result-object v1

    .line 2490
    .local v1, temp:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setDrawingInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;)V

    .line 2491
    if-nez v1, :cond_0

    .line 2495
    .end local v0           #drawInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    .end local v1           #temp:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    :goto_0
    return-object v0

    .restart local v0       #drawInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    .restart local v1       #temp:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    :cond_0
    move-object v0, v1

    .line 2493
    goto :goto_0

    .line 2495
    .end local v1           #temp:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUiWithDatabaseData()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const v5, 0x7f020019

    const v4, 0x7f020003

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1385
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->error:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1386
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->error_message:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1388
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->timezoneGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1390
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ismPlayAnim()Z

    .line 1392
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->datezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1393
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->eventiconzone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1395
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->temper_zone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1397
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->taptoaddcity:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1398
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_rain:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1399
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1400
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1401
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1402
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1407
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->temper_zone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1412
    :goto_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    .line 1413
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->taptoaddcity:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1425
    :goto_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetUIDataHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getDetailDataForMain(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1426
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;

    const-string v1, "cityId:current"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1429
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->tv_current:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->tv_current:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1409
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->temper_zone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1410
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1415
    :cond_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->taptoaddcity:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1416
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1417
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1418
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1419
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1420
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->weather_rain:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1432
    :cond_5
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->tv_current:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->tv_current:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setmTTScityname(Ljava/lang/String;)V
    .locals 0
    .parameter "cityname"

    .prologue
    .line 2570
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTScityname:Ljava/lang/String;

    .line 2571
    return-void
.end method

.method public setmTTStemp(Ljava/lang/String;)V
    .locals 0
    .parameter "mTemp"

    .prologue
    .line 2562
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStemp:Ljava/lang/String;

    .line 2563
    return-void
.end method

.method public setmTTStoScaleSetting(I)V
    .locals 0
    .parameter "mToScaleSetting"

    .prologue
    .line 2586
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTStoScaleSetting:I

    .line 2587
    return-void
.end method

.method public setmTTSweatherText(Ljava/lang/String;)V
    .locals 0
    .parameter "mWeatherText"

    .prologue
    .line 2554
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mTTSweatherText:Ljava/lang/String;

    .line 2555
    return-void
.end method

.method public showAmPm1()V
    .locals 2

    .prologue
    .line 1494
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1495
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1496
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm:Landroid/widget/TextView;

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1503
    :goto_0
    return-void

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm:Landroid/widget/TextView;

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1501
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAmPm2()V
    .locals 2

    .prologue
    .line 1506
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1507
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1508
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->cal_b:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm2:Landroid/widget/TextView;

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1515
    :goto_0
    return-void

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm2:Landroid/widget/TextView;

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->am_pm2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showDTSicon(I)V
    .locals 2
    .parameter

    .prologue
    .line 1470
    if-lez p1, :cond_1

    .line 1471
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon:Landroid/widget/ImageView;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1476
    :goto_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1480
    :goto_1
    return-void

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1478
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showDTSicon2(I)V
    .locals 2
    .parameter

    .prologue
    .line 1482
    if-lez p1, :cond_1

    .line 1483
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon2:Landroid/widget/ImageView;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1488
    :goto_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1492
    :goto_1
    return-void

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon2:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1490
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->summmerTime_icon2:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public startAutoScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1962
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setAutoScrollTime()V

    .line 1963
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    if-nez v0, :cond_0

    .line 1964
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$1;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    .line 1966
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1968
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mAutoScrollTime:I

    if-lez v0, :cond_1

    .line 1970
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mAutoScrollTime:I

    if-ne v0, v5, :cond_2

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->interval:I

    .line 1971
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    if-eqz v0, :cond_1

    .line 1973
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->removeMessages(I)V

    .line 1974
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->autoScrollerHandler:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;

    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->interval:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$AutoScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1978
    :cond_1
    return-void

    .line 1970
    :cond_2
    const/16 v0, 0xa

    goto :goto_0
.end method
