.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$4;
.super Ljava/lang/Object;
.source "ScenManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 544
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 557
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==1=1= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->isPlayAin:Z

    .line 559
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 554
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 547
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==1=1= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$4;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->isPlayAin:Z

    .line 549
    return-void
.end method
