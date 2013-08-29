.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;
.super Landroid/content/BroadcastReceiver;
.source "WeatherClockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 187
    if-nez p2, :cond_1

    .line 188
    const-string v5, "WeatherClockService"

    const-string v6, "action : intent = null"

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, action:Ljava/lang/String;
    const-string v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 195
    .local v3, cal:Ljava/util/Calendar;
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mIsScreenOn:Z
    invoke-static {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_0

    .line 196
    :cond_2
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 197
    .end local v3           #cal:Ljava/util/Calendar;
    :cond_3
    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "clock.date_format_changed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "HYBRID_WEATHER_EVENT_UPDATE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 206
    :cond_4
    const-string v5, "WeatherClockService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " BR act = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 208
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mIsScreenOn:Z
    invoke-static {v5, v9}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$102(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;Z)Z

    .line 211
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 209
    :cond_6
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 210
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mIsScreenOn:Z
    invoke-static {v5, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$102(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;Z)Z

    goto :goto_1

    .line 212
    :cond_7
    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 213
    const-string v5, "WeatherClockService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " BR act = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v5, "MENUNUM"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 215
    .local v4, menunum:I
    if-ne v4, v10, :cond_9

    .line 216
    const-string v5, "AUTOREFRESH"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 217
    .local v0, DaemonRefresh:I
    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->setDaemonAccuRefresh(Landroid/content/Context;I)V

    .line 223
    .end local v0           #DaemonRefresh:I
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 219
    :cond_9
    if-ne v4, v8, :cond_8

    .line 220
    const-string v5, "TEMP"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 221
    .local v1, DaemonTemp:I
    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->setDaemonTemp(Landroid/content/Context;I)V

    goto :goto_2

    .line 224
    .end local v1           #DaemonTemp:I
    .end local v4           #menunum:I
    :cond_a
    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_OK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_START"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_EXCEPTION"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_DATA_NETWORK_ERROR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_ERROR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_PROVIDER_ERR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.action.NOT_ENOUGHT_SPACE_ERR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.action.GET_CURRENT_LOCATION_NETWORK_FAILED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 233
    :cond_b
    const-string v5, "WeatherClockService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " BR act = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 235
    :cond_c
    const-string v5, "com.sec.android.widgetapp.ap.hero.accuweather.action.ACTION_PERFORM_NETWORK_ACCESS_RESPONCE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    const-string v5, "WeatherClockService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " BR act = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
