.class public Lcom/android/launcher2/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mGapX:I

.field private mGapY:I

.field private mHiddenItem:Lcom/android/launcher2/BaseItem;

.field private mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 58
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;Z)Z
    .locals 3
    .parameter "item"
    .parameter "createView"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a duplicate entry for this item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;)V

    .line 100
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .parameter "v"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 369
    .local v0, grandParent:Landroid/view/View;
    instance-of v3, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_0

    .line 370
    instance-of v3, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 371
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 372
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 373
    .local v2, item:Lcom/android/launcher2/BaseItem;
    if-eqz v2, :cond_2

    .line 374
    const-string v3, "CellLayoutChildren"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addView() adding view to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 381
    instance-of v3, p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v3, :cond_1

    .line 382
    check-cast p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    .end local p1
    invoke-interface {p1}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/DynamicShadowMixin;->setViewToInvalidate(Landroid/view/View;)V

    .line 385
    :cond_1
    return-void

    .line 375
    .restart local v1       #icon:Lcom/android/launcher2/AppIconView;
    .restart local v2       #item:Lcom/android/launcher2/BaseItem;
    .restart local p1
    :cond_2
    instance-of v3, v1, Lcom/android/launcher2/AllappsIcon;

    if-eqz v3, :cond_0

    .line 376
    const-string v3, "CellLayoutChildren"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addView() adding all apps icon to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 3
    .parameter "item"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 120
    .local v0, l:Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher2/ItemViewBuilder;->buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;

    move-result-object v1

    .line 121
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne p1, v2, :cond_0

    .line 122
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_0
    return-object v1
.end method

.method public buildViews()V
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Tried to build item views when we already had views."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 114
    .local v1, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 116
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :cond_1
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 317
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 320
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 321
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 322
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 106
    return-void
.end method

.method public disableHardwareLayers()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 79
    :cond_0
    return-void
.end method

.method public drawShadows(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 388
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 389
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    .end local v1           #v:Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    instance-of v2, v1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 394
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 395
    check-cast v1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    .end local v1           #v:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/DynamicShadowMixin;->draw(Landroid/graphics/Canvas;)V

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 399
    :cond_2
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 72
    :cond_0
    return-void
.end method

.method public findFolderItem(J)Lcom/android/launcher2/BaseItem;
    .locals 4
    .parameter "id"

    .prologue
    .line 360
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 361
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget-wide v2, v1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 363
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 191
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 192
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/android/launcher2/AllappsIcon;

    if-nez v4, :cond_1

    .line 191
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 196
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 201
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 8
    .parameter "item"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 180
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 181
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 182
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 183
    .local v2, tag:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    .line 184
    check-cast v2, Lcom/android/launcher2/BaseItem;

    .end local v2           #tag:Ljava/lang/Object;
    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v6, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 187
    .end local v3           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 180
    .restart local v3       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v3           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getChildFromPosition(I)Landroid/view/View;
    .locals 4
    .parameter "pos"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 211
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 211
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 220
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 3
    .parameter "pos"

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 225
    .local v1, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 229
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemAt(II)Lcom/android/launcher2/BaseItem;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 206
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public hasItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 253
    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    .line 254
    .local v1, cellWidth:I
    iget v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    .line 255
    .local v0, cellHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 257
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v6, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    invoke-virtual {v4, v1, v0, v5, v6}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 258
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 259
    .local v2, childWidthMeasureSpec:I
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 261
    .local v3, childheightMeasureSpec:I
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 262
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    .line 267
    .local v14, count:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    if-ge v15, v14, :cond_2

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 270
    .local v9, child:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v11

    .line 271
    .local v11, childItem:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 272
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 274
    .local v16, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 275
    .local v12, childLeft:I
    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 277
    .local v13, childTop:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v10, v13, v1

    .line 280
    .local v10, childBottom:I
    instance-of v1, v9, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    if-eqz v11, :cond_0

    iget-object v1, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 281
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/Utilities;->getIconHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v13, v1

    .line 284
    :cond_0
    move-object/from16 v0, v16

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v1, v12

    invoke-virtual {v9, v12, v13, v1, v10}, Landroid/view/View;->layout(IIII)V

    .line 286
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    if-eqz v1, :cond_1

    .line 287
    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 289
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    .line 290
    .local v8, cellXY:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayoutChildren;->getLocationOnScreen([I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "android.home.drop"

    const/4 v4, 0x0

    aget v4, v8, v4

    add-int/2addr v4, v12

    move-object/from16 v0, v16

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v8, v5

    add-int/2addr v5, v13

    move-object/from16 v0, v16

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 267
    .end local v8           #cellXY:[I
    .end local v10           #childBottom:I
    .end local v12           #childLeft:I
    .end local v13           #childTop:I
    .end local v16           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 298
    .end local v9           #child:Landroid/view/View;
    .end local v11           #childItem:Lcom/android/launcher2/BaseItem;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 239
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 240
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 244
    .local v4, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 245
    .local v2, heightSpecSize:I
    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/CellLayoutChildren;->setMeasuredDimension(II)V

    .line 246
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 133
    const-string v1, "CellLayoutChildren"

    const-string v2, "Adding view to CellLayoutChildren without an associated item."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 138
    .local v0, l:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    if-eqz v1, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-interface {v2, p1, v1, v0}, Lcom/android/launcher2/ItemViewBuilder;->onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V

    .line 142
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 162
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    .local v0, rc:Z
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne p1, v2, :cond_0

    .line 148
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 150
    :cond_0
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 156
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 308
    if-eqz p1, :cond_0

    .line 309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 310
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 311
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 313
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 0
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "gapX"
    .parameter "gapY"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    .line 83
    iput p2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    .line 84
    iput p3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    .line 85
    iput p4, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    .line 86
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 330
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 332
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 334
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 335
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 330
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 343
    return-void
.end method

.method public setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 92
    return-void
.end method

.method public setItemVisibility(Lcom/android/launcher2/BaseItem;I)V
    .locals 2
    .parameter "item"
    .parameter "v"

    .prologue
    .line 166
    if-nez p2, :cond_1

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 171
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_0
    return-void

    .line 169
    .end local v0           #view:Landroid/view/View;
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 4
    .parameter "lp"

    .prologue
    .line 249
    iget v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 250
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public updateChildrenToNewPage(ILjava/util/List;)V
    .locals 4
    .parameter "page"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p2, ls:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 347
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 348
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 350
    .local v2, item:Lcom/android/launcher2/HomeItem;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v3, :cond_0

    .line 355
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    :cond_0
    iput p1, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_1

    .line 357
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method
