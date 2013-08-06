.class Lcom/android/launcher2/AppFolderRemoveDialog$1;
.super Ljava/lang/Object;
.source "AppFolderRemoveDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppFolderRemoveDialog;->animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppFolderRemoveDialog;

.field final synthetic val$al:Lcom/android/launcher2/AnimationLayer;

.field final synthetic val$cellLayout:Lcom/android/launcher2/CellLayout;

.field final synthetic val$v:Lcom/android/launcher2/AppIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppFolderRemoveDialog;Lcom/android/launcher2/AnimationLayer;Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->this$0:Lcom/android/launcher2/AppFolderRemoveDialog;

    iput-object p2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    iput-object p3, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Lcom/android/launcher2/AppIconView;

    iput-object p4, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$cellLayout:Lcom/android/launcher2/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 128
    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    iget-object v3, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Lcom/android/launcher2/AppIconView;

    iget-object v4, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 129
    .local v0, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    iget-object v3, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Lcom/android/launcher2/AppIconView;

    iget-object v4, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v1

    .line 130
    .local v1, pos:[I
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 131
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    aget v3, v1, v6

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 132
    new-instance v2, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;-><init>(Lcom/android/launcher2/AppFolderRemoveDialog$1;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 143
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/AppFolderRemoveDialog$1$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/AppFolderRemoveDialog$1$2;-><init>(Lcom/android/launcher2/AppFolderRemoveDialog$1;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 152
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 153
    return-void
.end method
