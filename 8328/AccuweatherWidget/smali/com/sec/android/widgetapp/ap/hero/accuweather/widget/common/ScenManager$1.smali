.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$1;
.super Landroid/os/Handler;
.source "ScenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mAnimHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->isPlayAin:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mAnimHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$1;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->startAnimation(I)V

    goto :goto_0
.end method
