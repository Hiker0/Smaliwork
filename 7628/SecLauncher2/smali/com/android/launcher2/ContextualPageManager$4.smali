.class Lcom/android/launcher2/ContextualPageManager$4;
.super Ljava/lang/Object;
.source "ContextualPageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ContextualPageManager;

.field final synthetic val$defaultPageIdx:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/ContextualPageManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager$4;->this$0:Lcom/android/launcher2/ContextualPageManager;

    iput p2, p0, Lcom/android/launcher2/ContextualPageManager$4;->val$defaultPageIdx:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$4;->this$0:Lcom/android/launcher2/ContextualPageManager;

    #getter for: Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/ContextualPageManager;->access$200(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ContextualPageManager$4;->val$defaultPageIdx:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 280
    return-void
.end method
