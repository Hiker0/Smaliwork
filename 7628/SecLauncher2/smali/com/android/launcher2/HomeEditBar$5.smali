.class Lcom/android/launcher2/HomeEditBar$5;
.super Ljava/lang/Object;
.source "HomeEditBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeEditBar;->newFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
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
    .line 391
    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$5;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$5;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 395
    return-void
.end method
