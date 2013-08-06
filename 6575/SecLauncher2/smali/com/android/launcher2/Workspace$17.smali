.class Lcom/android/launcher2/Workspace$17;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/android/launcher2/Workspace$17;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$17;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/launcher2/Workspace$17;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$17;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1726
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/launcher2/Workspace$17;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$17;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1730
    iget-object v0, p0, Lcom/android/launcher2/Workspace$17;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 1731
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 1733
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 1722
    return-void
.end method
