.class public Lcom/android/launcher2/CellLayoutHotseat;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutHotseat.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "CellLayoutHotseat"

.field private static mIsContextualAwareHotseat:Z


# instance fields
.field private mCloseLayoutGapPosted:Z

.field private mDragState:Lcom/android/launcher2/DragState;

.field private mHasEnded:Z

.field mIsLandscape:Z

.field mMaxCellCount:I

.field private mRemoveEmptySpacePosted:Z

.field private mReorderPosted:Z

.field private final mTmpXY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->mIsContextualAwareHotseat:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    .line 57
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpXY:[I

    .line 161
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    .line 310
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    .line 405
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mCloseLayoutGapPosted:Z

    .line 30
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mCloseLayoutGapPosted:Z

    return p1
.end method

.method private animateAllChildren()V
    .locals 6

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 151
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 152
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v3, v4, :cond_1

    .line 151
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_1
    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 155
    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 157
    :cond_2
    const/16 v3, 0xe6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->animateIcon(Landroid/view/View;IZZ)Z

    goto :goto_1

    .line 159
    .end local v0           #child:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private hasAnimatingChild()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 288
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 289
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 290
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v3, v5, :cond_1

    .line 288
    .end local v0           #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 292
    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 296
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v3

    .line 293
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 296
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    .line 143
    sget-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->mIsContextualAwareHotseat:Z

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    .line 145
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    return v0
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addView(Landroid/view/View;)V

    .line 365
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "index"

    .prologue
    .line 369
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->addView(Landroid/view/View;I)V

    .line 370
    return-void
.end method

.method cellToPosition(II)I
    .locals 1
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p2, -0x1

    .end local p1
    :cond_0
    return p1
.end method

.method protected closeLayoutGap()V
    .locals 3

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mCloseLayoutGapPosted:Z

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mCloseLayoutGapPosted:Z

    .line 411
    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutHotseat$4;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 418
    :cond_2
    sget-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->mIsContextualAwareHotseat:Z

    if-nez v0, :cond_0

    .line 419
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    goto :goto_0
.end method

.method existsEmptyCell()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method getCellCount()I
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v0

    goto :goto_0
.end method

.method getCellXFromPos(I)I
    .locals 1
    .parameter "idx"

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    return p1
.end method

.method getCellYFromPos(I)I
    .locals 1
    .parameter "idx"

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 374
    const-wide/16 v0, -0x65

    return-wide v0
.end method

.method public getDragState()Lcom/android/launcher2/DragState;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    return-object v0
.end method

.method public isFull()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method makeEmptySpace()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    .line 261
    .local v0, count:I
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v2

    if-ge v2, v0, :cond_4

    .line 268
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_1

    .line 270
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 275
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v3, :cond_3

    :goto_1
    sub-int v1, v2, v1

    .line 278
    :goto_2
    return v1

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_1

    .line 273
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_0

    .line 276
    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    .line 278
    :cond_4
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public moveAppIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 242
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    if-nez v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v2

    .line 244
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/AllappsIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 245
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v0, 0x0

    .line 246
    .local v0, changed:Z
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 247
    iput v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 248
    const/4 v0, 0x1

    .line 254
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 255
    const/16 v3, 0xe6

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->animateIcon(Landroid/view/View;IZZ)Z

    goto :goto_0

    .line 249
    :cond_3
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 251
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher2/DragState;

    if-nez v9, :cond_0

    .line 65
    const/4 v9, 0x0

    .line 137
    :goto_0
    return v9

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragState;

    .line 68
    .local v3, dragState:Lcom/android/launcher2/DragState;
    iget-object v1, v3, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    .line 69
    .local v1, dragItem:Lcom/android/launcher2/BaseItem;
    iget-object v9, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v9, v10, :cond_1

    iget-object v9, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v9, v10, :cond_3

    :cond_1
    const/4 v4, 0x1

    .line 71
    .local v4, fromApps:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 72
    .local v0, action:I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    .line 73
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    .line 74
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 76
    :cond_2
    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    .line 69
    .end local v0           #action:I
    .end local v4           #fromApps:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 78
    .restart local v0       #action:I
    .restart local v4       #fromApps:Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 79
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 80
    .local v8, y:I
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpXY:[I

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/launcher2/CellLayoutHotseat;->pointToCellExact(II[I)V

    .line 81
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpXY:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpXY:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, dragOverView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Hotseat;

    .line 84
    .local v6, parent:Lcom/android/launcher2/Hotseat;
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    invoke-virtual {v6, v3, v0, v2}, Lcom/android/launcher2/Hotseat;->checkHotSeatInteraction(Lcom/android/launcher2/DragState;ILandroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 85
    :cond_6
    const/4 v9, 0x3

    if-ne v0, v9, :cond_8

    const/4 v9, 0x1

    goto :goto_0

    .line 87
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 90
    :cond_8
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v9, v10, :cond_9

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v9, v10, :cond_a

    :cond_9
    const/4 v5, 0x1

    .line 92
    .local v5, isWidget:Z
    :goto_2
    if-eqz v5, :cond_b

    const/4 v9, 0x1

    goto :goto_0

    .line 90
    .end local v5           #isWidget:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 95
    .restart local v5       #isWidget:Z
    :cond_b
    const/4 v9, 0x4

    if-eq v0, v9, :cond_c

    .line 96
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDragEvent act: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " dis "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " end "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v3, v9}, Lcom/android/launcher2/CellLayoutHotseat;->setDragState(Lcom/android/launcher2/DragState;Ljava/lang/String;)V

    .line 99
    :cond_c
    const/4 v9, 0x5

    if-ne v0, v9, :cond_d

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    .line 102
    :cond_d
    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v9, :cond_e

    .line 103
    const/4 v9, 0x4

    if-ne v0, v9, :cond_f

    .line 107
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    .line 117
    :cond_e
    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_3
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 109
    :cond_f
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 119
    :pswitch_0
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/launcher2/Hotseat;->setDragInContentArea(Z)V

    goto :goto_3

    .line 122
    :pswitch_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 123
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    .line 125
    const/4 v9, 0x0

    const-string v10, "onDragEvent.ACTION_DRAG_ENDED"

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/CellLayoutHotseat;->setDragState(Lcom/android/launcher2/DragState;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 127
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    goto :goto_3

    .line 131
    :pswitch_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    .line 132
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 133
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/android/launcher2/Hotseat;->setDragInContentArea(Z)V

    goto :goto_3

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    iget v0, v1, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    .line 218
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 219
    :cond_1
    const/4 v1, 0x0

    const-string v2, "onFailedDrop"

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->setDragState(Lcom/android/launcher2/DragState;Ljava/lang/String;)V

    .line 221
    sget-boolean v1, Lcom/android/launcher2/CellLayoutHotseat;->mIsContextualAwareHotseat:Z

    if-nez v1, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    .line 224
    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 225
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    .line 227
    :cond_2
    return-void
.end method

.method realTimeReorder()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    iget-boolean v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    if-eqz v4, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    .line 167
    new-instance v4, Lcom/android/launcher2/CellLayoutHotseat$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/CellLayoutHotseat$1;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v5, 0x14

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 177
    :cond_2
    iget-boolean v5, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v5, :cond_5

    move v0, v4

    .line 178
    .local v0, appspos:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->findFirstEmptySpace()I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    .line 181
    :cond_3
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 182
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 186
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_0

    .line 187
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, child:Landroid/view/View;
    instance-of v4, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_4

    .line 189
    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 186
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 177
    .end local v0           #appspos:I
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    goto :goto_1
.end method

.method public realTimeReorder(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    .line 199
    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/CellLayoutHotseat$2;-><init>(Lcom/android/launcher2/CellLayoutHotseat;I)V

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 208
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    goto :goto_0
.end method

.method public removeEmptySpace()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 312
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    .line 315
    new-instance v1, Lcom/android/launcher2/CellLayoutHotseat$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/CellLayoutHotseat$3;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 325
    .local v0, count:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->closeLayoutGap()V

    .line 332
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_4

    .line 333
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 337
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    goto :goto_0

    .line 335
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_1
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    .line 305
    .local v0, rc:Z
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 307
    :cond_0
    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeView(Landroid/view/View;)V

    .line 236
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 238
    :cond_0
    return-void
.end method

.method public setContextualAwareHotset(Z)V
    .locals 0
    .parameter "isCaHotseat"

    .prologue
    .line 402
    sput-boolean p1, Lcom/android/launcher2/CellLayoutHotseat;->mIsContextualAwareHotseat:Z

    .line 403
    return-void
.end method

.method public setDragState(Lcom/android/launcher2/DragState;Ljava/lang/String;)V
    .locals 0
    .parameter "ds"
    .parameter "who"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    .line 399
    return-void
.end method

.method public setGridSize(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 343
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 344
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->animateAllChildren()V

    .line 345
    return-void
.end method

.method public setup(ZI)V
    .locals 4
    .parameter "isLandscape"
    .parameter "maxCellCount"

    .prologue
    const/4 v3, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    .line 40
    iput p2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 45
    .local v0, c:I
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 3
    .parameter "v"
    .parameter "dragOutline"
    .parameter "nearest"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 425
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v1, :cond_2

    .line 428
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AllappsIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 430
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x0

    aget v1, p3, v1

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget v1, p3, v1

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v1, v2, :cond_0

    .line 435
    .end local v0           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/CellLayoutNoGap;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto :goto_0
.end method
