.class public Lcom/android/launcher2/FolderIconView;
.super Lcom/android/launcher2/AppIconView;
.source "FolderIconView.java"

# interfaces
.implements Lcom/android/launcher2/DragReceivable;


# static fields
.field static final EMPTY_ICON_OFFSET:I = 0xc

.field private static final TAG:Ljava/lang/String; = "FolderIconView"

.field private static mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;


# instance fields
.field final mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mDraggedIconId:J

.field private mDraggingOver:Z

.field mDrawPlate:Z

.field final mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

.field private final mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

.field private mFolderItem:Lcom/android/launcher2/FolderItem;

.field private mFromThisFolder:Z

.field final mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

.field mIgnoreSetAlphaOnDragExit:Z

.field private mLastAttachedFolder:Lcom/android/launcher2/Folder;

.field private mOnEnterDelayed:Ljava/lang/Runnable;

.field protected mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

.field protected mPlateBitmap:Landroid/graphics/Bitmap;

.field final mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mTmpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0xc8

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-boolean v5, p0, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 57
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    .line 63
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v0, v3, v4, v2}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 68
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v0, v3, v4, v2}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 75
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v0, v3, v4, v2}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 77
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v1, 0x1f4

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 190
    iput-boolean v5, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    .line 271
    new-instance v0, Lcom/android/launcher2/FolderIconView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconView$2;-><init>(Lcom/android/launcher2/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mOnEnterDelayed:Ljava/lang/Runnable;

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 460
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mTmpPaint:Landroid/graphics/Paint;

    .line 89
    new-instance v0, Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/launcher2/FolderAnimator;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    .line 90
    return-void
.end method

.method private acceptDrop(Lcom/android/launcher2/DragState;)Z
    .locals 4
    .parameter "dragState"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, accept:Z
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 153
    .local v1, item:Lcom/android/launcher2/BaseItem;
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    .line 155
    .local v2, itemType:Lcom/android/launcher2/BaseItem$Type;
    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 160
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    .end local v2           #itemType:Lcom/android/launcher2/BaseItem$Type;
    :cond_0
    return v0
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderIconView;)Lcom/android/launcher2/FolderAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderIconView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderIconView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragEnter()V

    return-void
.end method

