.class Lcom/android/launcher2/HotseatSwapAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HotseatSwapAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HotseatSwapAnimator;

.field final synthetic val$l:Lcom/android/launcher2/AnimationLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator$2;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    iput-object p2, p0, Lcom/android/launcher2/HotseatSwapAnimator$2;->val$l:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$2;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    #getter for: Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v1}, Lcom/android/launcher2/HotseatSwapAnimator;->access$000(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 354
    .local v0, overlay:Lcom/android/launcher2/AnimationLayer;
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$2;->val$l:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 355
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$2;->val$l:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    .line 356
    return-void
.end method
