.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;
.super Ljava/lang/Object;
.source "DaemonInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDaemonServerApp(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 227
    const-string v2, ""

    const-string v3, "DmSvApp !!!!"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 231
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.sec.android.daemonapp.ap.accuweather"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    return-object v2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    const-string v3, "Don`t have Daemon Server : Not Found!!!!"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static checkSameDaemonCityIdAtDate(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "ctx"
    .parameter "dbHelper"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, cityId:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 108
    .local v4, flag:Ljava/lang/Boolean;
    invoke-static {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->checkDaemonServerApp(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->getSettingDaemonCityId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 113
    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 114
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ChkDmCt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    .line 117
    .local v1, city:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=== Widget CURRENT_LOCATION= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cityId:current"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cityId:current"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 119
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getRealLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    invoke-static {p0, p1, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->setDaemonUpdateDate(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;)V

    .line 121
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 133
    .end local v1           #city:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    .line 136
    .restart local v1       #city:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=== widget CURRENT_LOCATION= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cityId:current"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cityId:current"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 138
    invoke-static {p0, p1, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->setDaemonUpdateDate(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;)V

    goto/16 :goto_0

    .line 125
    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    invoke-static {p0, p1, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->setDaemonUpdateDate(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;)V

    .line 127
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 128
    goto :goto_1

    .line 140
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "KEY_UPDATE_DAEMON_FROM_WIDGET"

    const-string v8, "widget"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 145
    new-instance v3, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.daemonapp.ap.accuweather"

    const-string v8, "com.sec.android.daemonapp.ap.accuweather.AccuWeatherDaemonService"

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 154
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #city:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_6
    const-string v7, ""

    const-string v8, "D`t Ct Dm!!!!!!!!!!!"

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 156
    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    .line 157
    .restart local v1       #city:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=== widget CURRENT_LOCATION= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cityId:current"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cityId:current"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 159
    invoke-static {p0, p1, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->setDaemonUpdateDate(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;)V

    goto/16 :goto_0

    .line 162
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v7, "KEY_UPDATE_DAEMON_FROM_WIDGET"

    const-string v8, "widget"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 167
    new-instance v3, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.daemonapp.ap.accuweather"

    const-string v8, "com.sec.android.daemonapp.ap.accuweather.AccuWeatherDaemonService"

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static getDaemonStatus(Landroid/content/Context;)I
    .locals 4
    .parameter "ctx"

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, Service_Status:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aw_daemon_service_key_service_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 246
    :goto_0
    return v0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSettingDaemonCityId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, CityId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aw_daemon_service_key_loc_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 255
    .end local v0           #CityId:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #CityId:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendDate(Landroid/content/Context;ILcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;)V
    .locals 8
    .parameter "ctx"
    .parameter "tempScale"
    .parameter "today"

    .prologue
    const/4 v7, 0x0

    .line 49
    const-string v4, ""

    const-string v5, "sndDateDm !!!!"

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;

    move-result-object v0

    .line 53
    .local v0, WeatherInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "KEY_CURRENT_TEMP"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v6

    invoke-static {v5, p1, v6, v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v4, "KEY_HIGH_TEMP"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getHighTemp()F

    move-result v6

    invoke-static {v5, p1, v6, v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v4, "KEY_LOW_TEMP"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getLowTemp()F

    move-result v6

    invoke-static {v5, p1, v6, v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v4, "KEY_ICON_NUM"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getIconNum()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v4, "KEY_UPDATE_TIME"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 64
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_DATA_WITH_WIDGET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.ap.accuweather"

    const-string v5, "com.sec.android.daemonapp.ap.accuweather.AccuWeatherDaemonService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v2, component:Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static sendSetting(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;II)V
    .locals 6
    .parameter "ctx"
    .parameter "cityListItem"
    .parameter "tempScale"
    .parameter "autoRefresh"

    .prologue
    .line 23
    const-string v4, ""

    const-string v5, "sndSetDm !!!!"

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "SERVICE_STATUS"

    invoke-static {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->getDaemonStatus(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    const/4 v3, 0x0

    .line 29
    .local v3, location:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cityId:current"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getRealLocation()Ljava/lang/String;

    move-result-object v3

    .line 33
    :goto_0
    const-string v4, "CITY_ID"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v4, "CITY"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v4, "STATE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v4, "TEMPSCALE"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v4, "AUTOREFRESH"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_SETTING_WITH_WIDGET"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 42
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.ap.accuweather"

    const-string v5, "com.sec.android.daemonapp.ap.accuweather.AccuWeatherDaemonService"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    return-void

    .line 32
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static setDaemonAccuRefresh(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 258
    invoke-static {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->updateAutoRefreshTime(Landroid/content/Context;I)I

    .line 260
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v0

    .line 261
    .local v0, nextTime:J
    invoke-static {p0, v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->updateNextTime(Landroid/content/Context;J)I

    .line 262
    return-void
.end method

.method public static setDaemonTemp(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 265
    if-ne p1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->updateTempScale(Landroid/content/Context;I)I

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.ap.hero.accuweather.action.CHANGE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SEND_DAEMON_SETTING_UPDATE_WIDGET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    return-void

    .line 265
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDaemonUpdateDate(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;)V
    .locals 5
    .parameter "ctx"
    .parameter "dbHelper"
    .parameter "city"

    .prologue
    .line 76
    const-string v3, ""

    const-string v4, "setDmUdD !!!!"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, 0x0

    .local v1, tempScale:I
    const/4 v0, 0x0

    .line 80
    .local v0, autoRefresh:I
    invoke-static {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getTempScaleSetting(Landroid/content/Context;)I

    move-result v1

    .line 81
    invoke-static {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getAutoRefreshTime(Landroid/content/Context;)I

    move-result v0

    .line 83
    invoke-virtual {p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/db/DBHelper;->getDetailWeatherInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;

    move-result-object v2

    .line 85
    .local v2, today:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;
    invoke-static {p0, p2, v1, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->sendSetting(Landroid/content/Context;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;II)V

    .line 86
    if-eqz v2, :cond_0

    .line 87
    invoke-static {p0, v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DaemonInterface;->sendDate(Landroid/content/Context;ILcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/DetailWeatherInfo;)V

    .line 90
    :cond_0
    return-void
.end method
