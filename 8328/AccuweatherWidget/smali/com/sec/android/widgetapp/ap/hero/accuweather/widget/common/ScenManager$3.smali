.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;
.super Ljava/lang/Object;
.source "ScenManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->changeDayNightAnimation()V
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
    .line 489
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 491
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 490
    return-void
.end method
