.class Lcom/android/launcher2/FolderAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$dropAnim:Lcom/android/launcher2/AnimationLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$6;->val$dropAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->val$dropAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 566
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims()V

    .line 567
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$800(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$500(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 570
    :cond_0
    return-void
.end method
