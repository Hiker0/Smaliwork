.class Lcom/android/launcher2/HomeEditBar$2;
.super Ljava/lang/Object;
.source "HomeEditBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeEditBar;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeEditBar;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeEditBar;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeEditBar;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    #setter for: Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar;->access$302(Lcom/android/launcher2/HomeEditBar;Z)Z

    .line 247
    return-void
.end method
