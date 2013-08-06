.class Lcom/android/launcher2/ContextualPageManager$5;
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

.field final synthetic val$deleteIdx:I

.field final synthetic val$firstCPIdx:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/ContextualPageManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager$5;->this$0:Lcom/android/launcher2/ContextualPageManager;

    iput p2, p0, Lcom/android/launcher2/ContextualPageManager$5;->val$firstCPIdx:I

    iput p3, p0, Lcom/android/launcher2/ContextualPageManager$5;->val$deleteIdx:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$5;->this$0:Lcom/android/launcher2/ContextualPageManager;

    #getter for: Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/ContextualPageManager;->access$200(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ContextualPageManager$5;->val$firstCPIdx:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 291
    iget v0, p0, Lcom/android/launcher2/ContextualPageManager$5;->val$deleteIdx:I

    iget v1, p0, Lcom/android/launcher2/ContextualPageManager$5;->val$firstCPIdx:I

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$5;->this$0:Lcom/android/launcher2/ContextualPageManager;

    #getter for: Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v0}, Lcom/android/launcher2/ContextualPageManager;->access$000(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/HomeFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager$5;->this$0:Lcom/android/launcher2/ContextualPageManager;

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$5;->this$0:Lcom/android/launcher2/ContextualPageManager;

    #getter for: Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/ContextualPageManager;->access$200(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    iget v3, p0, Lcom/android/launcher2/ContextualPageManager$5;->val$deleteIdx:I

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/ContextualPageManager$5;->val$deleteIdx:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/HomeFragment;->onPageSwitch(Landroid/view/View;I)V

    .line 293
    :cond_0
    return-void
.end method
