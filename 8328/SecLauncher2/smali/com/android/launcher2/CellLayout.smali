.class public abstract Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/launcher2/DragReceivable;
.implements Lcom/android/launcher2/DragOrigin;
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$4;,
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$CellLayoutAnimationController;,
        Lcom/android/launcher2/CellLayout$SpanRect;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayout"


# instance fields
.field private mAcceptsDrops:Z

.field public mAnimateChildInstantly:Z

.field private mBackgroundAlpha:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCPType:I

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mCountX:I

.field private mCountY:I

.field private mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsVisibility:F

.field private final mDragCell:[I

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragState:Lcom/android/launcher2/DragState;

.field mDragging:Z

.field protected mDrawDragOutlines:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mEmptyMessage:Landroid/view/View;

.field private mFingerMovedOnDrag:Z

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mGapX:I

.field private mGapY:I

.field private mGlowBackgroundAlpha:F

.field private mGlowBackgroundRect:Landroid/graphics/Rect;

.field private mGlowBackgroundScale:F

.field protected mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field mIgnoreOccupied:Z

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDefaultDropTarget:Z

.field private mIsDragOccuring:Z

.field private mIsDragOverlapping:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLastVisualize:[I

.field private mLastXY:[F

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private final mPositioner:Lcom/android/launcher2/CellPositioner;

.field private final mRect:Landroid/graphics/Rect;

.field private mStateAnimationFinished:Z

.field mTempLocation:[I

.field private final mTmpPoint:[I

.field private final mTmpXY:[I

.field private final mVisualizer:Lcom/android/launcher2/DeltaVisualizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 157
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 76
    new-instance v12, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v12}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 82
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 83
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 84
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    .line 86
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 87
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIgnoreOccupied:Z

    .line 91
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 92
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 104
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    .line 106
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 107
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    .line 108
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    .line 112
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    new-array v12, v12, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 118
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 119
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 123
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 125
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 128
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    .line 130
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 135
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 137
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCPType:I

    .line 1042
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    .line 1156
    const/4 v12, 0x4

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    .line 1882
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 1883
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 1884
    const/4 v12, 0x2

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->newCellPositioner()Lcom/android/launcher2/CellPositioner;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    .line 163
    new-instance v12, Lcom/android/launcher2/DeltaVisualizer;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/launcher2/DeltaVisualizer;-><init>(Lcom/android/launcher2/CellLayout;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    .line 167
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    .line 169
    sget-object v12, Lcom/sec/android/app/launcher/R$styleable;->CellLayout:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 171
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 172
    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 173
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    .line 174
    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    .line 175
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 176
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 178
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 184
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f020091

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 185
    const v12, 0x7f020092

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 186
    const v12, 0x7f0c0022

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    .line 191
    const v12, 0x7f02002c

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x4020

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 195
    const v12, 0x7f0a001b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 196
    .local v5, animDuration:I
    new-instance v12, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v13, v5

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-direct/range {v12 .. v16}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v14, v15

    aput v16, v12, v13

    .line 207
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v8, v12, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v13, v12, v8

    .line 207
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 215
    :cond_0
    const v12, 0x7f0a001d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 216
    .local v6, duration:I
    const/4 v7, 0x0

    .line 217
    .local v7, fromAlphaValue:F
    const v12, 0x7f0a001e

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v11, v12

    .line 219
    .local v11, toAlphaValue:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/util/Arrays;->fill([FF)V

    .line 221
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v12, v12

    if-ge v8, v12, :cond_1

    .line 222
    new-instance v4, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v12, v6

    const/4 v14, 0x0

    invoke-direct {v4, v12, v13, v14, v11}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 224
    .local v4, anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    move v10, v8

    .line 226
    .local v10, thisIndex:I
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v10}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v4, v12, v8

    .line 221
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 255
    .end local v4           #anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    .end local v10           #thisIndex:I
    :cond_1
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 256
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 257
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    .line 258
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setHoverScale(F)V

    .line 259
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setHoverAlpha(F)V

    .line 261
    new-instance v12, Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/launcher2/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 264
    return-void

    .line 1156
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayout;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method private canAcceptDrop(Lcom/android/launcher2/DragState;III)Z
    .locals 20
    .parameter "dragState"
    .parameter "x"
    .parameter "y"
    .parameter "screen"

    .prologue
    .line 2231
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v15

    .line 2232
    .local v15, parent:Lcom/android/launcher2/CellLayoutContainer;
    if-nez v15, :cond_0

    .line 2233
    const/4 v3, 0x0

    .line 2271
    :goto_0
    return v3

    .line 2235
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v9

    .line 2236
    .local v9, container:J
    const-wide/16 v3, -0x64

    cmp-long v3, v9, v3

    if-eqz v3, :cond_1

    .line 2237
    const/4 v3, 0x0

    goto :goto_0

    .line 2239
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v19

    .line 2241
    .local v19, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)V

    .line 2242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v4, 0x0

    aget v17, v3, v4

    .line 2243
    .local v17, spanX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v4, 0x1

    aget v18, v3, v4

    .line 2245
    .local v18, spanY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v11, 0x1

    .line 2246
    .local v11, hasDroppableCell:Z
    :goto_1
    if-nez v11, :cond_3

    .line 2247
    const/4 v3, 0x0

    goto :goto_0

    .line 2245
    .end local v11           #hasDroppableCell:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 2249
    .restart local v11       #hasDroppableCell:Z
    :cond_3
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_4

    .line 2250
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/HomeItem;

    .line 2251
    .local v13, item:Lcom/android/launcher2/HomeItem;
    move/from16 v0, v17

    iput v0, v13, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2252
    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2254
    .end local v13           #item:Lcom/android/launcher2/HomeItem;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p4

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/launcher2/DragState;->moveItemToWithoutAnimation(Lcom/android/launcher2/DragReceivable;III)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2255
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_5

    .line 2256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    move-object/from16 v3, v19

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v3, v0}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2259
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 2261
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_6

    .line 2262
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    .local v14, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v16, v19

    .line 2263
    check-cast v16, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2264
    .local v16, resize_view:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/HomeWidgetItem;

    .line 2266
    .local v12, info:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    iget v4, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v7, v12, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 2271
    .end local v12           #info:Lcom/android/launcher2/HomeWidgetItem;
    .end local v14           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v16           #resize_view:Lcom/android/launcher2/LauncherAppWidgetHostView;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V
    .locals 7
    .parameter "dragState"

    .prologue
    .line 1913
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    .line 1914
    .local v4, view:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 1916
    .local v1, item:Lcom/android/launcher2/BaseItem;
    instance-of v5, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-ne v5, v6, :cond_0

    .line 1917
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v2

    .line 1918
    .local v2, spanX:I
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    .local v3, spanY:I
    move-object v0, v4

    .line 1919
    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 1920
    .local v0, hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1921
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    invoke-virtual {v0, p0, v2, v3, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;

    .line 1924
    .end local v0           #hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v2           #spanX:I
    .end local v3           #spanY:I
    :cond_0
    return-void
.end method

.method private clearTagCellInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 731
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 732
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 733
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 734
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 735
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 736
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 737
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_0

    .line 738
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellX:I

    .line 739
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    .line 741
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 742
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1531
    const/4 v4, 0x0

    .local v4, y:I
    :goto_0
    if-ge v4, p4, :cond_7

    .line 1532
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1
    if-ge v3, p3, :cond_6

    .line 1533
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    .line 1534
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    if-ge v3, p3, :cond_0

    .line 1535
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4

    if-ge v4, p4, :cond_4

    .line 1536
    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    .line 1537
    :goto_5
    if-nez v0, :cond_3

    .line 1541
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 1542
    aput v3, p0, v6

    .line 1543
    aput v4, p0, v5

    .line 1549
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v3           #x:I
    :goto_6
    return v5

    .restart local v3       #x:I
    :cond_1
    move v0, v6

    .line 1533
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v6

    .line 1536
    goto :goto_5

    .line 1535
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1534
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1532
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1531
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #x:I
    :cond_7
    move v5, v6

    .line 1549
    goto :goto_6
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 324
    const v2, 0x7f0c0014

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 325
    .local v0, cellHeight:I
    const v2, 0x7f0c0015

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c0016

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 328
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private invalidateVisualize()V
    .locals 3

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1319
    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 1029
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1030
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1032
    :cond_0
    return-void
.end method

.method private updateGlowRect()V
    .locals 8

    .prologue
    .line 403
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v0, v3, v4

    .line 404
    .local v0, marginFraction:F
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 405
    .local v1, marginX:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 406
    .local v2, marginY:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 408
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 409
    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 313
    const v2, 0x7f0c0013

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 314
    .local v0, cellWidth:I
    const v2, 0x7f0c0015

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c0016

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 317
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 370
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-nez v0, :cond_0

    .line 373
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 375
    :cond_0
    return-void
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1826
    const/4 v0, 0x0

    .line 1827
    .local v0, c:Z
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/PagedView;

    if-eqz v2, :cond_1

    .line 1828
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    .line 1829
    .local v1, v:Lcom/android/launcher2/PagedView;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->isPageConstructed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1830
    const/4 v0, 0x1

    .line 1835
    .end local v1           #v:Lcom/android/launcher2/PagedView;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher2/CellLayoutChildren;->addItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v2

    return v2

    .line 1833
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"
    .parameter "markCells"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 548
    move-object v0, p4

    .line 552
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    .line 555
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 556
    :cond_0
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 560
    const/4 v1, 0x1

    .line 562
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZ)Z
    .locals 9
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "duration"
    .parameter "delay"
    .parameter "instant"

    .prologue
    const/4 v6, 0x1

    .line 1050
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 1051
    .local v0, clc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    .line 1053
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1055
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 1056
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 1057
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 1058
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Tried to animate a item to an occupied cell. Failed to swap item positions because the inbound item belonged to a different cell layout."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1061
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1062
    .local v4, slp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1063
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1064
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1065
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 1068
    .end local v4           #slp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    iput-boolean v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1069
    iput p2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1070
    iput p3, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1071
    if-eqz p6, :cond_2

    .line 1072
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1086
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :goto_0
    return v6

    .line 1077
    .restart local v3       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v5       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1078
    .local v1, info:Lcom/android/launcher2/BaseItem;
    instance-of v7, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_3

    move-object v2, v1

    .line 1079
    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 1080
    .local v2, item:Lcom/android/launcher2/HomeItem;
    iput p2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1081
    iput p3, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1084
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->CLIP_BY_DEFAULT()Z

    move-result v7

    invoke-virtual {p0, p1, p4, v6, v7}, Lcom/android/launcher2/CellLayout;->animateIcon(Landroid/view/View;IZZ)Z

    move-result v6

    goto :goto_0

    .line 1086
    .end local v1           #info:Lcom/android/launcher2/BaseItem;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public animateIcon(Landroid/view/View;IZZ)Z
    .locals 10
    .parameter "child"
    .parameter "duration"
    .parameter "copyBitmap"
    .parameter "clip"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1090
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    if-eqz v1, :cond_0

    .line 1091
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    move v5, v9

    .line 1122
    :goto_0
    return v5

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 1096
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    invoke-virtual {v0, p1, v4, p2, p4}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1097
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1098
    .local v2, b:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 1099
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 1100
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1101
    if-nez v2, :cond_1

    .line 1102
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 1107
    :cond_1
    if-eqz p3, :cond_2

    .line 1108
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1109
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 1112
    :cond_2
    invoke-virtual {v0, p1, v2, v4}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v3

    .line 1113
    .local v3, from:[I
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    move-object v1, p1

    move v6, p2

    move v7, v5

    .line 1115
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer;->animateIcon(Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v8

    .line 1116
    .local v8, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1117
    if-eqz p4, :cond_3

    .line 1118
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, v0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    aget v4, v4, v9

    neg-int v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1119
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->enableClipping()V

    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v3           #from:[I
    .end local v8           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_3
    move v5, v9

    .line 1122
    goto :goto_0
.end method

.method public applyAppIconViewStyles(II)V
    .locals 8
    .parameter "appIconStyle"
    .parameter "folderIconStyle"

    .prologue
    .line 2344
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2345
    .local v3, context:Landroid/content/Context;
    sget-object v7, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v3, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2346
    .local v0, aivTextView:Landroid/content/res/TypedArray;
    sget-object v7, Landroid/R$styleable;->View:[I

    invoke-virtual {v3, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2348
    .local v1, aivView:Landroid/content/res/TypedArray;
    sget-object v7, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v3, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2349
    .local v4, fivTextView:Landroid/content/res/TypedArray;
    sget-object v7, Landroid/R$styleable;->View:[I

    invoke-virtual {v3, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2351
    .local v5, fivView:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, j:I
    :goto_0
    if-ltz v6, :cond_2

    .line 2352
    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 2353
    .local v2, childView:Landroid/view/View;
    instance-of v7, v2, Lcom/android/launcher2/FolderIconView;

    if-eqz v7, :cond_1

    .line 2354
    invoke-static {v5, v2}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 2355
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #childView:Landroid/view/View;
    invoke-static {v4, v2}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 2351
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2356
    .restart local v2       #childView:Landroid/view/View;
    :cond_1
    instance-of v7, v2, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    .line 2357
    invoke-static {v1, v2}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 2358
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #childView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    goto :goto_1

    .line 2361
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2362
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2364
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2365
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2366
    return-void
.end method

.method buildChildrenLayer()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->buildLayer()V

    .line 646
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 522
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 526
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 527
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 528
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 798
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 800
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 801
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 802
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1638
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1308
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    .line 1309
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1310
    .local v0, oldIndex:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1311
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1312
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 1313
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 1314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 1315
    return-void
.end method

.method commitDeltas()V
    .locals 8

    .prologue
    .line 2289
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2290
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PositionDelta;

    .line 2291
    .local v6, d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v6}, Lcom/android/launcher2/PositionDelta;->changed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2292
    new-instance v0, Lcom/android/launcher2/DragState;

    iget-object v1, v6, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    .line 2294
    .local v0, dummyDrag:Lcom/android/launcher2/DragState;
    invoke-virtual {v6}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    invoke-virtual {v6}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIZ)Z

    goto :goto_0

    .line 2297
    .end local v0           #dummyDrag:Lcom/android/launcher2/DragState;
    .end local v6           #d:Lcom/android/launcher2/PositionDelta;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v1}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    .line 2298
    return-void
.end method

.method public createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 2
    .parameter "item"

    .prologue
    .line 2309
    sget-object v0, Lcom/android/launcher2/CellLayout$4;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2318
    const/4 v0, 0x0

    .end local p1
    :goto_0
    return-object v0

    .line 2312
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1
    const v1, 0x7f030013

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2315
    .restart local p1
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    .end local p1
    const v1, 0x7f030011

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher2/HomeFragment;->createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disableHardwareLayers()V
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->disableHardwareLayers()V

    .line 973
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 2276
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 2277
    .local v0, r:Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2282
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2285
    .end local v0           #r:Z
    :cond_1
    :goto_0
    return v0

    .line 2283
    .restart local v0       #r:Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 498
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 500
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 501
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 502
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->drawShadows(Landroid/graphics/Canvas;)V

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 505
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 506
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    if-lez v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 508
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 509
    .local v0, p:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 510
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 511
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 513
    .end local v0           #p:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public drawChildren(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->draw(Landroid/graphics/Canvas;)V

    .line 642
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->enableHardwareLayers()V

    .line 969
    return-void
.end method

.method estimateDropCell(IIII[I)V
    .locals 7
    .parameter "originX"
    .parameter "originY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1136
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1137
    .local v1, countX:I
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1141
    .local v2, countY:I
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellRounded(II[I)V

    .line 1144
    aget v4, p5, v5

    add-int/2addr v4, p3

    sub-int v3, v4, v1

    .line 1145
    .local v3, rightOverhang:I
    if-lez v3, :cond_0

    .line 1146
    aget v4, p5, v5

    sub-int/2addr v4, v3

    aput v4, p5, v5

    .line 1148
    :cond_0
    aget v4, p5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v5

    .line 1149
    aget v4, p5, v6

    add-int/2addr v4, p4

    sub-int v0, v4, v2

    .line 1150
    .local v0, bottomOverhang:I
    if-lez v0, :cond_1

    .line 1151
    aget v4, p5, v6

    sub-int/2addr v4, v0

    aput v4, p5, v6

    .line 1153
    :cond_1
    aget v4, p5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v6

    .line 1154
    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1341
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([III)Z
    .locals 6
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v4, -0x1

    .line 1358
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 13
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 1375
    const/4 v3, 0x0

    .line 1377
    .local v3, foundCell:Z
    :goto_0
    const/4 v6, 0x0

    .line 1378
    .local v6, startX:I
    if-ltz p4, :cond_0

    .line 1379
    add-int/lit8 v10, p2, -0x1

    sub-int v10, p4, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1381
    :cond_0
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v11, p2, -0x1

    sub-int v1, v10, v11

    .line 1382
    .local v1, endX:I
    if-ltz p4, :cond_1

    .line 1383
    add-int/lit8 v10, p2, -0x1

    add-int v11, p4, v10

    const/4 v10, 0x1

    if-ne p2, v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    add-int/2addr v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1385
    :cond_1
    const/4 v7, 0x0

    .line 1386
    .local v7, startY:I
    if-ltz p5, :cond_2

    .line 1387
    add-int/lit8 v10, p3, -0x1

    sub-int v10, p5, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1389
    :cond_2
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v11, p3, -0x1

    sub-int v2, v10, v11

    .line 1390
    .local v2, endY:I
    if-ltz p5, :cond_3

    .line 1391
    add-int/lit8 v10, p3, -0x1

    add-int v11, p5, v10

    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1394
    :cond_3
    move v9, v7

    .local v9, y:I
    :goto_3
    if-ge v9, v2, :cond_d

    if-nez v3, :cond_d

    .line 1396
    move v8, v6

    .local v8, x:I
    :goto_4
    if-ge v8, v1, :cond_c

    .line 1397
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-ge v4, p2, :cond_a

    .line 1398
    const/4 v5, 0x0

    .local v5, j:I
    :goto_6
    move/from16 v0, p3

    if-ge v5, v0, :cond_9

    .line 1399
    sget-boolean v10, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v10

    if-eqz v10, :cond_7

    .line 1400
    add-int v10, v9, v5

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    add-int v11, v8, v4

    add-int v12, v9, v5

    invoke-interface {v10, v11, v12}, Lcom/android/launcher2/CellPositioner;->isOccupied(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1402
    :cond_4
    add-int/2addr v8, v4

    .line 1396
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1383
    .end local v2           #endY:I
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #startY:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 1391
    .restart local v2       #endY:I
    .restart local v7       #startY:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 1406
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_7
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    add-int v11, v8, v4

    add-int v12, v9, v5

    invoke-interface {v10, v11, v12}, Lcom/android/launcher2/CellPositioner;->isOccupied(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1409
    add-int/2addr v8, v4

    .line 1410
    goto :goto_7

    .line 1398
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1397
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1415
    .end local v5           #j:I
    :cond_a
    if-eqz p1, :cond_b

    .line 1416
    const/4 v10, 0x0

    aput v8, p1, v10

    .line 1417
    const/4 v10, 0x1

    aput v9, p1, v10

    .line 1419
    :cond_b
    const/4 v3, 0x1

    .line 1394
    .end local v4           #i:I
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1423
    .end local v8           #x:I
    :cond_d
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_e

    const/4 v10, -0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_e

    .line 1434
    return v3

    .line 1428
    :cond_e
    const/16 p4, -0x1

    .line 1429
    const/16 p5, -0x1

    .line 1430
    goto/16 :goto_0
.end method

.method findDragCell(Lcom/android/launcher2/DragState;II[I[I)V
    .locals 7
    .parameter "dragState"
    .parameter "x"
    .parameter "y"
    .parameter "resXY"
    .parameter "resSpan"

    .prologue
    const/high16 v6, 0x4000

    .line 1888
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v4, 0x0

    int-to-float v5, p2

    aput v5, v0, v4

    .line 1889
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v4, 0x1

    int-to-float v5, p3

    aput v5, v0, v4

    .line 1891
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 1892
    .local v1, i:Lcom/android/launcher2/BaseItem;
    int-to-float v0, p2

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v2, v0

    .line 1893
    .local v2, _x:I
    int-to-float v0, p3

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v3, v0

    .line 1895
    .local v3, _y:I
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner;->updateDeltasForDrag(Lcom/android/launcher2/BaseItem;II[I[I)V

    .line 1896
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v4}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DeltaVisualizer;->updateForDeltas(Ljava/util/List;)V

    .line 1897
    return-void
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 6
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner;->findNearestVacantArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1633
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1643
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    return-object v0
.end method

.method getContainer()Lcom/android/launcher2/CellLayoutContainer;
    .locals 2

    .prologue
    .line 2323
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2324
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2325
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    goto :goto_0

    .line 2327
    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/CellLayoutContainer;

    .line 2328
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/HomeFragment;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x65

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x64

    goto :goto_0
.end method

.method getContentRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "r"

    .prologue
    .line 821
    if-nez p1, :cond_0

    .line 822
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 824
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 825
    .local v1, left:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    .line 826
    .local v3, top:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int v2, v4, v5

    .line 827
    .local v2, right:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 828
    .local v0, bottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 829
    return-object p1
.end method

.method public getContextualPageType()I
    .locals 1

    .prologue
    .line 2370
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCPType:I

    return v0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 1

    .prologue
    .line 1616
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredHeightForRows(I)I

    move-result v0

    return v0
.end method

.method public getDesiredHeightForRows(I)I
    .locals 3
    .parameter "aRows"

    .prologue
    .line 1608
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p1

    add-int v0, v1, v2

    .line 1609
    .local v0, height:I
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    if-lez v1, :cond_0

    .line 1610
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1611
    :cond_0
    return v0
.end method

.method public getDesiredWidth()I
    .locals 1

    .prologue
    .line 1595
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredWidthForColumns(I)I

    move-result v0

    return v0
.end method

.method public getDesiredWidthForColumns(I)I
    .locals 3
    .parameter "aCols"

    .prologue
    .line 1600
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int v0, v1, v2

    .line 1601
    .local v0, width:I
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    if-lez v1, :cond_0

    .line 1602
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1603
    :cond_0
    return v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 6
    .parameter "view"
    .parameter "expandability"

    .prologue
    const/4 v5, 0x1

    .line 1558
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1560
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aput v2, p2, v1

    .line 1561
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput v1, p2, v5

    .line 1562
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, p2, v1

    .line 1563
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, p2, v1

    .line 1566
    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1567
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v1, v1, -0x1

    aput v1, p2, v5

    .line 1568
    :cond_0
    return-void
.end method

.method getGapX()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method getGapY()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method public getHoverAlpha()F
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    return v0
.end method

.method public getHoverScale()F
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getItemAt(II)Lcom/android/launcher2/BaseItem;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageItemCount()I
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getScreen()I
    .locals 1

    .prologue
    .line 2332
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 2333
    const/4 v0, -0x1

    .line 2335
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 746
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 2
    .parameter "item"

    .prologue
    .line 1860
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 1861
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1862
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 1864
    :cond_0
    return-object v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/CellLayoutChildren;->setItemVisibility(Lcom/android/launcher2/BaseItem;I)V

    .line 1851
    return-void
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isOccupiedNoThrow(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1624
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher2/CellPositioner;->isOccupied(II)Z

    move-result v0

    .line 1627
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1814
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method abstract newCellPositioner()Lcom/android/launcher2/CellPositioner;
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 650
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 651
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 652
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 1443
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1447
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 1448
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1455
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1456
    return-void

    .line 1452
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    goto :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 42
    .parameter "event"

    .prologue
    .line 1931
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v33

    .line 1932
    .local v33, parent:Lcom/android/launcher2/CellLayoutContainer;
    if-nez v33, :cond_0

    const/4 v2, 0x0

    .line 2223
    :goto_0
    return v2

    .line 1934
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v2, :cond_1

    .line 1935
    move-object/from16 v0, v33

    instance-of v2, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 1938
    :cond_1
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_2

    .line 1939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1940
    const/4 v2, 0x0

    goto :goto_0

    .line 1950
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    .line 1951
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragState;

    .line 1953
    .local v3, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v12

    .line 1956
    .local v12, action:I
    const/4 v2, 0x4

    if-eq v12, v2, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1957
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 1958
    const/4 v2, 0x1

    goto :goto_0

    .line 1961
    :cond_4
    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    move-object/from16 v0, v33

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_5

    move-object/from16 v2, v33

    .line 1962
    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->pageEndMoving()V

    .line 1965
    :cond_5
    const/4 v2, 0x4

    if-eq v12, v2, :cond_6

    const/4 v2, 0x3

    if-eq v12, v2, :cond_6

    move-object/from16 v0, v33

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_6

    move-object/from16 v2, v33

    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1968
    const/4 v2, 0x1

    goto :goto_0

    .line 1971
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v4, v2

    .line 1972
    .local v4, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v5, v2

    .line 1974
    .local v5, y:I
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v39

    .line 1975
    .local v39, view:Landroid/view/View;
    const/4 v2, 0x1

    if-ne v12, v2, :cond_b

    .line 1976
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 1986
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v20

    .line 1987
    .local v20, dragItem:Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, v39

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move/from16 v27, v0

    .line 1995
    .local v27, isWidget:Z
    const/4 v2, 0x5

    if-ne v12, v2, :cond_7

    .line 1996
    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_7

    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v2, v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_7

    .line 1997
    iget-object v0, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/launcher2/CellLayout;

    .line 1998
    .local v29, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1999
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2004
    .end local v29           #l:Lcom/android/launcher2/CellLayout;
    :cond_7
    const/4 v2, 0x1

    if-ne v12, v2, :cond_c

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->getLocationInWindow([I)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    sub-int/2addr v4, v2

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x1

    aget v2, v2, v6

    sub-int/2addr v5, v2

    .line 2012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v6, 0x0

    int-to-float v7, v4

    aput v7, v2, v6

    .line 2013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v6, 0x1

    int-to-float v7, v5

    aput v7, v2, v6

    .line 2019
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x0

    aget v10, v2, v6

    .line 2020
    .local v10, spanX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x1

    aget v11, v2, v6

    .line 2023
    .local v11, spanY:I
    packed-switch v12, :pswitch_data_0

    .line 2042
    :cond_9
    :goto_3
    packed-switch v12, :pswitch_data_1

    .line 2222
    .end local v39           #view:Landroid/view/View;
    :cond_a
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 2223
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1984
    .end local v10           #spanX:I
    .end local v11           #spanY:I
    .end local v20           #dragItem:Lcom/android/launcher2/BaseItem;
    .end local v27           #isWidget:Z
    .restart local v39       #view:Landroid/view/View;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    goto :goto_1

    .line 2015
    .restart local v20       #dragItem:Lcom/android/launcher2/BaseItem;
    .restart local v27       #isWidget:Z
    :cond_c
    const/4 v2, 0x4

    if-eq v12, v2, :cond_8

    .line 2016
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)V

    goto :goto_2

    .line 2026
    .restart local v10       #spanX:I
    .restart local v11       #spanY:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2027
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v34, v0

    .line 2028
    .local v34, r:[I
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v28

    check-cast v28, Lcom/android/launcher2/HomeItem;

    .line 2029
    .local v28, item:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v2, v6, v1}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 2030
    const/4 v2, 0x0

    aget v2, v34, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int v4, v2, v6

    .line 2031
    const/4 v2, 0x1

    aget v2, v34, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int v5, v2, v6

    .line 2033
    move-object/from16 v0, v39

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v2, :cond_9

    .line 2034
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v32

    .line 2035
    .local v32, o:[I
    const/4 v2, 0x0

    aget v2, v32, v2

    add-int/2addr v4, v2

    .line 2036
    const/4 v2, 0x1

    aget v2, v32, v2

    add-int/2addr v5, v2

    goto :goto_3

    .line 2044
    .end local v28           #item:Lcom/android/launcher2/HomeItem;
    .end local v32           #o:[I
    .end local v34           #r:[I
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2045
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    if-ne v2, v6, :cond_d

    .line 2046
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 2047
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2050
    :cond_d
    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragStartedWithItem(Landroid/view/View;)V

    .line 2051
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    goto/16 :goto_4

    .line 2055
    :pswitch_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2057
    if-eqz v27, :cond_e

    move-object/from16 v24, v39

    .line 2058
    check-cast v24, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2059
    .local v24, hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2060
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;

    .line 2061
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowBuilder;->draw()V

    .line 2063
    move-object/from16 v0, v33

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_e

    move-object/from16 v41, v33

    .line 2064
    check-cast v41, Lcom/android/launcher2/Workspace;

    .line 2065
    .local v41, ws:Lcom/android/launcher2/Workspace;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    sget v6, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    move-object/from16 v0, v41

    invoke-virtual {v0, v10, v11, v2, v6}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2067
    .local v13, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->setDragOutline(Landroid/graphics/Bitmap;)V

    .line 2075
    .end local v13           #b:Landroid/graphics/Bitmap;
    .end local v24           #hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v41           #ws:Lcom/android/launcher2/Workspace;
    :cond_e
    iget-object v2, v3, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v2, :cond_a

    .line 2076
    const/16 v21, 0x1

    .line 2077
    .local v21, drawOutline:Z
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/FolderItem;

    if-nez v2, :cond_f

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/FolderIconView;

    if-nez v2, :cond_10

    const/16 v21, 0x1

    .line 2082
    :cond_f
    :goto_5
    if-eqz v21, :cond_11

    .line 2083
    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v6, p0

    move-object/from16 v7, v39

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto/16 :goto_4

    .line 2079
    :cond_10
    const/16 v21, 0x0

    goto :goto_5

    .line 2084
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    if-eqz v2, :cond_a

    .line 2085
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    goto/16 :goto_4

    .line 2091
    .end local v21           #drawOutline:Z
    :pswitch_3
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v22

    .line 2092
    .local v22, folder:Lcom/android/launcher2/Folder;
    if-eqz v22, :cond_12

    .line 2093
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    .line 2095
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2096
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_4

    .line 2099
    .end local v22           #folder:Lcom/android/launcher2/Folder;
    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2100
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2101
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 2102
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    .line 2103
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellLayout;->cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_4

    .line 2109
    :pswitch_5
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2111
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v16

    .line 2112
    .local v16, container:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v37

    .line 2114
    .local v37, screen:I
    const-wide/16 v6, -0x65

    cmp-long v2, v16, v6

    if-nez v2, :cond_15

    const/16 v18, 0x1

    .line 2115
    .local v18, containerIsHotSeat:Z
    :goto_6
    if-eqz v18, :cond_14

    move-object/from16 v2, v33

    .line 2116
    check-cast v2, Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v37

    .line 2119
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    const/4 v6, -0x1

    if-eq v2, v6, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aget v2, v2, v6

    const/4 v6, -0x1

    if-eq v2, v6, :cond_16

    const/16 v23, 0x1

    .line 2121
    .local v23, hasDroppableCell:Z
    :goto_7
    if-eqz v23, :cond_1e

    .line 2122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_17

    const/16 v40, 0x1

    .line 2123
    .local v40, wasPageEmpty:Z
    :goto_8
    move-object/from16 v0, v39

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_19

    .line 2124
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v28

    check-cast v28, Lcom/android/launcher2/HomeItem;

    .line 2125
    .restart local v28       #item:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    if-nez v2, :cond_18

    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_18

    .line 2126
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    check-cast v39, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .end local v39           #view:Landroid/view/View;
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v2}, Lcom/android/launcher2/CellPositioner;->cancel()V

    goto/16 :goto_4

    .line 2114
    .end local v18           #containerIsHotSeat:Z
    .end local v23           #hasDroppableCell:Z
    .end local v28           #item:Lcom/android/launcher2/HomeItem;
    .end local v40           #wasPageEmpty:Z
    .restart local v39       #view:Landroid/view/View;
    :cond_15
    const/16 v18, 0x0

    goto :goto_6

    .line 2119
    .restart local v18       #containerIsHotSeat:Z
    :cond_16
    const/16 v23, 0x0

    goto :goto_7

    .line 2122
    .restart local v23       #hasDroppableCell:Z
    :cond_17
    const/16 v40, 0x0

    goto :goto_8

    .line 2131
    .restart local v28       #item:Lcom/android/launcher2/HomeItem;
    .restart local v40       #wasPageEmpty:Z
    :cond_18
    move-object/from16 v0, v28

    iput v10, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2132
    move-object/from16 v0, v28

    iput v11, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2134
    .end local v28           #item:Lcom/android/launcher2/HomeItem;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v3, v0, v2, v6, v1}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;III)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2135
    move-object/from16 v0, v39

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_1a

    .line 2136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    move-object/from16 v2, v39

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v2, v0}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2139
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->commitDeltas()V

    .line 2142
    :cond_1b
    move-object/from16 v0, v33

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1c

    if-eqz v40, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v2, v33

    .line 2145
    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    .line 2148
    :cond_1c
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 2150
    move-object/from16 v0, v39

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_1d

    .line 2151
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Lcom/android/launcher2/CellLayout$LayoutParams;

    .local v30, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v36, v39

    .line 2152
    check-cast v36, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2153
    .local v36, resize_view:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/HomeWidgetItem;

    .line 2155
    .local v26, info:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v30

    iget v7, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v36 .. v36}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v26

    iget v9, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 2202
    .end local v16           #container:J
    .end local v18           #containerIsHotSeat:Z
    .end local v23           #hasDroppableCell:Z
    .end local v26           #info:Lcom/android/launcher2/HomeWidgetItem;
    .end local v30           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v36           #resize_view:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v37           #screen:I
    .end local v40           #wasPageEmpty:Z
    :cond_1d
    :goto_9
    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 2204
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v2, :cond_a

    .line 2205
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/SamsungAppWidgetInfo;

    invoke-virtual {v7, v2, v6}, Lcom/android/launcher2/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    goto/16 :goto_4

    .line 2160
    .restart local v16       #container:J
    .restart local v18       #containerIsHotSeat:Z
    .restart local v23       #hasDroppableCell:Z
    .restart local v37       #screen:I
    :cond_1e
    move-object/from16 v0, v33

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1d

    .line 2162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    move-object/from16 v41, v33

    .line 2163
    check-cast v41, Lcom/android/launcher2/Workspace;

    .line 2164
    .restart local v41       #ws:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v41 .. v41}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v19

    .local v19, count:I
    const/high16 v38, -0x8000

    .line 2167
    .local v38, snapToPage:I
    const/16 v35, 0x0

    .line 2169
    .local v35, reachedEnd:Z
    add-int/lit8 v25, v37, 0x1

    .line 2170
    .local v25, i:I
    :goto_a
    move/from16 v0, v25

    move/from16 v1, v19

    if-lt v0, v1, :cond_1f

    .line 2171
    const/16 v25, 0x0

    .line 2172
    const/16 v35, 0x1

    .line 2174
    :cond_1f
    if-eqz v35, :cond_21

    move/from16 v0, v25

    move/from16 v1, v37

    if-lt v0, v1, :cond_21

    .line 2188
    :goto_b
    const/high16 v2, -0x8000

    move/from16 v0, v38

    if-ne v2, v0, :cond_20

    .line 2189
    const/4 v2, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->newPage(Z)I

    move-result v31

    .line 2190
    .local v31, newPage:I
    const/high16 v2, -0x8000

    move/from16 v0, v31

    if-eq v0, v2, :cond_20

    .line 2191
    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout;

    .line 2192
    .local v15, cl:Lcom/android/launcher2/CellLayout;
    move/from16 v0, v31

    invoke-direct {v15, v3, v4, v5, v0}, Lcom/android/launcher2/CellLayout;->canAcceptDrop(Lcom/android/launcher2/DragState;III)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2193
    move/from16 v38, v31

    .line 2197
    .end local v15           #cl:Lcom/android/launcher2/CellLayout;
    .end local v31           #newPage:I
    :cond_20
    const/high16 v2, -0x8000

    move/from16 v0, v38

    if-eq v2, v0, :cond_1d

    .line 2198
    const/4 v2, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->snapToPageAfterLayout(II)V

    goto/16 :goto_9

    .line 2178
    :cond_21
    move-object/from16 v0, v41

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2179
    .local v14, child:Landroid/view/View;
    if-eqz v14, :cond_22

    instance-of v2, v14, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_22

    move-object v15, v14

    .line 2180
    check-cast v15, Lcom/android/launcher2/CellLayout;

    .line 2181
    .restart local v15       #cl:Lcom/android/launcher2/CellLayout;
    move/from16 v0, v25

    invoke-direct {v15, v3, v4, v5, v0}, Lcom/android/launcher2/CellLayout;->canAcceptDrop(Lcom/android/launcher2/DragState;III)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2182
    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->commitDeltas()V

    .line 2183
    move/from16 v38, v25

    .line 2184
    goto :goto_b

    .line 2169
    .end local v15           #cl:Lcom/android/launcher2/CellLayout;
    :cond_22
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 2211
    .end local v14           #child:Landroid/view/View;
    .end local v16           #container:J
    .end local v18           #containerIsHotSeat:Z
    .end local v19           #count:I
    .end local v23           #hasDroppableCell:Z
    .end local v25           #i:I
    .end local v35           #reachedEnd:Z
    .end local v37           #screen:I
    .end local v38           #snapToPage:I
    .end local v41           #ws:Lcom/android/launcher2/Workspace;
    :pswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 2214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2215
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2216
    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 2217
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 2218
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 2219
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellLayout;->cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_4

    .line 2023
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 2042
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method onDragExit()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1462
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v0}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    .line 1467
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1468
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1471
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1473
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 1474
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1483
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v3, v0, v2

    .line 1484
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 1485
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1486
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1488
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 1489
    return-void

    .line 1478
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->postInvalidate()V

    .line 442
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_4

    .line 443
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 444
    .local v9, countX:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 447
    .local v10, countY:I
    const/4 v8, 0x0

    .line 448
    .local v8, countContextualY:I
    const/4 v7, 0x0

    .line 449
    .local v7, contextualYpadding:I
    sget-boolean v19, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v19

    if-eqz v19, :cond_1

    .line 450
    const/4 v8, 0x1

    .line 451
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v7, v19, v20

    .line 454
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 455
    .local v11, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 456
    .local v16, width:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 458
    .local v12, height:I
    const/high16 v19, 0x437f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v16, 0x2

    sub-int v17, v19, v20

    .line 461
    .local v17, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v17, v17, v19

    .line 462
    const/4 v6, 0x1

    .local v6, col:I
    :goto_0
    add-int/lit8 v19, v9, -0x1

    move/from16 v0, v19

    if-gt v6, v0, :cond_4

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v12, 0x2

    sub-int v18, v19, v20

    .line 464
    .local v18, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 465
    sget-boolean v19, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v19

    if-eqz v19, :cond_2

    .line 466
    add-int v18, v18, v7

    .line 467
    add-int/lit8 v15, v8, 0x1

    .local v15, row:I
    :goto_1
    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    if-gt v15, v0, :cond_3

    .line 468
    add-int v19, v17, v16

    add-int v20, v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 467
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 473
    .end local v15           #row:I
    :cond_2
    const/4 v15, 0x1

    .restart local v15       #row:I
    :goto_2
    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    if-gt v15, v0, :cond_3

    .line 474
    add-int v19, v17, v16

    add-int v20, v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 475
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 473
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 479
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v17, v17, v19

    .line 462
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 483
    .end local v6           #col:I
    .end local v7           #contextualYpadding:I
    .end local v8           #countContextualY:I
    .end local v9           #countX:I
    .end local v10           #countY:I
    .end local v11           #d:Landroid/graphics/drawable/Drawable;
    .end local v12           #height:I
    .end local v15           #row:I
    .end local v16           #width:I
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 484
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 485
    .local v14, paint:Landroid/graphics/Paint;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v19, v0

    aget v4, v19, v13

    .line 487
    .local v4, alpha:F
    const/16 v19, 0x0

    cmpl-float v19, v4, v19

    if-lez v19, :cond_5

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 489
    .local v5, b:Landroid/graphics/Bitmap;
    const/high16 v19, 0x3f00

    add-float v19, v19, v4

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 490
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 485
    .end local v5           #b:Landroid/graphics/Bitmap;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 494
    .end local v4           #alpha:F
    .end local v13           #i:I
    .end local v14           #paint:Landroid/graphics/Paint;
    :cond_6
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1499
    if-eqz p1, :cond_0

    .line 1500
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1501
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 1502
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1504
    .end local v0           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 1841
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 837
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 838
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    const v0, 0x7f0700aa

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    .line 841
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 716
    .local v0, action:I
    if-nez v0, :cond_0

    .line 717
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    const/4 v1, 0x1

    .line 727
    :goto_0
    return v1

    .line 724
    :cond_1
    if-nez v0, :cond_2

    .line 725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    .line 727
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v3

    .line 895
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 896
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 897
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v6, :cond_0

    .line 898
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int v8, p4, p2

    iget v9, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int/2addr v8, v9

    sub-int v9, p5, p3

    iget v10, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 895
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 901
    :cond_0
    sget-boolean v6, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v6, :cond_1

    instance-of v6, v0, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 903
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v2

    .line 904
    .local v2, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 906
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 907
    .local v5, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v8, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v8, v9

    iget v9, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 912
    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 846
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 847
    .local v18, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 849
    .local v19, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 850
    .local v10, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 852
    .local v11, heightSpecSize:I
    if-nez v18, :cond_0

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v19

    .line 855
    :cond_0
    if-nez v10, :cond_1

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v11

    .line 860
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v21, v0

    mul-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v20, v0

    if-lez v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    :goto_0
    sub-int v6, v21, v20

    .line 861
    .local v6, childWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v21, v0

    mul-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v20, v0

    if-lez v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    :goto_1
    sub-int v5, v21, v20

    .line 863
    .local v5, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    move/from16 v21, v0

    sub-int v15, v20, v21

    .line 864
    .local v15, myContentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    .line 865
    .local v14, myContentHeight:I
    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 866
    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    move/from16 v20, v0

    add-int v20, v20, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    move/from16 v21, v0

    add-int v17, v20, v21

    .line 868
    .local v17, myWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    move/from16 v20, v0

    add-int v20, v20, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 870
    .local v16, myHeight:I
    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 871
    .local v7, childWidthMeasureSpec:I
    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 872
    .local v8, childheightMeasureSpec:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    .line 873
    .local v9, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v9, :cond_4

    .line 874
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 875
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V

    .line 873
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 860
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childWidth:I
    .end local v7           #childWidthMeasureSpec:I
    .end local v8           #childheightMeasureSpec:I
    .end local v9           #count:I
    .end local v12           #i:I
    .end local v14           #myContentHeight:I
    .end local v15           #myContentWidth:I
    .end local v16           #myHeight:I
    .end local v17           #myWidth:I
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 861
    .restart local v6       #childWidth:I
    :cond_3
    const/16 v20, 0x0

    goto :goto_1

    .line 877
    .restart local v5       #childHeight:I
    .restart local v7       #childWidthMeasureSpec:I
    .restart local v8       #childheightMeasureSpec:I
    .restart local v9       #count:I
    .restart local v12       #i:I
    .restart local v14       #myContentHeight:I
    .restart local v15       #myContentWidth:I
    .restart local v16       #myHeight:I
    .restart local v17       #myWidth:I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v20, v0

    const/high16 v21, 0x4000

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->measureChild(Landroid/view/View;II)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 885
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 887
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    sub-int v20, v16, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 888
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 890
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_5
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1018
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 916
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 917
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 918
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 920
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    .line 921
    return-void
.end method

.method public onStateAnimationEnd(Lcom/android/launcher2/Workspace$State;)V
    .locals 10
    .parameter "state"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1868
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v0, :cond_0

    .line 1869
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v7

    .line 1870
    .local v7, parent:Lcom/android/launcher2/CellLayoutContainer;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1871
    .local v6, inv:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1872
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1873
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v0, v0, v9

    float-to-int v2, v0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v0, v0, v8

    float-to-int v3, v0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)V

    .line 1874
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    aget v4, v0, v9

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    aget v5, v0, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    .line 1877
    .end local v6           #inv:Landroid/graphics/Matrix;
    .end local v7           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_0
    iput-boolean v8, p0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    .line 1878
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 1879
    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 10
    .parameter "child"

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    .line 568
    .local v8, item:Lcom/android/launcher2/HomeItem;
    const-wide/16 v0, -0x64

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget v3, v8, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v8, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v6, v8, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v7

    .line 572
    .local v7, childId:I
    invoke-virtual {p1, v7}, Landroid/view/View;->setId(I)V

    .line 575
    .end local v7           #childId:I
    .end local v8           #item:Lcom/android/launcher2/HomeItem;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 576
    .local v9, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 577
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 751
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[IIIII)V

    .line 755
    :goto_0
    return-void

    .line 754
    :cond_0
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[IIIII)V

    goto :goto_0
.end method

.method pointToCellExact(II[IIIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "result"
    .parameter "x_lower_bound"
    .parameter "x_upper_bound"
    .parameter "y_lower_bound"
    .parameter "y_upper_bound"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 767
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 769
    .local v1, vStartPadding:I
    sub-int v2, p1, v0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    aput v2, p3, v5

    .line 770
    sub-int v2, p2, v1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    aput v2, p3, v6

    .line 772
    aget v2, p3, v5

    if-ge v2, p4, :cond_0

    aput p4, p3, v5

    .line 773
    :cond_0
    aget v2, p3, v5

    if-lt v2, p5, :cond_1

    add-int/lit8 v2, p5, -0x1

    aput v2, p3, v5

    .line 774
    :cond_1
    aget v2, p3, v6

    if-ge v2, p6, :cond_2

    aput p6, p3, v6

    .line 775
    :cond_2
    aget v2, p3, v6

    if-lt v2, p7, :cond_3

    add-int/lit8 v2, p7, -0x1

    aput v2, p3, v6

    .line 776
    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 785
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 786
    return-void
.end method

.method realRemoveView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 617
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 618
    return-void
.end method

.method rearrangeWorkspaceForSpace(Lcom/android/launcher2/BaseItem;IIII)Z
    .locals 6
    .parameter "ignoreItem"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner;->updateDeltasForSpace(Lcom/android/launcher2/BaseItem;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeltaVisualizer;->updateForDeltas(Ljava/util/List;)V

    .line 1902
    const/4 v0, 0x1

    .line 1904
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method refreshCellDimension()V
    .locals 5

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 292
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 593
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    .line 600
    :cond_0
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 950
    return-void
.end method

.method public removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 4

    .prologue
    .line 354
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 355
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 356
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 357
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 358
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 359
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_1

    .line 360
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 364
    :cond_0
    return-object v2

    .line 358
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 608
    instance-of v0, p1, Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 610
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 623
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 628
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 955
    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 604
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViews(II)V

    .line 633
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViewsInLayout(II)V

    .line 638
    return-void
.end method

.method public setAcceptsDrops(Z)V
    .locals 1
    .parameter "acceptsDrops"

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    if-eq v0, p1, :cond_0

    .line 585
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    .line 586
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 588
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setChildrenAlpha(F)V

    .line 1024
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1025
    return-void
.end method

.method public setBackgroundAlpha(FF)V
    .locals 1
    .parameter "alpha"
    .parameter "backgroundDarken"

    .prologue
    .line 976
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 977
    return-void
.end method

.method public setBackgroundAlpha(FFZ)V
    .locals 2
    .parameter "alpha"
    .parameter "backgroundDarken"
    .parameter "blend"

    .prologue
    .line 983
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 984
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 985
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 986
    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 987
    instance-of v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 988
    check-cast v1, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBackgroundDarken(F)V

    .line 989
    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p3}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBlend(Z)V

    .line 992
    :cond_0
    return-void
.end method

.method public setBackgroundBaseDarken(F)V
    .locals 2
    .parameter "a"

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 996
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_0

    .line 997
    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBaseDarken(F)V

    .line 999
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    const/high16 v1, 0x437f

    .line 1003
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1004
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_1

    .line 1005
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1011
    :goto_0
    return-void

    .line 1008
    :cond_0
    sget v0, Lcom/android/launcher2/ContextualPageManager;->CP_DARKEN_AMOUNT:F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundBaseDarken(F)V

    goto :goto_0

    .line 1010
    :cond_1
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method setCellHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 271
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 272
    return-void
.end method

.method setCellWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 267
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 268
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 926
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 931
    return-void
.end method

.method public setContextualPageType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2374
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCPType:I

    .line 2375
    return-void
.end method

.method public setCrosshairsVisibility(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->cancel()V

    .line 306
    :cond_0
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 307
    return-void
.end method

.method public setEmptyMessageVisibility(I)V
    .locals 1
    .parameter "show"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :cond_0
    return-void
.end method

.method setGapX(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 275
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    .line 276
    return-void
.end method

.method setGapY(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 283
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    .line 284
    return-void
.end method

.method public setGridSize(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 332
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 333
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    .line 335
    return-void
.end method

.method public setHomeFragment(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter "home"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 142
    return-void
.end method

.method public setHoverAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 430
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    .line 431
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 432
    return-void
.end method

.method public setHoverScale(F)V
    .locals 1
    .parameter "scaleFactor"

    .prologue
    .line 412
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 413
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    .line 414
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    .line 415
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 419
    :cond_0
    return-void
.end method

.method public setIsDefaultDropTarget(Z)V
    .locals 1
    .parameter "isDefaultDropTarget"

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    if-eq v0, p1, :cond_0

    .line 379
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    .line 380
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 382
    :cond_0
    return-void
.end method

.method setIsDragOccuring(Z)V
    .locals 1
    .parameter "isDragOccuring"

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    if-eq v0, p1, :cond_0

    .line 386
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    .line 387
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 389
    :cond_0
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .parameter "isDragOverlapping"

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 393
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 394
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 396
    :cond_0
    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIJ)V
    .locals 9
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "screen"
    .parameter "container"

    .prologue
    .line 1573
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    move-object v1, p1

    .line 1575
    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 1576
    .local v1, hitem:Lcom/android/launcher2/HomeItem;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    move-wide v2, p5

    move v4, p4

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 1579
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v8

    .line 1580
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 1581
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1582
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1583
    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1584
    iget v0, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 1585
    iget v0, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 1586
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 1587
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->requestLayout()V

    .line 1590
    .end local v1           #hitem:Lcom/android/launcher2/HomeItem;
    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v8           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 581
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2303
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 2304
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 2305
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 534
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2
    .parameter "r"
    .parameter "left"

    .prologue
    .line 338
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 344
    :cond_0
    :goto_0
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 345
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 346
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 347
    return-void

    .line 340
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 12
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 656
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 657
    .local v5, frame:Landroid/graphics/Rect;
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mScrollX:I

    add-int v8, p1, v10

    .line 658
    .local v8, x:I
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mScrollY:I

    add-int v9, p2, v10

    .line 659
    .local v9, y:I
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 661
    .local v3, count:I
    const/4 v4, 0x0

    .line 662
    .local v4, found:Z
    add-int/lit8 v6, v3, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_1

    .line 663
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10, v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 664
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 666
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_4

    :cond_0
    iget-boolean v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v10, :cond_4

    .line 668
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 673
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v11, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 675
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 676
    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 677
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 678
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 679
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 680
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 681
    const/4 v4, 0x1

    .line 687
    .end local v2           #child:Landroid/view/View;
    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 689
    if-nez v4, :cond_2

    .line 690
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 691
    .local v1, cellXY:[I
    invoke-virtual {p0, v8, v9, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 693
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 694
    const/4 v10, 0x0

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 695
    const/4 v10, 0x1

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 696
    const/4 v10, 0x1

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 697
    const/4 v10, 0x1

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 700
    .end local v1           #cellXY:[I
    :cond_2
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v10, :cond_3

    .line 701
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 702
    .restart local v1       #cellXY:[I
    invoke-virtual {p0, v8, v9, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 703
    const/4 v10, 0x0

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellX:I

    .line 704
    const/4 v10, 0x1

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    .line 706
    .end local v1           #cellXY:[I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 707
    return-void

    .line 662
    .restart local v2       #child:Landroid/view/View;
    .restart local v7       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/CellLayoutChildren;->setItemVisibility(Lcom/android/launcher2/BaseItem;I)V

    .line 1846
    return-void
.end method

.method public spanToPixel(II)[I
    .locals 5
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1301
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 31
    .parameter "v"
    .parameter "dragOutline"
    .parameter "nearest"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1160
    sget-boolean v23, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v23, :cond_1

    .line 1161
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1298
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1165
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    .line 1166
    .local v11, l:[I
    const/16 v23, 0x0

    aget v23, p3, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/16 v23, 0x1

    aget v23, p3, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1167
    const/16 v23, 0x0

    aget v23, v11, v23

    const/16 v24, 0x0

    aget v24, p3, v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v23, 0x1

    aget v23, v11, v23

    const/16 v24, 0x1

    aget v24, p3, v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v23, 0x2

    aget v23, v11, v23

    move/from16 v0, v23

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    const/16 v23, 0x3

    aget v23, v11, v23

    move/from16 v0, v23

    move/from16 v1, p5

    if-eq v0, v1, :cond_0

    .line 1170
    :cond_2
    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, p3, v24

    aput v24, v11, v23

    .line 1171
    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, p3, v24

    aput v24, v11, v23

    .line 1172
    const/16 v23, 0x2

    aput p4, v11, v23

    .line 1173
    const/16 v23, 0x3

    aput p5, v11, v23

    .line 1175
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0

    .line 1182
    :cond_3
    if-eqz p2, :cond_7

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    move-object/from16 v19, v0

    .line 1185
    .local v19, topLeft:[I
    const/16 v23, 0x0

    aget v23, p3, v23

    const/16 v24, 0x1

    aget v24, p3, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 1187
    const/16 v23, 0x0

    aget v12, v19, v23

    .line 1188
    .local v12, left:I
    const/16 v23, 0x1

    aget v18, v19, v23

    .line 1189
    .local v18, top:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .local v22, width:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1195
    .local v7, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 1196
    .local v6, dm:Landroid/util/DisplayMetrics;
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 1197
    const/4 v10, 0x0

    .local v10, iw:I
    const/4 v9, 0x0

    .line 1198
    .local v9, ih:I
    const/16 v21, 0x0

    .local v21, vw:I
    const/16 v20, 0x0

    .line 1200
    .local v20, vh:I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v23, v0

    if-nez v23, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 1201
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v16

    .line 1202
    .local v16, parent:Lcom/android/launcher2/CellLayoutContainer;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 1203
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v13, v4

    .local v13, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v13, :cond_5

    aget-object v5, v4, v8

    .line 1204
    .local v5, d:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_8

    .line 1205
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 1206
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 1210
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1211
    .local v17, res:Landroid/content/res/Resources;
    const v23, 0x7f0c002b

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1212
    const v23, 0x7f0c002c

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1213
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    .line 1215
    sub-int v23, v20, v9

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v18, v18, v23

    .line 1284
    .end local v4           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v8           #i$:I
    .end local v9           #ih:I
    .end local v10           #iw:I
    .end local v13           #len$:I
    .end local v16           #parent:Lcom/android/launcher2/CellLayoutContainer;
    .end local v17           #res:Landroid/content/res/Resources;
    .end local v20           #vh:I
    .end local v21           #vw:I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1285
    .local v14, oldIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v23, v0

    aget-object v23, v23, v14

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1286
    add-int/lit8 v23, v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    rem-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    add-int v24, v12, v22

    add-int v25, v18, v7

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1295
    .end local v6           #dm:Landroid/util/DisplayMetrics;
    .end local v7           #height:I
    .end local v12           #left:I
    .end local v14           #oldIndex:I
    .end local v18           #top:I
    .end local v19           #topLeft:[I
    .end local v22           #width:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto/16 :goto_0

    .line 1203
    .restart local v4       #arr$:[Landroid/graphics/drawable/Drawable;
    .restart local v5       #d:Landroid/graphics/drawable/Drawable;
    .restart local v6       #dm:Landroid/util/DisplayMetrics;
    .restart local v7       #height:I
    .restart local v8       #i$:I
    .restart local v9       #ih:I
    .restart local v10       #iw:I
    .restart local v12       #left:I
    .restart local v13       #len$:I
    .restart local v16       #parent:Lcom/android/launcher2/CellLayoutContainer;
    .restart local v18       #top:I
    .restart local v19       #topLeft:[I
    .restart local v20       #vh:I
    .restart local v21       #vw:I
    .restart local v22       #width:I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1218
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .restart local v17       #res:Landroid/content/res/Resources;
    :cond_9
    sub-int v23, v21, v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v12, v12, v23

    goto/16 :goto_2

    .end local v4           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v8           #i$:I
    .end local v13           #len$:I
    .end local v17           #res:Landroid/content/res/Resources;
    .restart local p1
    :cond_a
    move-object/from16 v23, p1

    .line 1223
    check-cast v23, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .restart local v4       #arr$:[Landroid/graphics/drawable/Drawable;
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_3
    if-ge v8, v13, :cond_b

    aget-object v5, v4, v8

    .line 1224
    .restart local v5       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_c

    .line 1225
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 1226
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 1230
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1231
    .restart local v17       #res:Landroid/content/res/Resources;
    const v23, 0x7f0c0013

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1232
    const v23, 0x7f0c0014

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1234
    sub-int v23, v21, v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v12, v12, v23

    .line 1235
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v23, v0

    sub-int v25, v20, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3feb333333333333L

    mul-double v27, v27, v29

    sub-double v25, v25, v27

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_2

    .line 1223
    .end local v17           #res:Landroid/content/res/Resources;
    .restart local v5       #d:Landroid/graphics/drawable/Drawable;
    .restart local p1
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1238
    .end local v4           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .end local v8           #i$:I
    .end local v13           #len$:I
    .end local v16           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v23, v0

    mul-int v23, v23, p4

    add-int/lit8 v24, p4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    add-int v22, v23, v24

    .line 1239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v23, v0

    mul-int v23, v23, p5

    add-int/lit8 v24, p5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    add-int v7, v23, v24

    .line 1241
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1243
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    int-to-float v0, v7

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1245
    .local v5, d:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v7, v0

    goto/16 :goto_2

    .line 1253
    .end local v5           #d:F
    .end local v9           #ih:I
    .end local v10           #iw:I
    .end local v20           #vh:I
    .end local v21           #vw:I
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v16

    .line 1255
    .restart local v16       #parent:Lcom/android/launcher2/CellLayoutContainer;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 1256
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    .line 1257
    .local v15, p:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    add-int v12, v12, v23

    .line 1258
    add-int/lit8 v23, v15, -0x6

    add-int v18, v18, v23

    .line 1259
    goto/16 :goto_2

    .line 1261
    .end local v15           #p:I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    sget v24, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    add-int v15, v23, v24

    .line 1263
    .restart local v15       #p:I
    sget v23, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    add-int/lit8 v23, v23, -0x3

    add-int v12, v12, v23

    .line 1264
    add-int/lit8 v23, v15, -0x3

    add-int v18, v18, v23

    goto/16 :goto_2

    .line 1267
    .end local v15           #p:I
    .end local v16           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_10
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 1271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v23, v0

    mul-int v23, v23, p4

    add-int/lit8 v24, p4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    add-int v22, v23, v24

    .line 1272
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v23, v0

    mul-int v23, v23, p5

    add-int/lit8 v24, p5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    add-int v7, v23, v24

    .line 1274
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1276
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    int-to-float v0, v7

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1278
    .restart local v5       #d:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v7, v0

    goto/16 :goto_2
.end method
