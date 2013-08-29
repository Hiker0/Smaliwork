.class Lcom/android/launcher2/HomeFragment$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment;->setupHotseatAnimator(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;

.field final synthetic val$hvl:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$11;->this$0:Lcom/android/launcher2/HomeFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomeFragment$11;->val$hvl:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 2807
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2808
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment$11;->val$hvl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2809
    .local v1, v:Landroid/view/View;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment$11;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/android/launcher2/HomeFragment;->access$1500(Lcom/android/launcher2/HomeFragment;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 2811
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method
