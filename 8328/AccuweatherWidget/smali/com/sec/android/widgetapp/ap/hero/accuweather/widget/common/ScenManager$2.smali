.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$2;
.super Ljava/lang/Object;
.source "ScenManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->makeArrowAnimation()V
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
    .line 387
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$2;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    iget-object v0, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->arrow:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 389
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 388
    return-void
.end method
