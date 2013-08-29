.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;
.super Landroid/app/Service;
.source "WeatherClockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDateFormatObserver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIsScreenOn:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private networkChangeReceiver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;

.field protected value:Ljava/lang/String;

.field protected what:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->networkChangeReceiver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;

    .line 32
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->value:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mIsScreenOn:Z

    .line 102
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$1;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mBinder:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService$Stub;

    .line 115
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;

    .line 184
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mIsScreenOn:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mBinder:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v2, "clock.date_format_changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v2, "HYBRID_WEATHER_EVENT_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_OK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_START"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_EXCEPTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_DATA_NETWORK_ERROR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_ERROR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_PROVIDER_ERR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather.action.NOT_ENOUGHT_SPACE_ERR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_NETWORK_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather.action.ACTION_PERFORM_NETWORK_ACCESS_RESPONCE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v1, filter1:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->networkChangeReceiver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    new-instance v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mDateFormatObserver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://settings/system/date_format"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mDateFormatObserver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->networkChangeReceiver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->networkChangeReceiver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;->setNwChangeListener(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver$INetworkChangeLinster;)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->networkChangeReceiver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mDateFormatObserver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;

    if-eqz v0, :cond_5

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mDateFormatObserver:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$DateFormatObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    :cond_5
    const-string v0, "WeatherClockService"

    const-string v1, "onDestroy : End"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 100
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method
