.class Lcom/android/launcher2/FolderIconView$1;
.super Ljava/lang/Object;
.source "FolderIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/launcher2/FolderIconView$1;->this$0:Lcom/android/launcher2/FolderIconView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView$1;->this$0:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 135
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView$1;->this$0:Lcom/android/launcher2/FolderIconView;

    #getter for: Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;
    invoke-static {v0}, Lcom/android/launcher2/FolderIconView;->access$000(Lcom/android/launcher2/FolderIconView;)Lcom/android/launcher2/FolderAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    .line 136
    return-void
.end method
