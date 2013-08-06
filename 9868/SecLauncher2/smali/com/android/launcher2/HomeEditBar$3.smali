.class Lcom/android/launcher2/HomeEditBar$3;
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

.field final synthetic val$canCreatePageInCPmode:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeEditBar;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    iput-boolean p2, p0, Lcom/android/launcher2/HomeEditBar$3;->val$canCreatePageInCPmode:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 257
    iget-boolean v2, p0, Lcom/android/launcher2/HomeEditBar$3;->val$canCreatePageInCPmode:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 258
    .local v0, visibility:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 260
    .end local v0           #visibility:I
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/HomeEditBar;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    #setter for: Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z
    invoke-static {v2, v1}, Lcom/android/launcher2/HomeEditBar;->access$302(Lcom/android/launcher2/HomeEditBar;Z)Z

    .line 268
    return-void

    .line 257
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
