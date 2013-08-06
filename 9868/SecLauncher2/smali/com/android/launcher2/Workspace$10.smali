.class Lcom/android/launcher2/Workspace$10;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$10;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1422
    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1400(Lcom/android/launcher2/Workspace;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v5, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1424
    .local v1, obj:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_6

    .line 1425
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v5, :cond_3

    move-object v0, v1

    .line 1426
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 1427
    .local v0, baseItem:Lcom/android/launcher2/BaseItem;
    iget-object v5, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v6, :cond_2

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v6, :cond_2

    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v2, :cond_5

    :cond_2
    move v2, v3

    :goto_1
    #setter for: Lcom/android/launcher2/Workspace;->mDragFromMenu:Z
    invoke-static {v5, v2}, Lcom/android/launcher2/Workspace;->access$1502(Lcom/android/launcher2/Workspace;Z)Z

    .line 1429
    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mDragFromMenu:Z
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1500(Lcom/android/launcher2/Workspace;)Z

    move-result v2

    if-nez v2, :cond_3

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    .line 1432
    .end local v0           #baseItem:Lcom/android/launcher2/BaseItem;
    :cond_3
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_4

    .line 1433
    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;

    move-result-object v5

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/HomeFragment;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    .line 1435
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 1438
    :goto_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    goto :goto_0

    .restart local v0       #baseItem:Lcom/android/launcher2/BaseItem;
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_5
    move v2, v4

    .line 1427
    goto :goto_1

    .line 1436
    .end local v0           #baseItem:Lcom/android/launcher2/BaseItem;
    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    #calls: Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V
    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    goto :goto_2
.end method
