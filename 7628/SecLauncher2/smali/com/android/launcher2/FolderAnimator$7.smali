.class Lcom/android/launcher2/FolderAnimator$7;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    iget-object v1, v1, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->post(Ljava/lang/Runnable;)Z

    .line 702
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->destroyPlate()V

    goto :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$7;->this$0:Lcom/android/launcher2/FolderAnimator;

    #calls: Lcom/android/launcher2/FolderAnimator;->drawPlate()V
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$900(Lcom/android/launcher2/FolderAnimator;)V

    goto :goto_0
.end method
