.class Lcom/android/launcher2/AnimationLayer$Anim$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AnimationLayer$Anim$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/launcher2/AnimationLayer$Anim$4;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer$Anim$4;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim$4$1;->this$2:Lcom/android/launcher2/AnimationLayer$Anim$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$4$1;->this$2:Lcom/android/launcher2/AnimationLayer$Anim$4;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim$4$1;->this$2:Lcom/android/launcher2/AnimationLayer$Anim$4;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 632
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$4$1;->this$2:Lcom/android/launcher2/AnimationLayer$Anim$4;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    .line 633
    return-void
.end method
