.class Lcom/android/launcher2/HomeFragment$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment;->changeTop4Icon(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;

.field final synthetic val$CurCPType:I

.field final synthetic val$hotseatView:Ljava/util/ArrayList;

.field final synthetic val$isCurCP:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment;IZLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2942
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$12;->this$0:Lcom/android/launcher2/HomeFragment;

    iput p2, p0, Lcom/android/launcher2/HomeFragment$12;->val$CurCPType:I

    iput-boolean p3, p0, Lcom/android/launcher2/HomeFragment$12;->val$isCurCP:Z

    iput-object p4, p0, Lcom/android/launcher2/HomeFragment$12;->val$hotseatView:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "a"

    .prologue
    .line 2946
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment$12;->this$0:Lcom/android/launcher2/HomeFragment;

    iget v3, p0, Lcom/android/launcher2/HomeFragment$12;->val$CurCPType:I

    iget-boolean v4, p0, Lcom/android/launcher2/HomeFragment$12;->val$isCurCP:Z

    const/4 v5, 0x1

    #calls: Lcom/android/launcher2/HomeFragment;->changeTop4IconContainer(IZZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/HomeFragment;->access$1700(Lcom/android/launcher2/HomeFragment;IZZ)V

    .line 2947
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2948
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment$12;->val$hotseatView:Ljava/util/ArrayList;

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

    .line 2949
    .local v1, v:Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 2951
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method
