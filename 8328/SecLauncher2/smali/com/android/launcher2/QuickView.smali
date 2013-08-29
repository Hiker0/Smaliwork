.class public abstract Lcom/android/launcher2/QuickView;
.super Landroid/widget/FrameLayout;
.source "QuickView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickView$Animate;,
        Lcom/android/launcher2/QuickView$Defines;,
        Lcom/android/launcher2/QuickView$QuickViewInfoProvider;
    }
.end annotation


# static fields
.field public static final ANIMATION_IN_TIME:I = 0x190

.field public static final ANIMATION_OUT_TIME:I = 0x168

.field protected static final ANIMATION_STATE_CLOSE_DONE:I = 0x8

.field protected static final ANIMATION_STATE_CLOSE_RUNNING:I = 0x4

.field protected static final ANIMATION_STATE_CLOSE_STARTING:I = 0x3

.field protected static final ANIMATION_STATE_OPEN_DONE:I = 0x7

.field protected static final ANIMATION_STATE_OPEN_RUNNING:I = 0x2

.field protected static final ANIMATION_STATE_OPEN_STARTING:I = 0x1

.field protected static final DEBUG:Z = false

.field static final INVALID_VALUE:I = -0x1

.field protected static final SCALE_FACTOR:F = 1.15f

.field private static final TAG:Ljava/lang/String; = "QuickView"

.field static final TOUCH_STATE_DRAGGING:I = 0x2

.field static final TOUCH_STATE_PINCHIN:I = 0x4

.field static final TOUCH_STATE_PINCHOUT:I = 0x3

.field static final TOUCH_STATE_REST:I = 0x0

