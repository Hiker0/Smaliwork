.class Lcom/android/launcher2/HotseatSwapAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HotseatSwapAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HotseatSwapAnimator;->showHotseatSwapIcon(Lcom/android/launcher2/DragState;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HotseatSwapAnimator;

.field final synthetic val$imageView:Lcom/android/launcher2/AppIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AppIconView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator$4;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    iput-object p2, p0, Lcom/android/launcher2/HotseatSwapAnimator$4;->val$imageView:Lcom/android/launcher2/AppIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator$4;->val$imageView:Lcom/android/launcher2/AppIconView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppIconView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 536
    return-void
.end method
