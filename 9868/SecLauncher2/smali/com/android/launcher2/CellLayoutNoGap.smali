.class public Lcom/android/launcher2/CellLayoutNoGap;
.super Lcom/android/launcher2/CellLayout;
.source "CellLayoutNoGap.java"


# static fields
.field static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final TAG:Ljava/lang/String; = "CellLayoutNoGap"


# instance fields
.field protected mDisabled:Z

.field mDragOutline:Landroid/graphics/Bitmap;

.field mFolder:Lcom/android/launcher2/Folder;

.field protected mHiddenItem:Lcom/android/launcher2/BaseItem;

.field private mPreviousTargetCell:I

.field private mReOrderingEnabled:Z

.field private mReorderAlarm:Lcom/android/launcher2/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field protected mReorderImmediately:Z

.field mTargetCell:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Lcom/android/launcher2/Alarm;

    invoke-direct {v0}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 23
    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 24
    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    .line 28
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    .line 441
    new-instance v0, Lcom/android/launcher2/CellLayoutNoGap$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutNoGap$1;-><init>(Lcom/android/launcher2/CellLayoutNoGap;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    .line 48
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher2/FolderItem;->contains(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-interface {v0, p1, v1}, Lcom/android/launcher2/FolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    .line 321
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 323
    :cond_0
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelRealTimeReorder()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 450
    return-void
.end method

.method cellToPosition(II)I
    .locals 1
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method protected closeLayoutGap()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 53
    .local v0, _i:Lcom/android/launcher2/BaseItem;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v1

    .line 57
    .local v1, e:I
    if-ne v1, v7, :cond_3

    .line 74
    .end local v1           #e:I
    :cond_2
    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 76
    iget-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v6, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    goto :goto_0

    .line 58
    .restart local v1       #e:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v4

    .line 61
    .local v4, occupied:[Z
    const/4 v5, -0x1

    .line 62
    .local v5, target:I
    add-int/lit8 v3, v1, 0x1

    .local v3, j:I
    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_4

    .line 63
    aget-boolean v6, v4, v3

    if-eqz v6, :cond_5

    .line 64
    move v5, v3

    .line 68
    :cond_4
    if-eq v5, v1, :cond_2

    if-eq v5, v7, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    .line 71
    .local v2, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    goto :goto_1

    .line 62
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method existsEmptyCell()Z
    .locals 3

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v0

    .line 410
    .local v0, c:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    .line 411
    add-int/lit8 v0, v0, -0x1

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method existsEmptyCellIgnoreHidden()Z
    .locals 3

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findAllOccupiedCells()[Z
    .locals 7

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v6

    mul-int v0, v5, v6

    .line 418
    .local v0, count:I
    new-array v3, v0, [Z

    .line 419
    .local v3, ops:[Z
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 420
    .local v2, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    .line 421
    .local v4, pos:I
    if-ltz v4, :cond_0

    if-ge v4, v0, :cond_0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    goto :goto_0

    .line 423
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    .end local v4           #pos:I
    :cond_1
    return-object v3
.end method

.method public findDropLocation(IIILjava/lang/Object;)V
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "localState"

    .prologue
    .line 89
    move-object/from16 v6, p4

    check-cast v6, Lcom/android/launcher2/DragState;

    .line 91
    .local v6, dragState:Lcom/android/launcher2/DragState;
    packed-switch p3, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    .line 94
    .local v11, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v6}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    sget v2, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 100
    .local v10, r:[I
    invoke-virtual {v6}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v9

    .line 101
    .local v9, position:I
    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, v10}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPoint(II[I)V

    .line 102
    invoke-virtual {v6}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v8

    .line 103
    .local v8, o:[I
    const/4 v0, 0x0

    aget v0, v10, v0

    const/4 v1, 0x0

    aget v1, v8, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getWidthGap()I

    move-result v1

    add-int p1, v0, v1

    .line 104
    const/4 v0, 0x1

    aget v0, v10, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getHeightGap()I

    move-result v1

    add-int p2, v0, v1

    .line 111
    .end local v8           #o:[I
    .end local v9           #position:I
    .end local v10           #r:[I
    .end local v11           #ws:Lcom/android/launcher2/Workspace;
    :pswitch_1
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 112
    .local v3, tmp:[I
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->pointToCellExact(II[I)V

    .line 113
    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v7

    .line 116
    .local v7, max:I
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-nez v0, :cond_1

    add-int/lit8 v7, v7, 0x1

    .line 117
    :cond_1
    iget v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-lt v0, v7, :cond_2

    .line 118
    if-nez v7, :cond_4

    .end local v7           #max:I
    :goto_1
    iput v7, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 119
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v1

    aput v1, v3, v0

    .line 120
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v1

    aput v1, v3, v0

    .line 123
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v6}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/FolderItem;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    if-nez v0, :cond_0

    .line 126
    :cond_3
    invoke-virtual {v6}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutNoGap;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto/16 :goto_0

    .line 118
    .restart local v7       #max:I
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findDropLocation(Landroid/view/DragEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(IIILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public findFirstEmptySpace()I
    .locals 3

    .prologue
    .line 427
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    .line 434
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v1

    .line 431
    .local v1, ops:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 432
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getCellXFromPos(I)I
    .locals 1
    .parameter "idx"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method

.method getCellYFromPos(I)I
    .locals 2
    .parameter "idx"

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    div-int v0, p1, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContainerType()J
    .locals 3

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v0

    .line 331
    .local v0, parent:Lcom/android/launcher2/CellLayoutContainer;
    instance-of v1, v0, Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    .line 333
    check-cast v0, Lcom/android/launcher2/Folder;

    .end local v0           #parent:Lcom/android/launcher2/CellLayoutContainer;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getContainerType()J

    move-result-wide v1

    .line 335
    :goto_0
    return-wide v1

    .restart local v0       #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->hide(Lcom/android/launcher2/BaseItem;)V

    .line 290
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method isDraggingOverIcon()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public isReOrderingEnabled()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    return v0
.end method

.method newCellPositioner()Lcom/android/launcher2/CellPositioner;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/launcher2/CellPositionerNoGap;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellPositionerNoGap;-><init>(Lcom/android/launcher2/CellLayout;)V

    return-object v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 150
    iget-boolean v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v8, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v8

    .line 267
    :goto_0
    return v8

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher2/DragState;

    if-nez v8, :cond_1

    .line 152
    const/4 v8, 0x0

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragState;

    .line 163
    .local v2, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    .line 164
    iget-object v8, v2, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v8, p0, :cond_2

    iget-object v8, v2, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v8, v8, Lcom/android/launcher2/CellLayout;

    if-eqz v8, :cond_2

    .line 165
    iget-object v5, v2, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 166
    .local v5, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 167
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 173
    .end local v5           #l:Lcom/android/launcher2/CellLayout;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(Landroid/view/DragEvent;)V

    .line 177
    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 267
    const/4 v8, 0x0

    goto :goto_0

    .line 180
    :pswitch_0
    iget-object v8, v2, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-ne v8, p0, :cond_4

    .line 181
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/CellLayoutNoGap;->setIsDragOverlapping(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEnter()V

    .line 184
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    .line 190
    const/4 v8, 0x1

    goto :goto_0

    .line 192
    :pswitch_2
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    .line 194
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v4

    .line 195
    .local v4, folder:Lcom/android/launcher2/Folder;
    if-eqz v4, :cond_5

    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eq v4, v8, :cond_5

    .line 196
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    .line 198
    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    .line 200
    .end local v4           #folder:Lcom/android/launcher2/Folder;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_0

    .line 201
    :cond_6
    iget v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    iget v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    if-eq v8, v9, :cond_c

    .line 202
    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 203
    iget-boolean v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    if-eqz v8, :cond_8

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 208
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    iget v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {v8, v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v3

    .line 209
    .local v3, dragedOverChild:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v6

    .line 210
    .local v6, p:Lcom/android/launcher2/Folder;
    if-eqz v6, :cond_9

    iget-object v8, v6, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eq v8, p0, :cond_9

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 211
    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget v9, v6, Lcom/android/launcher2/Folder;->mExpandDuration:I

    add-int/lit16 v9, v9, 0x320

    add-int/lit8 v9, v9, 0x64

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 219
    :goto_2
    iget v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    iput v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    .line 225
    .end local v3           #dragedOverChild:Landroid/view/View;
    .end local v6           #p:Lcom/android/launcher2/Folder;
    :cond_7
    :goto_3
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 206
    :cond_8
    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    goto :goto_1

    .line 212
    .restart local v3       #dragedOverChild:Landroid/view/View;
    .restart local v6       #p:Lcom/android/launcher2/Folder;
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher2/PagedView;

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 213
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PagedView;

    iget v10, v8, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PagedView;

    iget-object v8, v8, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->timePassed()I

    move-result v8

    sub-int v8, v10, v8

    add-int/lit16 v8, v8, 0xc8

    int-to-long v10, v8

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_2

    .line 214
    :cond_a
    instance-of v8, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v8, :cond_b

    .line 215
    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_2

    .line 217
    :cond_b
    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v9, 0xfa

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_2

    .line 221
    .end local v3           #dragedOverChild:Landroid/view/View;
    .end local v6           #p:Lcom/android/launcher2/Folder;
    :cond_c
    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v8

    if-nez v8, :cond_7

    .line 222
    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v9, 0xfa

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_3

    .line 228
    :pswitch_4
    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 229
    iget v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d

    .line 232
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 234
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v8

    if-nez v8, :cond_e

    .line 235
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e0089

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 238
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 241
    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 243
    iget v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v0

    .line 244
    .local v0, cx:I
    iget v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v1

    .line 245
    .local v1, cy:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getScreen()I

    move-result v7

    .line 246
    .local v7, screen:I
    invoke-virtual {v2, p0, v0, v1, v7}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;III)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 247
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 248
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 250
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 254
    .end local v0           #cx:I
    .end local v1           #cy:I
    .end local v7           #screen:I
    :pswitch_5
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 255
    iget-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 256
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 257
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v8

    if-nez v8, :cond_10

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 259
    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 260
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 263
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    .line 264
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    .line 265
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 274
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 277
    :cond_0
    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 7
    .parameter "event"
    .parameter "fiv"

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 134
    .local v2, y:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 135
    .local v0, temp:Landroid/graphics/Rect;
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 136
    invoke-virtual {p0, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(IIILjava/lang/Object;)V

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 143
    iget-object v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 144
    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, -0x1

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 343
    .local v1, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 345
    .local v0, idx:I
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    .line 357
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    .line 358
    return-void

    .line 346
    .end local v0           #idx:I
    :cond_0
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ne v2, v3, :cond_3

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    .line 348
    .restart local v0       #idx:I
    if-gez v0, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 352
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    goto :goto_0

    .line 354
    .end local v0           #idx:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    .line 355
    .restart local v0       #idx:I
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    goto :goto_0
.end method

.method realTimeReorder()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 459
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    .line 462
    .local v0, empty:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .line 463
    .local v2, maxTarget:I
    if-nez v2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 470
    .local v3, target:I
    iput v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 472
    if-eq v3, v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 476
    if-ne v0, v6, :cond_2

    .line 477
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Couldn\'t find empty cell. This should never happen!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 479
    :cond_2
    if-ne v3, v6, :cond_3

    .line 480
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Couldn\'t find target cell. This should never happen!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 483
    :cond_3
    const/4 v1, 0x0

    .line 484
    .local v1, item:Lcom/android/launcher2/BaseItem;
    :goto_1
    if-ge v3, v0, :cond_6

    .line 486
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 487
    if-nez v1, :cond_4

    .line 488
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item in < was null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 489
    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    .line 490
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 497
    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    .line 498
    add-int/lit8 v0, v0, 0x1

    .line 492
    :cond_6
    if-le v3, v0, :cond_7

    .line 494
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 495
    if-nez v1, :cond_5

    .line 496
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item in > was null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 501
    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    .line 504
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    goto :goto_0
.end method

.method public realTimeReorder(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 453
    iput p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 454
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 455
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;Z)V
    .locals 1
    .parameter "item"
    .parameter "isCP"

    .prologue
    .line 576
    if-eqz p2, :cond_3

    .line 577
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    if-nez v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 580
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 582
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v0, p1, :cond_0

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0

    .line 589
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 299
    .local v0, rc:Z
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_3

    .line 300
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    .line 301
    if-eqz v0, :cond_3

    .line 302
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 304
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, p1, :cond_2

    .line 307
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 312
    :cond_3
    return v0
.end method

.method final setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V
    .locals 1
    .parameter "lp"
    .parameter "idx"

    .prologue
    .line 548
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 549
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 550
    return-void
.end method

.method public setEnableReOrdering(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 530
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    .line 531
    return-void
.end method

.method protected setItemLocation(Lcom/android/launcher2/BaseItem;II)V
    .locals 7
    .parameter "item"
    .parameter "position"
    .parameter "screen"

    .prologue
    .line 388
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid position"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    iput p3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 392
    invoke-virtual {p1, p2}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 395
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_1

    move-object v1, p1

    .line 396
    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 398
    .local v1, h:Lcom/android/launcher2/HomeItem;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 401
    .end local v1           #h:Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIJ)V
    .locals 7
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "screen"
    .parameter "container"

    .prologue
    const/4 v1, -0x1

    .line 363
    iput p4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 364
    if-eq p2, v1, :cond_0

    if-eq p3, v1, :cond_0

    .line 365
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPosition(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 367
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_1
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result p4

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    move-wide v2, p5

    move v4, p4

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 379
    :cond_2
    return-void
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->show(Lcom/android/launcher2/BaseItem;)V

    .line 282
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method updateCustomViewToCellLayout()V
    .locals 7

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 564
    .local v3, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 565
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 566
    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 565
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 569
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    .line 570
    .local v5, pos:I
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    .line 571
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 573
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #pos:I
    :cond_1
    return-void
.end method

.method updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V
    .locals 8
    .parameter "item"
    .parameter "pos"

    .prologue
    .line 509
    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 511
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    .line 512
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 513
    const/4 v6, 0x0

    .line 514
    .local v6, instant:Z
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/PagedView;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedView;

    .line 516
    .local v7, p:Lcom/android/launcher2/PagedView;
    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v6

    .line 517
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    const/4 v6, 0x1

    .line 523
    .end local v7           #p:Lcom/android/launcher2/PagedView;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    .line 528
    .end local v6           #instant:Z
    :cond_1
    :goto_1
    return-void

    .line 519
    .restart local v6       #instant:Z
    .restart local v7       #p:Lcom/android/launcher2/PagedView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getScreen()I

    move-result v0

    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 520
    const/4 v6, 0x1

    goto :goto_0

    .line 524
    .end local v7           #p:Lcom/android/launcher2/PagedView;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v2

    .line 525
    .local v2, x:I
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v3

    .line 526
    .local v3, y:I
    const/16 v4, 0xe6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayoutNoGap;->animateChildToPosition(Landroid/view/View;IIIIZ)Z

    goto :goto_1
.end method

.method updateViewToCellLayout()V
    .locals 5

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 554
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 555
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 557
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0, v3, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    .line 558
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method