.method private draw_(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 447
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getWidth()I

    move-result v1

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 450
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawPlate(Landroid/graphics/Canvas;)V

    .line 451
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 453
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawIconAndText(Landroid/graphics/Canvas;)V

    .line 454
    return-void
.end method

.method private droppedInOurFolder(Lcom/android/launcher2/DragState;)Z
    .locals 5
    .parameter "dragState"

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getReceiver()Lcom/android/launcher2/DragReceivable;

    move-result-object v1

    .line 256
    .local v1, rec:Lcom/android/launcher2/DragReceivable;
    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v2

    .line 257
    :cond_1
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 258
    check-cast v0, Lcom/android/launcher2/CellLayoutNoGap;

    .line 259
    .local v0, l:Lcom/android/launcher2/CellLayoutNoGap;
    iget-object v3, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getHiddenIconIndex(Lcom/android/launcher2/FolderItem;)I
    .locals 6
    .parameter "info"

    .prologue
    .line 537
    const/4 v0, -0x1

    .line 538
    .local v0, hiddenIconIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 539
    invoke-interface {p1, v1}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v4, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 540
    move v0, v1

    .line 545
    :cond_0
    return v0

    .line 538
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static mix(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "mix"

    .prologue
    .line 523
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private onDragEnter()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f80

    .line 277
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mOnEnterDelayed:Ljava/lang/Runnable;

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 285
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 293
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto :goto_0

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    goto :goto_1
.end method

.method public static setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 370
    sput-object p0, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    .line 371
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p1}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 167
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setFolderIcon(Lcom/android/launcher2/FolderItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 171
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 4
    .parameter "item"

    .prologue
    const/high16 v3, 0x3f80

    .line 118
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 120
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 121
    check-cast v1, Lcom/android/launcher2/FolderItem;

    iput-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    .line 122
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v2}, Lcom/android/launcher2/FolderIconView;->getHiddenIconIndex(Lcom/android/launcher2/FolderItem;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 125
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 129
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    if-nez v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 133
    new-instance v1, Lcom/android/launcher2/FolderIconView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/FolderIconView$1;-><init>(Lcom/android/launcher2/FolderIconView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    .line 139
    return-void
.end method

.method public cancelFolderAnims()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->destroyDrawingCache()V

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    .line 95
    iput-boolean v2, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 98
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 103
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 109
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 106
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    goto :goto_0
.end method

.method public createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 2
    .parameter "item"

    .prologue
    .line 265
    instance-of v0, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 266
    .end local p1
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1
    const v1, 0x7f030013

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 439
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->isEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/FolderIconView;->setDimmed(ZZ)V

    .line 442
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconView;->draw_(Landroid/graphics/Canvas;)V

    .line 443
    return-void

    :cond_1
    move v1, v2

    .line 440
    goto :goto_0
.end method

.method public drawAsEmpty()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 337
    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    .line 338
    .local v0, count:I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public drawPlate(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v8

    .line 463
    .local v8, f:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v7

    .line 464
    .local v7, e:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v9

    .line 465
    .local v9, h:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v6

    .line 466
    .local v6, c:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/FolderIconView;->mTmpPaint:Landroid/graphics/Paint;

    .line 468
    .local v11, tmpPaint:Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 469
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 472
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x4140

    mul-float v15, v7, v8

    invoke-static {v13, v14, v15}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 474
    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v8

    const/high16 v15, 0x4020

    mul-float/2addr v14, v15

    const/high16 v15, 0x3fc0

    sub-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 475
    .local v1, a0:F
    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    const v14, 0x40133333

    mul-float/2addr v14, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 477
    .local v2, a1:F
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float v4, v12, v13

    .line 478
    .local v4, anchor_x:F
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v5, v12

    .line 481
    .local v5, anchor_y:F
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-lez v12, :cond_1

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 483
    const/4 v12, 0x0

    cmpl-float v12, v8, v12

    if-eqz v12, :cond_0

    .line 484
    const/high16 v12, 0x3f80

    const v13, 0x3f333333

    invoke-static {v12, v13, v8}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v12

    const/high16 v13, 0x3f80

    const/high16 v14, 0x4040

    invoke-static {v13, v14, v8}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 486
    :cond_0
    const/high16 v12, 0x437f

    mul-float/2addr v12, v1

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 487
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 491
    :cond_1
    const/4 v12, 0x0

    cmpl-float v12, v2, v12

    if-lez v12, :cond_5

    .line 492
    const/high16 v12, 0x3f80

    cmpl-float v12, v8, v12

    if-eqz v12, :cond_2

    .line 494
    const/high16 v12, 0x3f80

    const v13, 0x3ea8f5c3

    const/high16 v14, 0x3f80

    invoke-static {v13, v14, v8}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 498
    :cond_2
    const/high16 v12, 0x3f80

    const v13, 0x3f4ccccd

    invoke-static {v12, v13, v7}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v10

    .line 501
    .local v10, scale:F
    float-to-double v12, v6

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    float-to-double v14, v6

    const-wide/high16 v16, 0x4008

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff8

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    const/high16 v14, 0x4000

    div-float v14, v6, v14

    float-to-double v14, v14

    add-double/2addr v12, v14

    double-to-float v12, v12

    mul-float/2addr v10, v12

    .line 503
    const/high16 v12, 0x3f80

    cmpl-float v12, v10, v12

    if-eqz v12, :cond_3

    .line 504
    const/high16 v12, 0x4000

    div-float v12, v5, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v10, v4, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 507
    :cond_3
    move v3, v6

    .line 508
    .local v3, alpha:F
    const/high16 v12, 0x437f

    mul-float/2addr v12, v3

    float-to-int v12, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/FolderIconView;->setTextAlpha(I)V

    .line 510
    const/4 v12, 0x0

    cmpl-float v12, v9, v12

    if-lez v12, :cond_4

    .line 511
    mul-float v12, v3, v9

    mul-float/2addr v12, v2

    const/high16 v13, 0x437f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 512
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 514
    :cond_4
    const/high16 v12, 0x3f80

    cmpg-float v12, v9, v12

    if-gez v12, :cond_5

    .line 515
    const/high16 v12, 0x3f80

    sub-float/2addr v12, v9

    mul-float/2addr v12, v3

    mul-float/2addr v12, v2

    const/high16 v13, 0x437f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 516
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 519
    .end local v3           #alpha:F
    .end local v10           #scale:F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 520
    return-void
.end method

.method public fromThisFolder()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    return v0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderIconWithPlate()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFolderIconWithPlate()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    .local v0, item:Lcom/android/launcher2/FolderItem;
    move-object v1, v0

    .line 533
    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconWithPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method getPlateOffsetY()F
    .locals 3

    .prologue
    .line 457
    const/4 v0, 0x0

    const/high16 v1, 0x4140

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v0

    return v0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 331
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 193
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher2/DragState;

    if-nez v8, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v6

    .line 197
    :cond_1
    sget-boolean v8, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v8, :cond_3

    .line 198
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragState;

    .line 199
    .local v2, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    .line 200
    .local v4, item:Lcom/android/launcher2/BaseItem;
    if-eqz v4, :cond_6

    iget-object v8, v4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v8, v9, :cond_2

    iget-object v8, v4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v8, v9, :cond_2

    instance-of v8, v4, Lcom/android/launcher2/HomePendingItem;

    if-eqz v8, :cond_6

    :cond_2
    move v1, v7

    .line 202
    .local v1, dragFromMenu:Z
    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v1, :cond_0

    .line 211
    .end local v1           #dragFromMenu:Z
    .end local v2           #dragState:Lcom/android/launcher2/DragState;
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 212
    .local v5, myParent:Landroid/view/ViewParent;
    instance-of v8, v5, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v8, :cond_4

    .line 213
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 214
    .local v3, grandParent:Landroid/view/ViewParent;
    instance-of v8, v3, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v8, :cond_4

    .line 215
    check-cast v3, Lcom/android/launcher2/CellLayoutNoGap;

    .end local v3           #grandParent:Landroid/view/ViewParent;
    invoke-virtual {v3, p1, p0}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    .line 218
    :cond_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragState;

    .line 219
    .restart local v2       #dragState:Lcom/android/launcher2/DragState;
    invoke-direct {p0, v2}, Lcom/android/launcher2/FolderIconView;->acceptDrop(Lcom/android/launcher2/DragState;)Z

    move-result v0

    .line 220
    .local v0, accept:Z
    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_5
    :goto_2
    :pswitch_0
    move v6, v0

    .line 251
    goto :goto_0

    .end local v0           #accept:Z
    .end local v5           #myParent:Landroid/view/ViewParent;
    .restart local v4       #item:Lcom/android/launcher2/BaseItem;
    :cond_6
    move v1, v6

    .line 200
    goto :goto_1

    .line 223
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    .restart local v0       #accept:Z
    .restart local v5       #myParent:Landroid/view/ViewParent;
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v10}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    :goto_3
    iput-boolean v7, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    goto :goto_2

    :cond_7
    move v7, v6

    goto :goto_3

    .line 226
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 227
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragEnter()V

    .line 228
    iput-boolean v7, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto :goto_2

    .line 231
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    .line 232
    iput-boolean v6, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto :goto_2

    .line 235
    :pswitch_4
    iget-object v7, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v7

    invoke-virtual {v2, p0, v6, v6, v7}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;III)Z

    .line 236
    invoke-virtual {p0, v2}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    .line 237
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 238
    iput-boolean v6, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto :goto_2

    .line 241
    :pswitch_5
    iput-boolean v6, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    .line 242
    invoke-direct {p0, v2}, Lcom/android/launcher2/FolderIconView;->droppedInOurFolder(Lcom/android/launcher2/DragState;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 243
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 244
    iput-boolean v7, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 246
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    .line 247
    iput-boolean v6, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public resetPlateIfNeeded()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v0

    .line 304
    .local v0, drawEmpty:Z
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 309
    :goto_1
    if-eqz v0, :cond_3

    .line 310
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 316
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto :goto_0

    .line 307
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    goto :goto_1
.end method

.method public resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V
    .locals 2
    .parameter "dragState"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded()V

    .line 321
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 323
    if-eqz p1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;Z)V

    .line 329
    :cond_1
    return-void
.end method

.method public resetShadow()V
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 361
    .local v0, item:Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_0

    .line 362
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 365
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/AppIconView;->resetShadow()V

    .line 366
    return-void
.end method

.method public restoreStateForOpenVisualize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 430
    iput-boolean v2, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 431
    iput-boolean v2, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 432
    return-void
.end method

.method public setDraggedIconId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 549
    iput-wide p1, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    .line 550
    return-void
.end method

.method public setFolder(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    .line 114
    return-void
.end method

.method public setFolderIcon(Lcom/android/launcher2/FolderItem;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 348
    .local v1, itemInfo:Lcom/android/launcher2/BaseItem;
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 355
    :goto_0
    return v2

    .line 350
    :cond_1
    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconView;->getHiddenIconIndex(Lcom/android/launcher2/FolderItem;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .local v0, folderIcon:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded()V

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->resetShadow()V

    .line 355
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIJ)V
    .locals 7
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "screen"
    .parameter "container"

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 184
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    move-wide v2, p5

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 188
    :cond_0
    return-void
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 376
    return-void
.end method

.method public showBadge()V
    .locals 12

    .prologue
    .line 380
    sget-object v10, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v10, v11, :cond_0

    .line 425
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 383
    .local v9, tag:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 384
    .local v0, badge:Landroid/graphics/drawable/Drawable;
    instance-of v10, v9, Lcom/android/launcher2/AppFolderItem;

    if-eqz v10, :cond_3

    move-object v6, v9

    .line 385
    check-cast v6, Lcom/android/launcher2/AppFolderItem;

    .line 386
    .local v6, item:Lcom/android/launcher2/AppFolderItem;
    const/4 v8, 0x0

    .line 387
    .local v8, sum:I
    invoke-virtual {v6}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v7

    .line 388
    .local v7, itemCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_1

    .line 389
    invoke-virtual {v6, v4}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 390
    .local v1, childItem:Lcom/android/launcher2/AppItem;
    iget v10, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    add-int/2addr v8, v10

    .line 388
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 392
    .end local v1           #childItem:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/launcher2/FolderIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 424
    .end local v4           #i:I
    .end local v6           #item:Lcom/android/launcher2/AppFolderItem;
    .end local v7           #itemCount:I
    .end local v8           #sum:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 393
    :cond_3
    instance-of v10, v9, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v10, :cond_2

    move-object v6, v9

    .line 394
    check-cast v6, Lcom/android/launcher2/HomeFolderItem;

    .line 396
    .local v6, item:Lcom/android/launcher2/HomeFolderItem;
    const/4 v5, 0x0

    .line 397
    .local v5, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 398
    .local v2, compName:Landroid/content/ComponentName;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v3, componentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 401
    .restart local v8       #sum:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    invoke-virtual {v6}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 403
    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    iget-object v10, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v10, v11, :cond_4

    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    iget-object v10, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v10, v11, :cond_5

    .line 406
    :cond_4
    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v5, v10, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 407
    if-eqz v5, :cond_5

    .line 408
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 411
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 413
    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    iget v10, v10, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    add-int/2addr v8, v10

    .line 414
    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_6
    const/4 v5, 0x0

    .line 418
    const/4 v2, 0x0

    .line 401
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 421
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/launcher2/FolderIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method
