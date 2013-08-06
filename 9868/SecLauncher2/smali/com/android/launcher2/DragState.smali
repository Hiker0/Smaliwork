.class public Lcom/android/launcher2/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragState$2;,
        Lcom/android/launcher2/DragState$VisualMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DragState"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private mAnimateVied:Landroid/view/View;

.field private mBlockDeleteFromSource:Z

.field private mCacheDragView:Landroid/view/View;

.field private mDeleted:Z

.field final mDragOrigin:Lcom/android/launcher2/DragOrigin;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFoundValidDrop:Z

.field private mHasEnded:Z

.field final mItem:Lcom/android/launcher2/BaseItem;

.field mOriginalCell:I

.field final mOriginalScreen:I

.field private mReceiver:Lcom/android/launcher2/DragReceivable;

.field private mShadow:Lcom/android/launcher2/ShadowBuilder;

.field private mSwapView:Landroid/view/View;

.field mUnderdragView:Landroid/view/View;

.field private mVisualMode:Lcom/android/launcher2/DragState$VisualMode;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    invoke-static {p1}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V
    .locals 2
    .parameter "v"
    .parameter "origin"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    .line 48
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    .line 516
    sget-object v0, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    .line 55
    iput-object p2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    .line 58
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget v0, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    .line 60
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v0, v0, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget v0, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v0, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    .line 62
    :cond_0
    return-void
.end method

.method private animateDrop()V
    .locals 4

    .prologue
    .line 552
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    instance-of v2, v2, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v2, :cond_2

    .line 557
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 559
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 561
    .local v1, l:Lcom/android/launcher2/AnimationLayer;
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v2}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    instance-of v2, v2, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 562
    .local v0, fadeOutDrop:Z
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher2/AnimationLayer;->animateDrop(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;Z)Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0

    .line 561
    .end local v0           #fadeOutDrop:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private deleteFromSource()V
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 319
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v0, Lcom/android/launcher2/HomeItem;

    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0
.end method