.field static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static sTempLoc1:[I

.field private static sTempLoc2:[I


# instance fields
.field protected mAniEngine:Lcom/android/launcher2/AnimateEngine;

.field protected mAnimationDuration:I

.field protected mAnimationStartTime:J

.field protected mAnimationState:I

.field private mChangingOrientation:Z

.field protected mChildGapH:I

.field protected mChildGapV:I

.field protected mChildRects:[Landroid/graphics/Rect;

.field protected mCurrentPage:I

.field protected mCurrentRects:[Landroid/graphics/Rect;

.field protected mDraggingIndex:I

.field protected mDraggingView:Landroid/view/View;

.field protected mEnabledChildAnimation:Z

.field protected mFinishRects:[Landroid/graphics/Rect;

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mMovePinchStart:I

.field protected mMultiTouchUsed:Z

.field private mOrientation:I

.field protected mOriginDragIndex:I

.field protected final mPanelPadding:Landroid/graphics/Rect;

.field private final mPanelSizeLong:I

.field private final mPanelSizeLong2:I

.field private final mPanelSizeShort:I

.field protected mPinchIndex:I

.field protected mPinchOutIndex:I

.field protected mPinchOutProcess:Z

.field protected mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

.field protected mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

.field private final mScreenRect:Landroid/graphics/Rect;

.field protected mStartRects:[Landroid/graphics/Rect;

.field protected mTimeStore:J

.field protected mTmpRect:Landroid/graphics/Rect;

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchedView:Landroid/view/View;

.field private mUpdateHitRect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 132
    new-array v0, v1, [I

    sput-object v0, Lcom/android/launcher2/QuickView;->sTempLoc1:[I

    .line 133
    new-array v0, v1, [I

    sput-object v0, Lcom/android/launcher2/QuickView;->sTempLoc2:[I

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 82
    iput v2, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 103
    iput-boolean v2, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    iput-boolean v2, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    .line 109
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort:I

    .line 160
    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong:I

    .line 161
    const v1, 0x7f0c0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong2:I

    .line 163
    new-instance v1, Lcom/android/launcher2/AnimateEngine;

    invoke-direct {v1}, Lcom/android/launcher2/AnimateEngine;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    .line 164
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 165
    return-void
.end method

.method private clearDragVars()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 368
    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    .line 369
    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    .line 370
    iput v1, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    .line 371
    iput v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    .line 372
    iput v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    .line 373
    return-void
.end method

.method private setAniRects([Landroid/graphics/Rect;II)V
    .locals 15
    .parameter "rects"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 280
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v9

    if-lez v9, :cond_0

    if-ltz p2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p2

    if-gt v0, v1, :cond_1

    .line 323
    :cond_0
    return-void

    .line 284
    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v5

    .line 285
    .local v5, page:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 287
    .local v6, pagePosX:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v9

    sget-object v10, Lcom/android/launcher2/QuickView;->sTempLoc1:[I

    invoke-virtual {v9, v10}, Lcom/android/launcher2/AnimationLayer;->getLocationInWindow([I)V

    .line 296
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 297
    .local v8, parent:Landroid/view/View;
    sget-object v9, Lcom/android/launcher2/QuickView;->sTempLoc2:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 298
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move/from16 v0, p2

    invoke-interface {v9, v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v2

    .line 299
    .local v2, currentPage:Landroid/view/View;
    sget-object v9, Lcom/android/launcher2/QuickView;->sTempLoc2:[I

    const/4 v10, 0x0

    aget v11, v9, v10

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v12

    add-int/2addr v11, v12

    aput v11, v9, v10

    .line 300
    sget-object v9, Lcom/android/launcher2/QuickView;->sTempLoc2:[I

    const/4 v10, 0x1

    aget v11, v9, v10

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v11, v12

    aput v11, v9, v10

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getYOffset()I

    move-result v9

    sget-object v10, Lcom/android/launcher2/QuickView;->sTempLoc2:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sget-object v11, Lcom/android/launcher2/QuickView;->sTempLoc1:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    add-int v7, v9, v10

    .line 305
    .local v7, pagePosY:I
    aget-object v9, p1, p2

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int v10, v6, v10

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v11, v7, v11

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v7

    iget-object v14, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPageHorizontalOffset()I

    move-result v3

    .line 314
    .local v3, horizontalOffset:I
    add-int/lit8 v4, p2, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_2

    .line 315
    aget-object v9, p1, v4

    add-int/lit8 v10, v4, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 316
    aget-object v9, p1, v4

    aget-object v10, p1, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    neg-int v10, v10

    sub-int/2addr v10, v3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 314
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 319
    :cond_2
    add-int/lit8 v4, p2, 0x1

    :goto_1
    move/from16 v0, p3

    if-ge v4, v0, :cond_0

    .line 320
    aget-object v9, p1, v4

    add-int/lit8 v10, v4, -0x1

    aget-object v10, p1, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 321
    aget-object v9, p1, v4

    aget-object v10, p1, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v10, v3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public cancelDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 258
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->removeView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/QuickView;->addView(Landroid/view/View;I)V

    .line 262
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->updateTags()V

    .line 267
    iput v3, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 268
    iput v2, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    .line 269
    iput-object v4, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    .line 270
    iput-object v4, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    .line 271
    iput v2, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    .line 272
    iput v2, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    .line 273
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->invalidate()V

    .line 274
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    .line 211
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->setVisibility(I)V

    .line 212
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 213
    return-void
.end method

.method public drawCloseAnimation()Z
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->referenceTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/QuickView;->mTimeStore:J

    .line 235
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 236
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 237
    const/16 v0, 0x168

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawOpenAnimation()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->referenceTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/QuickView;->mTimeStore:J

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 222
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    .line 223
    return-void
.end method

.method protected drop(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v0

    .line 417
    .local v0, dropedIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->isValidTag(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->swapScreen(I)V

    goto :goto_0

    .line 423
    :cond_1
    iget v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->swapScreen(I)V

    goto :goto_0
.end method

.method protected endDrag()V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/launcher2/QuickView;->clearDragVars()V

    .line 363
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewDragEnd()V

    .line 364
    return-void
.end method

.method protected getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 194
    iget v1, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 195
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong2:I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-object v0

    .line 197
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort:I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    return v0
.end method

.method protected getTouchedIndex(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 391
    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v3, :cond_0

    move v1, v2

    .line 397
    :goto_0
    return v1

    .line 392
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v3

    .line 393
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 394
    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    .line 393
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    add-int/2addr v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 397
    goto :goto_0
.end method

.method protected getYOffset()I
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method protected init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4
    .parameter "provider"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->removeAllViews()V

    .line 173
    invoke-direct {p0}, Lcom/android/launcher2/QuickView;->clearDragVars()V

    .line 174
    iput-object p1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 177
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 180
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    .line 181
    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    const v2, 0x7f0c0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    .line 183
    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    .line 185
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 187
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickView;->getHitRect(Landroid/graphics/Rect;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    return-object v2
.end method

.method public abstract initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
.end method

.method protected final isAnimStateOkayForClickEvents()Z
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAnimating()Z
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "rect"

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/QuickView;->isAvailableRect(Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method

.method protected isAvailableRect(Landroid/graphics/Rect;I)Z
    .locals 2
    .parameter "rect"
    .parameter "yOffset"

    .prologue
    .line 380
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChangingOrientation()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isValidTag(Ljava/lang/Object;)Z
.end method

.method protected onPinchOut()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 402
    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    .line 403
    iget v0, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 404
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->postInvalidate()V

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 206
    iput v1, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    .line 207
    return-void
.end method

.method public openInstantly()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 227
    return-void
.end method

.method protected referenceTime()J
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 501
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 502
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    .line 504
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 505
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    .line 506
    .local v3, orientation:I
    iget v5, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    if-eq v3, v5, :cond_0

    .line 507
    iput-boolean v7, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    .line 509
    :cond_0
    iput v3, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    .line 510
    const v5, 0x7f020047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 511
    const v5, 0x7f0c0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    .line 512
    const v5, 0x7f0c0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    .line 514
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 515
    .local v0, bgPad:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 518
    iget v5, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 519
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong2:I

    iget v6, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort:I

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 520
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 521
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 522
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 523
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 531
    :goto_0
    iput-boolean v7, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    .line 532
    return-object v2

    .line 525
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/launcher2/QuickView;->mPanelSizeShort:I

    iget v6, p0, Lcom/android/launcher2/QuickView;->mPanelSizeLong:I

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 526
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 527
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 528
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 529
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method protected setCloseEndRect(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getChildCount()I

    move-result v0

    .line 341
    .local v0, count:I
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 342
    :cond_0
    new-array v2, v0, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 343
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 344
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/launcher2/QuickView;->setAniRects([Landroid/graphics/Rect;II)V

    .line 349
    return-void
.end method

.method protected setOpenStartRect(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getChildCount()I

    move-result v0

    .line 328
    .local v0, count:I
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 329
    :cond_0
    new-array v2, v0, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 330
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 331
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/launcher2/QuickView;->setAniRects([Landroid/graphics/Rect;II)V

    .line 336
    return-void
.end method

.method protected startDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 352
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    .line 354
    iget v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    .line 355
    iput-object p1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    .line 356
    iput-object p1, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    .line 357
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->invalidate()V

    .line 358
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewDragStart()V

    .line 359
    return-void
.end method

.method protected abstract swapScreen(I)V
.end method

.method protected updateParamsIfNeeded(Z)V
    .locals 2
    .parameter "changed"

    .prologue
    const/4 v1, 0x0

    .line 539
    if-eqz p1, :cond_1

    .line 540
    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->getHitRect(Landroid/graphics/Rect;)V

    .line 543
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    .line 545
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    .line 546
    return-void
.end method

.method protected abstract updateTags()V
.end method
