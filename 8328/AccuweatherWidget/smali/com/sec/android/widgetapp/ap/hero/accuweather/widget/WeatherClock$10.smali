.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;
.super Landroid/os/Handler;
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
    .line 2257
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2259
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " eHdl msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->getInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2263
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cEvUI MB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    invoke-static {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->getInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2266
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$1;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2306
    :cond_0
    :goto_0
    return-void

    .line 2277
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$4000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$4000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->getInit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSetting:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->getmNewyear()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2278
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cEvUI NY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mNewYear:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    invoke-static {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$4000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->getInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2280
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2281
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$2;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2290
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$4100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$4100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->getInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2291
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cEvUI CB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFriend:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    invoke-static {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$4100(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->getInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2293
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2294
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->event_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$3;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$3;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