.method public static findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;
    .locals 2
    .parameter "v"

    .prologue
    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 472
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 473
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    goto :goto_0

    .line 475
    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_1

    .line 476
    check-cast v0, Lcom/android/launcher2/DragOrigin;

    .line 478
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;III)Z
    .locals 18
    .parameter "item"
    .parameter "receiver"
    .parameter "dragOrigin"
    .parameter "x"
    .parameter "y"
    .parameter "screen"

    .prologue
    .line 123
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    .line 124
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher2/DragReceivable;->getContainerType()J

    move-result-wide v4

    .line 126
    .local v4, container:J
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 128
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v3, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 131
    .local v2, hf:Lcom/android/launcher2/HomeFragment;
    sget-object v3, Lcom/android/launcher2/DragState$2;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 151
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown item type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    move-object/from16 v3, p1

    .line 133
    check-cast v3, Lcom/android/launcher2/HomePendingWidget;

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v6, 0x0

    aput p4, v7, v6

    const/4 v6, 0x1

    aput p5, v7, v6

    const/4 v8, 0x0

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/HomeFragment;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;JI[I[I)V

    .line 155
    :goto_0
    const/4 v3, 0x1

    .line 203
    .end local v2           #hf:Lcom/android/launcher2/HomeFragment;
    .end local p2
    :goto_1
    return v3

    .restart local v2       #hf:Lcom/android/launcher2/HomeFragment;
    .restart local p2
    :pswitch_1
    move-object/from16 v3, p1

    .line 139
    check-cast v3, Lcom/android/launcher2/HomePendingItem;

    iget-object v3, v3, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v6, 0x0

    aput p4, v7, v6

    const/4 v6, 0x1

    aput p5, v7, v6

    const/4 v8, 0x0

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/HomeFragment;->processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v3, p1

    .line 145
    check-cast v3, Lcom/android/launcher2/HomePendingSamsungWidget;

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v6, 0x0

    aput p4, v7, v6

    const/4 v6, 0x1

    aput p5, v7, v6

    const/4 v8, 0x0

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/HomeFragment;->addSamsungAppWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;JI[I[I)V

    goto :goto_0

    .line 156
    .end local v2           #hf:Lcom/android/launcher2/HomeFragment;
    :cond_0
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_2

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_2

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v6, :cond_2

    .line 161
    :cond_1
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_8

    .line 162
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v7, p1

    check-cast v7, Lcom/android/launcher2/AppFolderItem;

    move-wide v8, v4

    move/from16 v10, p6

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static/range {v6 .. v12}, Lcom/android/launcher2/HomeFolderItem;->createFromAppFolderItem(Landroid/content/Context;Lcom/android/launcher2/AppFolderItem;JIII)Lcom/android/launcher2/HomeFolderItem;

    move-result-object p1

    .line 170
    :cond_2
    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_3

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 171
    :cond_3
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_4

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_4

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_4

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, p5

    if-eq v0, v3, :cond_5

    :cond_4
    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide v11, v4

    .line 173
    invoke-interface/range {v6 .. v12}, Lcom/android/launcher2/DragReceivable;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIJ)V

    .line 175
    :cond_5
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 176
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragReceivable;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 177
    if-eqz p3, :cond_6

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_6

    move-object/from16 v3, p2

    .line 178
    check-cast v3, Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 182
    :cond_6
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_a

    move-object/from16 v15, p2

    .line 186
    check-cast v15, Lcom/android/launcher2/CellLayout;

    .line 187
    .local v15, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->allItems()Ljava/util/List;

    move-result-object v13

    .line 189
    .local v13, allItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    const/16 v17, 0x0

    .line 190
    .local v17, isExist:Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/BaseItem;

    .line 191
    .local v14, bs:Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, p1

    if-ne v0, v14, :cond_7

    .line 192
    const/16 v17, 0x1

    goto :goto_3

    .line 165
    .end local v13           #allItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    .end local v14           #bs:Lcom/android/launcher2/BaseItem;
    .end local v15           #cl:Lcom/android/launcher2/CellLayout;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #isExist:Z
    :cond_8
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object p1

    .line 166
    .restart local p1
    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    goto/16 :goto_2

    .line 194
    .restart local v13       #allItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    .restart local v15       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v17       #isExist:Z
    :cond_9
    if-nez v17, :cond_a

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide v11, v4

    .line 195
    invoke-interface/range {v6 .. v12}, Lcom/android/launcher2/DragReceivable;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIJ)V

    .line 196
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragReceivable;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 197
    if-eqz p3, :cond_a

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_a

    .line 198
    check-cast p2, Lcom/android/launcher2/DragOrigin;

    .end local p2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 203
    .end local v13           #allItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    .end local v15           #cl:Lcom/android/launcher2/CellLayout;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #isExist:Z
    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private swapItems(Landroid/view/View;Landroid/view/View;)V
    .locals 12
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    .line 349
    .local v11, i1:Lcom/android/launcher2/HomeItem;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 352
    .local v1, i2:Lcom/android/launcher2/HomeItem;
    iget v8, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 353
    .local v8, cellX:I
    iget v9, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 354
    .local v9, cellY:I
    iget v10, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 355
    .local v10, screen:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    .line 356
    .local v2, p1:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, p2}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    .line 357
    .local v3, p2:Lcom/android/launcher2/CellLayout;
    iget v4, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v5, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v6, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;III)Z

    move-object v4, p0

    move-object v5, v11

    move-object v6, v3

    move-object v7, v2

    .line 358
    invoke-direct/range {v4 .. v10}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;III)Z

    .line 362
    iput-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    .line 364
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 365
    if-ne v2, v3, :cond_1

    .line 367
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v4, v0

    const-wide v6, 0x3feeb851eb851eb8L

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_0

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 370
    :cond_0
    const/high16 v0, 0x3f80

    const/16 v4, 0xfa

    invoke-static {p2, v0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    .line 375
    iget-wide v4, v11, Lcom/android/launcher2/HomeItem;->container:J

    iget-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-wide v4, v11, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    .line 382
    :cond_2
    return-void
.end method


# virtual methods
.method public cleanupSwap()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragState;->swapItems(Landroid/view/View;Landroid/view/View;)V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    goto :goto_0
.end method

.method public createHomeFolderFromDragItem()Z
    .locals 15

    .prologue
    .line 391
    const/4 v9, 0x0

    .line 392
    .local v9, folderCreated:Z
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v10

    .line 393
    .local v10, item:Lcom/android/launcher2/BaseItem;
    if-eqz v10, :cond_1

    .line 394
    const/4 v6, 0x0

    .line 395
    .local v6, removeItem:Z
    const/4 v7, 0x0

    .line 396
    .local v7, findNewPosition:Z
    const/4 v1, 0x0

    .line 397
    .local v1, folderItem:Lcom/android/launcher2/HomeShortcutItem;
    const-wide/16 v4, -0x64

    .line 398
    .local v4, destinationContainerId:J
    iget-object v0, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_2

    .line 400
    check-cast v10, Lcom/android/launcher2/AppItem;

    .end local v10           #item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v10}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .line 434
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 435
    const/4 v9, 0x0

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 437
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZ)V

    .line 441
    .end local v1           #folderItem:Lcom/android/launcher2/HomeShortcutItem;
    .end local v4           #destinationContainerId:J
    .end local v6           #removeItem:Z
    .end local v7           #findNewPosition:Z
    :cond_1
    return v9

    .line 401
    .restart local v1       #folderItem:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v4       #destinationContainerId:J
    .restart local v6       #removeItem:Z
    .restart local v7       #findNewPosition:Z
    .restart local v10       #item:Lcom/android/launcher2/BaseItem;
    :cond_2
    iget-object v0, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_3

    instance-of v0, v10, Lcom/android/launcher2/HomePendingItem;

    if-eqz v0, :cond_3

    .line 403
    check-cast v10, Lcom/android/launcher2/HomePendingItem;

    .end local v10           #item:Lcom/android/launcher2/BaseItem;
    iget-object v11, v10, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    .line 404
    .local v11, name:Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, v11}, Lcom/android/launcher2/HomeFragment;->processItemDropToNewFolder(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 405
    .end local v11           #name:Landroid/content/ComponentName;
    .restart local v10       #item:Lcom/android/launcher2/BaseItem;
    :cond_3
    iget-object v0, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v2, :cond_4

    iget-object v0, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_0

    instance-of v0, v10, Lcom/android/launcher2/HomePendingItem;

    if-nez v0, :cond_0

    :cond_4
    move-object v1, v10

    .line 407
    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    .line 408
    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v13, -0x64

    cmp-long v0, v2, v13

    if-eqz v0, :cond_5

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v13, -0x65

    cmp-long v0, v2, v13

    if-nez v0, :cond_6

    .line 413
    :cond_5
    const/4 v6, 0x1

    .line 414
    iget-wide v4, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 415
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v12

    .line 417
    .local v12, w:Lcom/android/launcher2/Workspace;
    if-eqz v12, :cond_0

    .line 418
    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 419
    .local v8, c:Lcom/android/launcher2/CellLayout;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v7, 0x1

    goto :goto_0

    .line 427
    .end local v8           #c:Lcom/android/launcher2/CellLayout;
    .end local v12           #w:Lcom/android/launcher2/Workspace;
    :cond_6
    const/4 v6, 0x1

    .line 428
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public foundValidDrop()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    return v0
.end method

.method getFolderParent()Lcom/android/launcher2/Folder;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 570
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 578
    :goto_0
    return-object v0

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    .line 572
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 573
    .local v0, p:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_3

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 574
    instance-of v3, v0, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_2

    .line 575
    check-cast v0, Lcom/android/launcher2/Folder;

    goto :goto_0

    .line 576
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 578
    goto :goto_0
.end method

.method public getItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 4
    .parameter "v"

    .prologue
    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 449
    .local v1, parent:Landroid/view/ViewGroup;
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_0

    .line 450
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 456
    :goto_0
    return-object v3

    .line 454
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 455
    .local v0, item:Lcom/android/launcher2/BaseItem;
    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    .line 456
    .local v2, ws:Lcom/android/launcher2/Workspace;
    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getReceiver()Lcom/android/launcher2/DragReceivable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    return-object v0
.end method

.method public getShadow()Lcom/android/launcher2/ShadowBuilder;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    return-object v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    return v0
.end method

.method public initiateSwap(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, dragView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    .line 340
    :cond_2
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    .line 341
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragState;->swapItems(Landroid/view/View;Landroid/view/View;)V

    .line 342
    iput-boolean v2, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 343
    iput-boolean v2, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    goto :goto_0
.end method

.method public isMoveInsideOpenFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;)Z
    .locals 1
    .parameter "item"
    .parameter "receiver"

    .prologue
    .line 589
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logDebugInfo()V
    .locals 4

    .prologue
    .line 526
    const-string v0, "==============================================================================="

    .line 528
    .local v0, sep:Ljava/lang/String;
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v1, "DragState"

    const-string v2, "DragState member variables:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDragOrigin:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 533
    const-string v2, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ...  parent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFoundValidDrop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasEnded:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwapView:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEndRunnable:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBlockDeleteFromSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v1, "DragState"

    const-string v2, "details:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;III)Z
    .locals 6
    .parameter "receiver"
    .parameter "x"
    .parameter "y"
    .parameter "screen"

    .prologue
    .line 108
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIZ)Z

    move-result v0

    return v0
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;IIIZ)Z
    .locals 7
    .parameter "receiver"
    .parameter "x"
    .parameter "y"
    .parameter "screen"
    .parameter "animateDrop"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v0, :cond_2

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    .line 89
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reciever:        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p1, :cond_1

    .line 91
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    ...  parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/launcher2/DragReceivable;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   y:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen:          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to move item after the drop was handled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    if-eqz p5, :cond_3

    .line 99
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v0}, Lcom/android/launcher2/DragReceivable;->show(Lcom/android/launcher2/BaseItem;)V

    .line 100
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    .line 102
    :cond_3
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveItemToWithoutAnimation(Lcom/android/launcher2/DragReceivable;III)Z
    .locals 8
    .parameter "receiver"
    .parameter "x"
    .parameter "y"
    .parameter "screen"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;III)Z

    move-result v7

    .local v7, rc:Z
    if-eqz v7, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v0}, Lcom/android/launcher2/DragReceivable;->show(Lcom/android/launcher2/BaseItem;)V

    .line 117
    :cond_0
    return v7
