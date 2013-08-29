.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;
.super Ljava/lang/Object;
.source "WeatherClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

.field final synthetic val$predrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2404
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iput-object p2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;->val$predrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2408
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;->val$predrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setDrawingInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;)V

    .line 2409
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mScenManager:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setImageResource(Z)V

    .line 2412
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->hideError()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$4200(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 2413
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$11;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setUiWithDatabaseData()V

    .line 2414
    return-void
.end method
