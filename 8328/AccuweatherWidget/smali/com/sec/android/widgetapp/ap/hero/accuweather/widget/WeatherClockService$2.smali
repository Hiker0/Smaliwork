.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;
.super Landroid/os/Handler;
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
    .line 115
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 117
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 179
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 181
    :goto_0
    return-void

    .line 119
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->value:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 124
    .local v14, N:I
    if-nez v14, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->what:I

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->access$000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v17, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2$1;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;)V

    const-wide/16 v18, 0x1f4

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 137
    :cond_0
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v14, :cond_1

    .line 139
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;->valueChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 148
    .end local v14           #N:I
    .end local v15           #i:I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 150
    .local v16, intent:Landroid/content/Intent;
    const-string v3, "POSITION"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 151
    .local v4, position:I
    const-string v3, "RCODE"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 152
    .local v5, responseCode:I
    const/4 v6, 0x0

    .line 153
    .local v6, location:Ljava/lang/String;
    const-string v3, "IS_CURRENT_LOCATION"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const-string v6, "cityId:current"

    .line 157
    :goto_3
    const-string v3, "SCALESETTING"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 158
    .local v7, tempScaleSetting:I
    const-string v3, "BOOL"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 159
    .local v8, bool:Z
    const-string v3, "NREFRESH"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 160
    .local v9, needRefresh:Z
    const-string v3, "MSGWHAT"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 161
    .local v13, msgWhat:I
    const-string v3, "RSTATUS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, responseStatus:Ljava/lang/String;
    const-string v3, "RBODY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 163
    .local v11, responseBody:Ljava/lang/String;
    const-string v3, "NETWORK_CONNECTED"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 166
    .local v12, bNetConnected:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 167
    .restart local v14       #N:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    if-ge v15, v14, :cond_3

    .line 169
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

    invoke-interface/range {v3 .. v13}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;->httpResponse(IILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 156
    .end local v7           #tempScaleSetting:I
    .end local v8           #bool:Z
    .end local v9           #needRefresh:Z
    .end local v10           #responseStatus:Ljava/lang/String;
    .end local v11           #responseBody:Ljava/lang/String;
    .end local v12           #bNetConnected:Z
    .end local v13           #msgWhat:I
    .end local v14           #N:I
    .end local v15           #i:I
    :cond_2
    const-string v3, "LOCATION"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 176
    .restart local v7       #tempScaleSetting:I
    .restart local v8       #bool:Z
    .restart local v9       #needRefresh:Z
    .restart local v10       #responseStatus:Ljava/lang/String;
    .restart local v11       #responseBody:Ljava/lang/String;
    .restart local v12       #bNetConnected:Z
    .restart local v13       #msgWhat:I
    .restart local v14       #N:I
    .restart local v15       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v3

    goto :goto_5

    .line 140
    .end local v4           #position:I
    .end local v5           #responseCode:I
    .end local v6           #location:Ljava/lang/String;
    .end local v7           #tempScaleSetting:I
    .end local v8           #bool:Z
    .end local v9           #needRefresh:Z
    .end local v10           #responseStatus:Ljava/lang/String;
    .end local v11           #responseBody:Ljava/lang/String;
    .end local v12           #bNetConnected:Z
    .end local v13           #msgWhat:I
    .end local v16           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