.end method

.method public onDelete()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 236
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v6, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    .line 238
    :cond_0
    iput-boolean v7, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 239
    iput-boolean v7, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 240
    iput-boolean v7, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    .line 242
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v6, v6, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v6, :cond_2

    .line 243
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v1, v6, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 244
    .local v1, hf:Lcom/android/launcher2/HomeFragment;
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    .line 245
    .local v2, homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    .line 246
    .local v0, appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v0, :cond_1

    .line 247
    new-instance v6, Lcom/android/launcher2/DragState$1;

    const-string v7, "deleteAppWidgetId"

    invoke-direct {v6, p0, v7, v0, v2}, Lcom/android/launcher2/DragState$1;-><init>(Lcom/android/launcher2/DragState;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v6}, Lcom/android/launcher2/DragState$1;->start()V

    .line 261
    .end local v0           #appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v1           #hf:Lcom/android/launcher2/HomeFragment;
    .end local v2           #homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    :cond_1
    :goto_0
    return-void

    .line 254
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v6, v6, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v6, :cond_1

    .line 255
    iget-object v4, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher2/Launcher;

    .line 256
    .local v4, mLauncher:Lcom/android/launcher2/Launcher;
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v3, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .line 257
    .local v3, info:Lcom/android/launcher2/SamsungAppWidgetInfo;
    invoke-static {v4}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v5

    .line 258
    .local v5, manager:Lcom/android/launcher2/SamsungWidgetPackageManager;
    invoke-virtual {v5, v4, v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    goto :goto_0
.end method

.method public onDragStartedSuccessfully()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->hide(Lcom/android/launcher2/BaseItem;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onDrop()V
    .locals 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to call DrageState.onDrop more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 216
    return-void
.end method

.method public onDropSetEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 224
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    .line 225
    return-void
.end method

.method public onEnd()V
    .locals 6

    .prologue
    .line 268
    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v3, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v3}, Lcom/android/launcher2/ShadowBuilder;->releaseSurface()V

    .line 271
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v2

    .line 273
    .local v2, v:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 275
    .local v0, handler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 279
    .end local v0           #handler:Landroid/os/Handler;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_0

    .line 281
    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v3, :cond_3

    .line 282
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    goto :goto_0

    .line 284
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_4

    .line 285
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Lcom/android/launcher2/CellLayoutNoGap;

    .line 286
    .local v1, l:Lcom/android/launcher2/CellLayoutNoGap;
    iget-object v3, v1, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    if-ltz v3, :cond_4

    .line 287
    iget v3, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    .line 288
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget v4, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 291
    .end local v1           #l:Lcom/android/launcher2/CellLayoutNoGap;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v3, v4}, Lcom/android/launcher2/DragOrigin;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    .line 292
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v3, v4}, Lcom/android/launcher2/DragOrigin;->show(Lcom/android/launcher2/BaseItem;)V

    .line 293
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_0

    .line 302
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    goto :goto_0
.end method

.method public setShadow(Lcom/android/launcher2/ShadowBuilder;)V
    .locals 0
    .parameter "shadow"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    .line 485
    return-void
.end method

.method public setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    if-eq p1, v0, :cond_0

    .line 520
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    .line 521
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/DragState$VisualMode;->enter(Lcom/android/launcher2/UpdateableShadowBuilder;)V

    .line 523
    :cond_0
    return-void
.end method
