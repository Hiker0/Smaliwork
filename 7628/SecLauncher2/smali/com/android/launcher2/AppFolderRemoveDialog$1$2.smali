.class Lcom/android/launcher2/AppFolderRemoveDialog$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppFolderRemoveDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppFolderRemoveDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppFolderRemoveDialog$1;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$2;->this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$2;->this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

    iget-object v0, v0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Lcom/android/launcher2/AppIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$2;->this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

    iget-object v0, v0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->startFadeShadow()V

    .line 148
    iget-object v0, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$2;->this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

    iget-object v0, v0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Lcom/android/launcher2/AppIconView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 149
    return-void
.end method
