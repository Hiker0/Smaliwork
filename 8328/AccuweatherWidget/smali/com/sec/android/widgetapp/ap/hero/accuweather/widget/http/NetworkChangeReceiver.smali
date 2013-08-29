.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver$INetworkChangeLinster;
    }
.end annotation


# instance fields
.field private nwChangeListener:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver$INetworkChangeLinster;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 39
    .local v1, net:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 41
    .local v2, st:Landroid/net/NetworkInfo$State;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;->nwChangeListener:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver$INetworkChangeLinster;

    if-eqz v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;->nwChangeListener:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver$INetworkChangeLinster;

    invoke-interface {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver$INetworkChangeLinster;->onWifiConnected()V

    .line 46
    .end local v1           #net:Landroid/net/NetworkInfo;
    .end local v2           #st:Landroid/net/NetworkInfo$State;
    :cond_0
    return-void
.end method

.method public setNwChangeListener(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver$INetworkChangeLinster;)V
    .locals 0
    .parameter "nwChangeListener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver;->nwChangeListener:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/http/NetworkChangeReceiver$INetworkChangeLinster;

    .line 50
    return-void
.end method
