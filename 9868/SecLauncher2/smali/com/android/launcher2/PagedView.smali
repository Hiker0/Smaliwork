.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$LayerOptions;,
        Lcom/android/launcher2/PagedView$SavedState;,
        Lcom/android/launcher2/PagedView$ScrollInterpolator;,
        Lcom/android/launcher2/PagedView$PageSwitchListener;,
        Lcom/android/launcher2/PagedView$PageInfo;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field private static final DEBUG:Z = false

.field public static final DIR_LEFT:I = 0x2

.field public static final DIR_RIGHT:I = 0x3

.field public static final DIR_SHORTEST:I = 0x1

.field private static final HOVERSCROLL_SPEED:J = 0x12cL

.field protected static final INVALID_PAGE:I = -0x80000000

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x898

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MOTION_ENGINE_LOG:Ljava/lang/String; = "MotionEngine"

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field public static final PAGE_BG_ALPHA:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGE_HOVER_WIDTH:F = 15.0f

.field public static final PAGE_ZOOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PANNING_THRESHOLD_MULTIPLIER:I = 0xf

.field private static final PANNING_THRESHOLD_SHIFTER:I = 0x28

.field protected static final SNAP_STATE_ADJACENT:I = 0x0

.field protected static final SNAP_STATE_FIRST_TO_LAST:I = 0x1

.field protected static final SNAP_STATE_LAST_TO_FIRST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Launcher.PagedView"

.field protected static final TOUCH_STATE_DRIFTING:I = 0x4

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static sInclusivePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final ENABLE_DVFS_ONSCROLL:Z

.field protected final PAGE_SNAP_ANIMATION_DURATION:I

.field private mAccumulatedDelta:D

.field private mAccumulatedDx:I

.field private mAccumulatedDy:I

.field private mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mBlockHardwareLayers:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCellGapX:I

.field protected mCellGapY:I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mCurrentRotation:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field private mDir:I

.field private mDirtyPageAlpha:Z

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mDriftSlop:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field private mFromFocusHelper:Z

.field private mHardwarePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mHideItems:Z

.field private mInGesture:Z

.field protected mInvalidatedByTouch:Z

.field protected mIsDataReady:Z

.field protected mIsOverScrolled:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field protected mLastPageNotify:I

.field private mLastScreenCenter:I

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mNextPage:I

.field protected mPageBackgroundAlpha:F

.field private mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

.field protected mPageIndicatorTop:I

.field protected mPagePaddingBottom:I

.field protected mPagePaddingLeft:I

.field protected mPagePaddingRight:I

.field protected mPagePaddingTop:I

.field private mPageScrollEndTime:J

.field protected mPageSpacing:I

.field protected mPageSpacingHint:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field protected mPageTransformsDirty:Z

.field protected mPageZoom:F

.field protected mPagesPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPagingTouchSlop:I

.field protected mPanningBasis:D

.field protected mPanningStopDelta:D

.field private mScrollByHover:Z

.field private mScrollByTouchMove:Z

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSmoothingTime:F

.field protected mSnapState:I

.field private mSnapToPageAfterLayout:I

.field private mSnapToPageAfterLayoutDir:I

.field protected mSnapVelocity:I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVisiblePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private motionTrackingIsCurrent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const-class v0, Lcom/android/launcher2/PagedView;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageZoom"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_ZOOM:Landroid/util/Property;

    .line 94
    const-class v0, Lcom/android/launcher2/PagedView;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageBackgroundAlpha"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_BG_ALPHA:Landroid/util/Property;

    .line 2412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    .line 2820
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    .line 109
    const/16 v5, 0x1f4

    iput v5, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 114
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 115
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->ENABLE_DVFS_ONSCROLL:Z

    .line 118
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 119
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 130
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 140
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 144
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    .line 148
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 161
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 162
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 163
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    .line 165
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    .line 166
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 171
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/launcher2/PagedView;->mDir:I

    .line 173
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mFromFocusHelper:Z

    .line 174
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    .line 175
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mInvalidatedByTouch:Z

    .line 198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    .line 199
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    .line 206
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 210
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 213
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 217
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 221
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 223
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 224
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    .line 227
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 232
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 233
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    .line 241
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 246
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 247
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mPageScrollEndTime:J

    .line 2027
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 2770
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 2784
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    .line 2821
    const-wide/high16 v5, 0x404e

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    .line 2824
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 2825
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDy:I

    .line 2826
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDx:I

    .line 2827
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    .line 264
    sget-object v5, Lcom/sec/android/app/launcher/R$styleable;->PagedView:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 267
    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 268
    const/16 v5, 0x8

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 269
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    .line 271
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    .line 273
    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    .line 275
    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    .line 277
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    .line 279
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    .line 281
    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 282
    .local v4, pageIndicatorTop:I
    const/16 v5, 0xa

    const/16 v6, 0xa

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 283
    .local v2, pageIndicatorGap:I
    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 284
    .local v3, pageIndicatorMaxVisible:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    iput v4, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    .line 287
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 290
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 291
    new-instance v5, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    invoke-direct {v7}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v5, v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 292
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 294
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    .line 296
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 297
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    .line 299
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    .line 300
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    .line 302
    new-instance v5, Lcom/android/launcher2/PageIndicatorManager;

    invoke-direct {v5, p0, v4, v2, v3}, Lcom/android/launcher2/PageIndicatorManager;-><init>(Lcom/android/launcher2/PagedView;III)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    .line 304
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->setSaveEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/PagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/PagedView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/PagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/PagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2011
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2013
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2014
    return-void
.end method

.method private canOverScroll()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 2173
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 2174
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 2175
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V
    .locals 4
    .parameter "canvas"
    .parameter "pageInfo"
    .parameter "drawingTime"

    .prologue
    const/4 v3, 0x0

    .line 1284
    iget v2, p2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1285
    .local v0, page:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1290
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Draw page is NULL. Report this."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1292
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1293
    const-string v2, "Launcher.PagedView"

    const-string v3, "Page visibility not in sync with list of visible pages. This MUST be investigated"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :goto_0
    return-void

    .line 1296
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-eqz v2, :cond_2

    .line 1297
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v1

    .line 1301
    .local v1, scrollProgress:F
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1302
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1303
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->updatePageTransform(Landroid/view/View;F)V

    .line 1304
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1305
    iget v2, p2, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1306
    iget v2, p2, Lcom/android/launcher2/PagedView$PageInfo;->mTransY:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1309
    .end local v1           #scrollProgress:F
    :cond_2
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method private dumpScroller()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollerStartX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerCurrX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerFinalX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerDur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollingFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpVisiblePages()V
    .locals 0

    .prologue
    .line 1281
    return-void
.end method

.method private getCenterOfViewRelative(Landroid/view/View;)I
    .locals 7
    .parameter "page"

    .prologue
    .line 2089
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2090
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    .line 2091
    .local v3, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2092
    .local v4, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2093
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 2096
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2098
    .local v1, left:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x320

    if-ne v5, v6, :cond_1

    .line 2099
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    div-int/lit8 v6, v4, 0xa

    add-int v1, v5, v6

    .line 2101
    :cond_1
    sub-int v5, v1, v3

    div-int/lit8 v6, v4, 0x2

    add-int v2, v5, v6

    .line 2105
    .local v2, res:I
    return v2
.end method

.method private getLowerBoundForScrollX(I)I
    .locals 5
    .parameter "scrollX"

    .prologue
    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, adjustedScrollX:I
    const/4 v2, 0x0

    .line 807
    .local v2, res:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v1

    .line 809
    .local v1, pageTotWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 810
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 811
    div-int v3, v0, v1

    mul-int v2, v3, v1

    .line 820
    :goto_0
    return v2

    .line 813
    :cond_0
    move v0, p1

    .line 814
    if-gez v0, :cond_1

    .line 815
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    neg-int v2, v3

    goto :goto_0

    .line 817
    :cond_1
    div-int v3, v0, v1

    mul-int v2, v3, v1

    goto :goto_0
.end method

.method private getNearestScrollXForPage(III)I
    .locals 9
    .parameter "pageIndex"
    .parameter "scrollX"
    .parameter "dir"

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v4

    .line 703
    .local v4, pageTotWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 704
    mul-int v5, p1, v4

    .line 734
    :cond_0
    :goto_0
    return v5

    .line 706
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v6

    .line 707
    .local v6, startScrollX:I
    const/4 v1, 0x0

    .line 708
    .local v1, multiplier:I
    packed-switch p3, :pswitch_data_0

    .line 720
    add-int/2addr v6, v4

    .line 721
    const/4 v1, 0x1

    .line 724
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    .line 725
    .local v3, pageCount:I
    move v5, p2

    .line 726
    .local v5, res:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 727
    mul-int v8, v0, v4

    mul-int/2addr v8, v1

    add-int v7, v6, v8

    .line 728
    .local v7, temp:I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v2

    .line 729
    .local v2, pageAtSlot:I
    if-ne v2, p1, :cond_2

    .line 730
    move v5, v7

    .line 731
    goto :goto_0

    .line 710
    .end local v0           #i:I
    .end local v2           #pageAtSlot:I
    .end local v3           #pageCount:I
    .end local v5           #res:I
    .end local v7           #temp:I
    :pswitch_0
    const/4 v1, -0x1

    .line 711
    goto :goto_1

    .line 726
    .restart local v0       #i:I
    .restart local v2       #pageAtSlot:I
    .restart local v3       #pageCount:I
    .restart local v5       #res:I
    .restart local v7       #temp:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 708
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getScrollXForPageIndex(III)I
    .locals 8
    .parameter "pageIndex"
    .parameter "scrollX"
    .parameter "dir"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 742
    const/4 v3, 0x0

    .line 743
    .local v3, res:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 744
    packed-switch p3, :pswitch_data_0

    .line 783
    :goto_0
    return v3

    .line 746
    :pswitch_0
    invoke-direct {p0, p1, p2, v6}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v3

    .line 751
    goto :goto_0

    .line 754
    :pswitch_1
    invoke-direct {p0, p1, p2, v7}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v3

    .line 759
    goto :goto_0

    .line 762
    :pswitch_2
    invoke-direct {p0, p1, p2, v7}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v4

    .line 763
    .local v4, rightScrollX:I
    invoke-direct {p0, p1, p2, v6}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v2

    .line 764
    .local v2, leftScrollX:I
    sub-int v5, p2, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 765
    .local v0, delta1:I
    sub-int v5, v4, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 766
    .local v1, delta2:I
    if-ge v0, v1, :cond_0

    .line 767
    move v3, v2

    goto :goto_0

    .line 769
    :cond_0
    move v3, v4

    goto :goto_0

    .line 780
    .end local v0           #delta1:I
    .end local v1           #delta2:I
    .end local v2           #leftScrollX:I
    .end local v4           #rightScrollX:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    goto :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSlotForScrollX(I)I
    .locals 4
    .parameter "scrollX"

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, res:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    .line 649
    .local v0, pageTotWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    if-gez p1, :cond_0

    .line 651
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 658
    :goto_0
    return v1

    .line 653
    :cond_0
    div-int v1, p1, v0

    goto :goto_0

    .line 656
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v1, v2, v0

    goto :goto_0
.end method

.method private isLoopingDisabledInCSC()Z
    .locals 3

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method private loadAssociatedPages(IZ)V
    .locals 6
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    const/4 v5, 0x1

    .line 2380
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v3, :cond_1

    .line 2381
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 2382
    .local v0, count:I
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2383
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2385
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 2386
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getInclusivePages(I)V

    .line 2388
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedView;->syncPageItemsInternal(IZ)V

    .line 2391
    if-eqz p2, :cond_2

    .line 2407
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void

    .line 2392
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 2393
    if-ne p1, v1, :cond_3

    .line 2392
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2394
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Page;

    .line 2395
    .local v2, layout:Lcom/android/launcher2/Page;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->isPageInclusive(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2396
    invoke-interface {v2}, Lcom/android/launcher2/Page;->getPageItemCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 2397
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    .line 2399
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2400
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2402
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/PagedView;->syncPageItemsInternal(IZ)V

    goto :goto_2
.end method

.method static mix(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "mix"

    .prologue
    .line 2645
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;
    .locals 3

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, res:Lcom/android/launcher2/PagedView$PageInfo;
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #res:Lcom/android/launcher2/PagedView$PageInfo;
    check-cast v0, Lcom/android/launcher2/PagedView$PageInfo;

    .line 616
    .restart local v0       #res:Lcom/android/launcher2/PagedView$PageInfo;
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/PagedView$PageInfo;->reset()V

    .line 617
    return-object v0

    .line 614
    :cond_0
    new-instance v0, Lcom/android/launcher2/PagedView$PageInfo;

    .end local v0           #res:Lcom/android/launcher2/PagedView$PageInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/PagedView$PageInfo;-><init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V

    .restart local v0       #res:Lcom/android/launcher2/PagedView$PageInfo;
    goto :goto_0
.end method

.method private notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 428
    iget v0, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 430
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 1760
    sub-float/2addr p1, v1

    .line 1761
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2019
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2021
    :cond_0
    return-void
.end method

.method private scrollToNonLooped(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 538
    if-gez p1, :cond_1

    .line 539
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 540
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->canOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 542
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_2

    .line 545
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 546
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->canOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 548
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    .line 551
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method private syncPageItemsInternal(IZ)V
    .locals 2
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    const/4 v1, 0x0

    .line 2476
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2477
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->syncPageItems(IZ)V

    .line 2478
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2479
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2481
    :cond_0
    return-void
.end method

.method private updateMotionTracking(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 2040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 2041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 2042
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 2043
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2045
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 2046
    return-void
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1765
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1769
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1771
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1785
    :goto_0
    return-void

    .line 1774
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1775
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1778
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1779
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1780
    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1784
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1782
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1426
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1427
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1428
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 1429
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 1430
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 1433
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1434
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 2313
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "v"
    .parameter "r"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 1626
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1628
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1629
    new-instance v1, Lcom/android/launcher2/PagedView$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/launcher2/PagedView$3;-><init>(Lcom/android/launcher2/PagedView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1640
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1641
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1729
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1730
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1734
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1735
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1739
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 316
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public clearLayout(Lcom/android/launcher2/Page;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 2484
    invoke-interface {p1}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    .line 2485
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 965
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 8

    .prologue
    const/high16 v7, -0x8000

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 910
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 911
    .local v1, pageCount:I
    if-ge v1, v6, :cond_1

    move v2, v4

    .line 959
    :cond_0
    :goto_0
    return v2

    .line 915
    :cond_1
    const/4 v2, 0x0

    .line 916
    .local v2, res:Z
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 918
    iget v4, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 919
    :cond_2
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 920
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 922
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 923
    const/4 v2, 0x1

    goto :goto_0

    .line 924
    :cond_4
    iget v5, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v5, v7, :cond_0

    .line 925
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 926
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 930
    iput v7, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 931
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 934
    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v5, :cond_5

    .line 935
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 936
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 941
    :cond_5
    iget v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v5, :cond_6

    .line 942
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    .line 943
    .local v3, temp:I
    iget v5, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 944
    iput v4, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    .line 945
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    .line 946
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 950
    .end local v3           #temp:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 951
    const/16 v4, 0x1000

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 953
    .local v0, ev:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 956
    .end local v0           #ev:Landroid/view/accessibility/AccessibilityEvent;
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1788
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1790
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1792
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1793
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1796
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1797
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1800
    :cond_1
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1801
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1802
    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1806
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1804
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1644
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1645
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 11
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    .line 1656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1657
    .local v4, x:F
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v5, v9

    .line 1659
    .local v5, xDiff:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v9, v9

    mul-float/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1660
    .local v3, touchSlop:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    int-to-float v9, v9

    mul-float/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1662
    .local v1, driftSlop:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    if-le v5, v9, :cond_3

    const/4 v7, 0x1

    .line 1663
    .local v7, xPaged:Z
    :goto_0
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    if-lez v9, :cond_5

    if-le v5, v1, :cond_4

    const/4 v6, 0x1

    .line 1665
    .local v6, xMoved:Z
    :goto_1
    if-gtz v1, :cond_8

    .line 1666
    if-nez v6, :cond_0

    if-eqz v7, :cond_2

    .line 1667
    :cond_0
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v9, :cond_7

    if-eqz v7, :cond_1

    .line 1669
    :goto_2
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1670
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1671
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1672
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1673
    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1674
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1675
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1678
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    .line 1726
    :cond_2
    :goto_3
    return-void

    .line 1662
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 1663
    .restart local v7       #xPaged:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    if-le v5, v3, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 1667
    .restart local v6       #xMoved:Z
    :cond_7
    if-eqz v6, :cond_1

    goto :goto_2

    .line 1681
    :cond_8
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v9, :cond_c

    if-eqz v7, :cond_b

    .line 1682
    :goto_4
    const/4 v9, 0x4

    iget v10, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v9, v10, :cond_9

    .line 1683
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1686
    :cond_9
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float v2, v9, v10

    .line 1687
    .local v2, motionX:F
    int-to-float v9, v3

    cmpl-float v9, v2, v9

    if-lez v9, :cond_d

    const/4 v8, 0x1

    .line 1688
    .local v8, xTraveled:Z
    :goto_5
    if-lt v3, v5, :cond_a

    if-eqz v8, :cond_e

    :cond_a
    const/4 v9, 0x1

    :goto_6
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1690
    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v9, v10, :cond_b

    .line 1692
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    .line 1695
    .end local v2           #motionX:F
    .end local v8           #xTraveled:Z
    :cond_b
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_f

    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_f

    .line 1696
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1697
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1698
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1699
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1700
    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    goto :goto_3

    .line 1681
    :cond_c
    if-eqz v6, :cond_b

    goto :goto_4

    .line 1687
    .restart local v2       #motionX:F
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 1688
    .restart local v8       #xTraveled:Z
    :cond_e
    const/4 v9, 0x4

    goto :goto_6

    .line 1701
    .end local v2           #motionX:F
    .end local v8           #xTraveled:Z
    :cond_f
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_10

    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 1703
    :cond_10
    iget v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v9, v10

    sub-float v0, v9, v4

    .line 1705
    .local v0, deltaX:F
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1710
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_12

    .line 1711
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    add-float/2addr v9, v0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1712
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1713
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-nez v9, :cond_11

    .line 1714
    float-to-int v9, v0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 1719
    :goto_7
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1720
    float-to-int v9, v0

    int-to-float v9, v9

    sub-float v9, v0, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_3

    .line 1717
    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_7

    .line 1722
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_3
.end method

.method protected disableRollNavigation()V
    .locals 2

    .prologue
    .line 2863
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 2797
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 2798
    .local v0, r:Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2803
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 2805
    :cond_1
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 1321
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 1323
    const/4 v7, 0x0

    .line 1326
    .local v7, skipDrawing:Z
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mInvalidatedByTouch:Z

    if-eqz v8, :cond_1

    .line 1327
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    const/4 v7, 0x1

    .line 1333
    :goto_0
    if-eqz v7, :cond_3

    .line 1387
    :goto_1
    return-void

    .line 1327
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1329
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v7, 0x1

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1337
    :cond_3
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-nez v8, :cond_d

    .line 1338
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 1339
    .local v3, halfScreenSize:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int v6, v8, v3

    .line 1341
    .local v6, screenCenter:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-eq v6, v8, :cond_4

    .line 1342
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 1343
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateAdjacentPagesAlpha()V

    .line 1344
    iput v6, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 1346
    :cond_4
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    if-eqz v8, :cond_5

    .line 1347
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateAdjacentPagesAlpha()V

    .line 1350
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->dumpVisiblePages()V

    .line 1352
    const/4 v0, 0x0

    .line 1354
    .local v0, centerOfScreen:Lcom/android/launcher2/PagedView$PageInfo;
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1355
    .local v5, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    if-eqz v0, :cond_7

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    .line 1357
    :cond_7
    move-object v0, v5

    goto :goto_3

    .line 1360
    .end local v5           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v1

    .line 1362
    .local v1, drawingTime:J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1363
    iget v8, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v11, p0, Lcom/android/launcher2/PagedView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget v12, p0, Lcom/android/launcher2/PagedView;->mBottom:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/launcher2/PagedView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1365
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1369
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1371
    :cond_9
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1372
    .restart local v5       #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    if-eq v5, v0, :cond_a

    .line 1375
    invoke-direct {p0, p1, v5, v1, v2}, Lcom/android/launcher2/PagedView;->drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V

    goto :goto_4

    .line 1377
    .end local v5           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_b
    if-eqz v0, :cond_c

    .line 1378
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher2/PagedView;->drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V

    .line 1380
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1381
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1385
    .end local v0           #centerOfScreen:Lcom/android/launcher2/PagedView$PageInfo;
    .end local v1           #drawingTime:J
    .end local v3           #halfScreenSize:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #screenCenter:I
    :cond_d
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8, p1}, Lcom/android/launcher2/PageIndicatorManager;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 1386
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mInvalidatedByTouch:Z

    goto/16 :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 1410
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1411
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1412
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1421
    :goto_0
    return v0

    .line 1415
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1416
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1417
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1421
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected enableRollNavigation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2836
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 1449
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1450
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 1452
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1463
    :cond_0
    return-void

    .line 1456
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1459
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1460
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1461
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected forceUpdateAdjacentPagesAlpha()V
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 1212
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateAdjacentPagesAlpha()V

    .line 1213
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 326
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 311
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 321
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getAdjustedPageIndex(I)I
    .locals 3
    .parameter "pageIndex"

    .prologue
    const/4 v1, 0x0

    .line 790
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 791
    .local v0, lastPageIndex:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 792
    if-gez p1, :cond_0

    .line 799
    .end local v0           #lastPageIndex:I
    :goto_0
    return v0

    .line 794
    .restart local v0       #lastPageIndex:I
    :cond_0
    if-le p1, v0, :cond_1

    move v0, v1

    .line 795
    goto :goto_0

    :cond_1
    move v0, p1

    .line 797
    goto :goto_0

    .line 799
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 2494
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 2497
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 2498
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getChildOffset(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 2080
    const/4 v1, 0x0

    .line 2081
    .local v1, offset:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2082
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2083
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2085
    :cond_0
    return v1
.end method

.method public getClosestPageForScrollX(I)I
    .locals 4
    .parameter "scrollX"

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 665
    .local v0, pageCount:I
    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 666
    .local v1, pageIndex:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    rem-int/2addr v1, v0

    .line 669
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    .line 671
    return v1
.end method

.method getComingPage()I
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method protected getInclusivePages(I)V
    .locals 11
    .parameter "currentPageIndex"

    .prologue
    .line 2422
    sget-object v9, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2423
    sget-object v2, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    .line 2425
    .local v2, inclusivePages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2427
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCacheSize()I

    move-result v0

    .line 2428
    .local v0, cacheSize:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    .line 2431
    .local v4, pageCount:I
    if-lt v0, v4, :cond_0

    .line 2432
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_8

    .line 2433
    sget-object v9, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2438
    .end local v1           #i:I
    :cond_0
    add-int/lit8 v8, v0, -0x1

    .line 2439
    .local v8, size:I
    int-to-float v9, v8

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2440
    .local v5, pagesToLeft:I
    div-int/lit8 v6, v8, 0x2

    .line 2441
    .local v6, pagesToRight:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2442
    const/4 v1, 0x1

    .restart local v1       #i:I
    :goto_1
    if-gt v1, v5, :cond_2

    .line 2443
    sub-int v3, p1, v1

    .line 2444
    .local v3, leftIndex:I
    if-gez v3, :cond_1

    .line 2445
    add-int/2addr v3, v4

    .line 2448
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2451
    .end local v3           #leftIndex:I
    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v6, :cond_8

    .line 2452
    add-int v7, p1, v1

    .line 2453
    .local v7, rightIndex:I
    if-lt v7, v4, :cond_3

    .line 2454
    sub-int/2addr v7, v4

    .line 2456
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2451
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2459
    .end local v1           #i:I
    .end local v7           #rightIndex:I
    :cond_4
    const/4 v1, 0x1

    .restart local v1       #i:I
    :goto_3
    if-gt v1, v5, :cond_6

    .line 2460
    sub-int v3, p1, v1

    .line 2461
    .restart local v3       #leftIndex:I
    if-ltz v3, :cond_5

    .line 2462
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2459
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2466
    .end local v3           #leftIndex:I
    :cond_6
    const/4 v1, 0x1

    :goto_4
    if-gt v1, v6, :cond_8

    .line 2467
    add-int v7, p1, v1

    .line 2468
    .restart local v7       #rightIndex:I
    if-ge v7, v4, :cond_7

    .line 2469
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2466
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2473
    .end local v5           #pagesToLeft:I
    .end local v6           #pagesToRight:I
    .end local v7           #rightIndex:I
    .end local v8           #size:I
    :cond_8
    return-void
.end method

.method public getLeftPage()Landroid/view/View;
    .locals 1

    .prologue
    .line 2975
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v0, :cond_0

    .line 2976
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2978
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNonLoopedMappedScrollX(I)I
    .locals 6
    .parameter "scrollX"

    .prologue
    .line 830
    move v0, p1

    .line 831
    .local v0, adjustedScrollX:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 832
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v2

    .line 833
    .local v2, lb:I
    sub-int v1, p1, v2

    .line 834
    .local v1, deltaScrollX:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v4

    .line 835
    .local v4, pg:I
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    .line 837
    .local v3, nonLoopedScrollXForPg:I
    add-int v0, v3, v1

    .line 844
    .end local v1           #deltaScrollX:I
    .end local v2           #lb:I
    .end local v3           #nonLoopedScrollXForPg:I
    .end local v4           #pg:I
    :cond_0
    return v0
.end method

.method public getNonLoopedScrollXForPageIndex(I)I
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageBackgroundAlpha()F
    .locals 1

    .prologue
    .line 2792
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    return v0
.end method

.method public getPageCacheSize()I
    .locals 1

    .prologue
    .line 3036
    const/4 v0, 0x3

    return v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageIndexForItemId(J)I
    .locals 7
    .parameter "id"

    .prologue
    .line 3046
    const/4 v4, -0x1

    .line 3047
    .local v4, pageIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 3048
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 3049
    .local v3, page:Lcom/android/launcher2/CellLayoutChildren;
    iget-object v5, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 3050
    .local v2, item:Lcom/android/launcher2/BaseItem;
    iget-wide v5, v2, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_0

    .line 3051
    move v4, v0

    .line 3057
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    .end local v3           #page:Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    return v4

    .line 3047
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #page:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getPageIndexForScrollX(I)I
    .locals 5
    .parameter "scrollX"

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 676
    .local v0, pageCount:I
    const/high16 v1, -0x8000

    .line 678
    .local v1, res:I
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->getSlotForScrollX(I)I

    move-result v2

    .line 679
    .local v2, slot:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    if-gez p1, :cond_0

    .line 681
    add-int/lit8 v3, v0, -0x1

    rem-int v4, v2, v0

    sub-int v1, v3, v4

    .line 688
    :goto_0
    return v1

    .line 683
    :cond_0
    rem-int v1, v2, v0

    goto :goto_0

    .line 686
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 15

    .prologue
    .line 2114
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 2115
    .local v8, pageWidth:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 2116
    .local v2, leftEdge:I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int v10, v13, v8

    .line 2117
    .local v10, rightEdge:I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v5

    .line 2118
    .local v5, pageLeftIndex:I
    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v7

    .line 2119
    .local v7, pageRightIndex:I
    const/high16 v0, -0x8000

    .line 2121
    .local v0, indexOfPageOnScreen:I
    if-ne v5, v7, :cond_1

    .line 2122
    move v0, v5

    .line 2150
    :cond_0
    :goto_0
    return v0

    .line 2124
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 2125
    .local v3, leftView:Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    .line 2126
    .local v11, rightView:Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v11, :cond_0

    .line 2127
    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    invoke-direct {p0, v3}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v14

    add-int v4, v13, v14

    .line 2128
    .local v4, pageLeftCenter:I
    invoke-direct {p0, v10}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    invoke-direct {p0, v11}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v14

    add-int v6, v13, v14

    .line 2129
    .local v6, pageRightCenter:I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    div-int/lit8 v14, v8, 0x2

    add-int v12, v13, v14

    .line 2130
    .local v12, screenCenter:I
    sub-int v13, v12, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2131
    .local v1, leftDelta:I
    sub-int v13, v6, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 2134
    .local v9, rightDelta:I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v13, v5, :cond_5

    .line 2135
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-nez v13, :cond_3

    .line 2136
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0xa

    if-lt v1, v13, :cond_2

    move v0, v7

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    .line 2138
    :cond_3
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x3

    if-lt v1, v13, :cond_4

    move v0, v7

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_2

    .line 2142
    :cond_5
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x3

    if-lt v9, v13, :cond_6

    move v0, v5

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v7

    goto :goto_3
.end method

.method public getPageSpacing()I
    .locals 1

    .prologue
    .line 2584
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    return v0
.end method

.method public getPageSwitchListener()Lcom/android/launcher2/PagedView$PageSwitchListener;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    return-object v0
.end method

.method protected getPageTotWidth()I
    .locals 4

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int v1, v2, v3

    .line 637
    .local v1, result:I
    if-gtz v1, :cond_0

    .line 638
    const/16 v0, 0x13

    .line 639
    .local v0, RANDOM_NUMBER_WITH_NO_MEANING:I
    const/16 v1, 0x13

    .line 642
    .end local v0           #RANDOM_NUMBER_WITH_NO_MEANING:I
    :cond_0
    return v1
.end method

.method public getPageZoom()F
    .locals 1

    .prologue
    .line 2778
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    return v0
.end method

.method protected getRelativeChildOffset(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 2068
    const/4 v1, 0x0

    .line 2069
    .local v1, offset:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2070
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2071
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 2073
    :cond_0
    return v1
.end method

.method public getRightPage()Landroid/view/View;
    .locals 2

    .prologue
    .line 2983
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2984
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2986
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F
    .locals 8
    .parameter "pageInfo"

    .prologue
    const/high16 v7, 0x3f80

    .line 1742
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    .line 1743
    .local v3, totalDistance:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1744
    .local v1, screenLeft:I
    iget v4, p1, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    .line 1745
    .local v4, viewLeft:I
    sub-int v0, v1, v4

    .line 1746
    .local v0, delta:I
    int-to-float v5, v0

    int-to-float v6, v3

    mul-float/2addr v6, v7

    div-float v2, v5, v6

    .line 1747
    .local v2, scrollProgress:F
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1748
    const/high16 v5, -0x4080

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1750
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1751
    const/4 v2, 0x0

    .line 1753
    :cond_0
    return v2
.end method

.method public handleScrollOnOrientationChange()V
    .locals 2

    .prologue
    .line 3023
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 3024
    .local v0, pageIndex:I
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3025
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v0

    .line 3029
    :goto_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_0

    .line 3030
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 3032
    :cond_0
    return-void

    .line 3027
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getClosestPageForScrollX(I)I

    move-result v0

    goto :goto_0
.end method

.method public hidePageIndicator(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->hidePageIndicator(Z)V

    .line 2678
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1497
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1490
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 380
    return p1
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 2516
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 2517
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .parameter "currentPage"

    .prologue
    .line 2519
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 2520
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 6
    .parameter "currentPage"
    .parameter "immediateAndOnly"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x1

    .line 2522
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v2, :cond_1

    .line 2556
    :cond_0
    :goto_0
    return-void

    .line 2526
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_0

    .line 2527
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2530
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    .line 2533
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 2537
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 2541
    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    .line 2542
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 2546
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 2547
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2548
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2547
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2552
    :cond_3
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v2, p2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 2553
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 2554
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return v0
.end method

.method isFastScrolling()Z
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    return v0
.end method

.method isHoveringArea(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/high16 v3, 0x4170

    .line 2757
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v0

    .line 2759
    .local v0, width:I
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    cmpg-float v2, p1, v3

    if-gtz v2, :cond_1

    .line 2767
    :cond_0
    :goto_0
    return v1

    .line 2762
    :cond_1
    int-to-float v2, v0

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    .line 2767
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isLoopingEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 627
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->isLoopingDisabledInCSC()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageConstructed(I)Z
    .locals 3
    .parameter "i"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2488
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-nez v0, :cond_0

    .line 2490
    :goto_0
    return v1

    .line 2489
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    move v1, v2

    goto :goto_0

    .line 2490
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected isPageInclusive(I)Z
    .locals 2
    .parameter "page"

    .prologue
    .line 2410
    sget-object v0, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 2377
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 2378
    return-void
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1816
    const/high16 v0, 0x3f80

    .line 1817
    .local v0, f:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1818
    const v1, 0x3e0f5c29

    mul-float/2addr v1, v0

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 3014
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 3016
    return-void
.end method

.method protected onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1317
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1983
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2006
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1988
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1989
    const/4 v1, 0x0

    .line 1990
    .local v1, vscroll:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1995
    .local v0, hscroll:F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1996
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1997
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 2001
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1992
    .end local v0           #hscroll:F
    .end local v1           #vscroll:F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1993
    .restart local v1       #vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0       #hscroll:F
    goto :goto_1

    .line 1999
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1983
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v8, 0x1

    const/high16 v11, 0x4170

    const/4 v7, 0x0

    .line 2709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2710
    .local v0, action:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v5

    .line 2711
    .local v5, width:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 2713
    .local v6, x:F
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2753
    :goto_0
    return v7

    .line 2718
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v9

    if-gtz v9, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 2720
    :cond_1
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v7, v8

    .line 2753
    goto :goto_0

    .line 2724
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2726
    .local v1, currentTime:J
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-nez v9, :cond_3

    .line 2727
    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 2728
    iput-wide v1, p0, Lcom/android/launcher2/PagedView;->mPageScrollEndTime:J

    .line 2731
    :cond_3
    iget-wide v9, p0, Lcom/android/launcher2/PagedView;->mPageScrollEndTime:J

    sub-long v3, v1, v9

    .line 2733
    .local v3, duration:J
    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_4

    cmpg-float v9, v6, v11

    if-gtz v9, :cond_4

    .line 2735
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v7, :cond_2

    cmp-long v7, v3, v12

    if-ltz v7, :cond_2

    .line 2736
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v7, v7, -0x1

    iget v9, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    const/4 v10, 0x2

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_1

    .line 2738
    :cond_4
    int-to-float v9, v5

    sub-float/2addr v9, v11

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_5

    int-to-float v9, v5

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_5

    .line 2740
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v7, :cond_2

    cmp-long v7, v3, v12

    if-ltz v7, :cond_2

    .line 2741
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v7, v7, 0x1

    iget v9, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    const/4 v10, 0x3

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_1

    .line 2744
    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    goto :goto_1

    .line 2749
    .end local v1           #currentTime:J
    .end local v3           #duration:J
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    goto :goto_1

    .line 2720
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 2658
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2659
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2660
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2661
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2662
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2663
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2665
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2652
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2653
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2654
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 2683
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 2704
    :goto_0
    return v2

    .line 2687
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2688
    .local v0, isListScrollOn:I
    if-nez v0, :cond_1

    move v2, v3

    .line 2689
    goto :goto_0

    .line 2692
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 2694
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    if-nez v1, :cond_2

    move v2, v3

    .line 2695
    goto :goto_0

    .line 2697
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v4, :cond_3

    move v2, v3

    .line 2698
    goto :goto_0

    .line 2701
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->isHoveringArea(FF)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v2, v3

    .line 2702
    goto :goto_0

    .line 2704
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1502
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    if-nez v8, :cond_0

    .line 1503
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->updateMotionTracking(Landroid/view/MotionEvent;)V

    .line 1509
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1512
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v8

    if-gtz v8, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1621
    :cond_1
    :goto_0
    return v6

    .line 1519
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1520
    .local v0, action:I
    if-ne v0, v10, :cond_3

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v8, v6, :cond_1

    .line 1525
    :cond_3
    const/4 v2, 0x0

    .line 1527
    .local v2, shouldInterceptForFastScroll:Z
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 1621
    :goto_1
    :pswitch_0
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v11, :cond_1

    :cond_4
    if-nez v2, :cond_1

    move v6, v7

    goto :goto_0

    .line 1532
    :pswitch_1
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    if-eqz v8, :cond_5

    .line 1533
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    .line 1534
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1535
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    goto :goto_1

    .line 1547
    :cond_5
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1548
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1549
    .local v5, y:F
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8, v3, v5}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v2

    .line 1550
    iput v7, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    .line 1552
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1553
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_6

    .line 1554
    new-instance v8, Lcom/android/launcher2/PagedView$2;

    invoke-direct {v8, p0}, Lcom/android/launcher2/PagedView$2;-><init>(Lcom/android/launcher2/PagedView;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1567
    :cond_6
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1568
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1575
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getFinalX()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1576
    .local v4, xDist:I
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-ge v4, v8, :cond_9

    .line 1577
    :cond_7
    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1578
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1585
    :goto_2
    invoke-virtual {p0, v3, v5}, Lcom/android/launcher2/PagedView;->hitsPreviousPage(FF)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1586
    iput v10, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1591
    :cond_8
    :goto_3
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    goto :goto_1

    .line 1580
    :cond_9
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_2

    .line 1587
    :cond_a
    invoke-virtual {p0, v3, v5}, Lcom/android/launcher2/PagedView;->hitsNextPage(FF)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1588
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_3

    .line 1597
    .end local v1           #handler:Landroid/os/Handler;
    .end local v3           #x:F
    .end local v4           #xDist:I
    .end local v5           #y:F
    :pswitch_3
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v11, v8, :cond_b

    .line 1598
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1600
    :cond_b
    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1601
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1602
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 1603
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    .line 1604
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1608
    :pswitch_4
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1612
    :pswitch_5
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 1613
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1104
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1111
    :cond_0
    sub-int v16, p4, p2

    .line 1112
    .local v16, pageWidth:I
    sub-int v14, p5, p3

    .line 1113
    .local v14, pageHeight:I
    const/4 v15, 0x0

    .line 1114
    .local v15, pageLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    .line 1115
    .local v4, childCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v4, :cond_3

    .line 1116
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1117
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1118
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1119
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1120
    .local v8, childWidth:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1122
    .local v5, childHeight:I
    iget v10, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1123
    .local v10, gravity:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    .line 1124
    const/16 v10, 0x31

    .line 1127
    :cond_1
    and-int/lit8 v17, v10, 0x7

    packed-switch v17, :pswitch_data_0

    .line 1138
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v2, v17, v18

    .line 1139
    .local v2, availWidth:I
    sub-int v9, v2, v8

    .line 1140
    .local v9, extraWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v17, v17, v15

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    div-int/lit8 v18, v9, 0x2

    add-int v6, v17, v18

    .line 1143
    .end local v2           #availWidth:I
    .end local v9           #extraWidth:I
    .local v6, childLeft:I
    :goto_2
    and-int/lit8 v17, v10, 0x70

    sparse-switch v17, :sswitch_data_0

    .line 1152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, v5

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 1157
    .local v7, childTop:I
    :goto_3
    add-int v17, v6, v8

    add-int v18, v7, v5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    move/from16 v17, v0

    add-int v17, v17, v16

    add-int v15, v15, v17

    .line 1115
    .end local v5           #childHeight:I
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v8           #childWidth:I
    .end local v10           #gravity:I
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1129
    .restart local v5       #childHeight:I
    .restart local v8       #childWidth:I
    .restart local v10       #gravity:I
    .restart local v12       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v17, v17, v15

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 1130
    .restart local v6       #childLeft:I
    goto :goto_2

    .line 1132
    .end local v6           #childLeft:I
    :pswitch_2
    add-int v17, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    sub-int v17, v17, v8

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 1134
    .restart local v6       #childLeft:I
    goto :goto_2

    .line 1146
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v17, v0

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    sub-int v7, v17, v18

    .line 1147
    .restart local v7       #childTop:I
    goto :goto_3

    .line 1149
    .end local v7           #childTop:I
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v17, v0

    sub-int v17, v14, v17

    sub-int v17, v17, v5

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 1150
    .restart local v7       #childTop:I
    goto :goto_3

    .line 1168
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v8           #childWidth:I
    .end local v10           #gravity:I
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    if-ltz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 1169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v13

    .line 1170
    .local v13, newX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1177
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->rotateFolder()V

    .line 1179
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 1180
    const/high16 v17, -0x8000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 1182
    .end local v13           #newX:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    .line 1184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    move/from16 v17, v0

    const/high16 v18, -0x8000

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 1185
    new-instance v17, Lcom/android/launcher2/PagedView$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedView$1;-><init>(Lcom/android/launcher2/PagedView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->post(Ljava/lang/Runnable;)Z

    .line 1196
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->setDirtyFlags()V

    goto/16 :goto_0

    .line 1127
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1143
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorLongPress(FF)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 978
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 979
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1087
    :goto_0
    return-void

    .line 983
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    const/high16 v23, 0x4000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    const/4 v4, 0x1

    .line 984
    .local v4, checkMatchParentWidth:Z
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    const/high16 v23, 0x4000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    const/4 v3, 0x1

    .line 986
    .local v3, checkMatchParentHeight:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v23, v0

    add-int v20, v22, v23

    .line 987
    .local v20, verticalPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v23, v0

    add-int v12, v22, v23

    .line 988
    .local v12, horizontalPadding:I
    const/16 v16, 0x0

    .line 989
    .local v16, maxWidth:I
    const/4 v15, 0x0

    .line 990
    .local v15, maxHeight:I
    const/16 v17, 0x0

    .line 992
    .local v17, mustMake2ndPass:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    .line 993
    .local v5, childCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    if-ge v13, v5, :cond_b

    .line 994
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 995
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 996
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 997
    .local v14, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x70

    const/16 v23, 0x30

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    :cond_1
    const/16 v19, 0x1

    .line 999
    .local v19, verticalGravityIsTop:Z
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v22, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v8, v22, v23

    .line 1000
    .local v8, childHorizontalMargins:I
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v22, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v23, v0

    add-int v23, v23, v22

    if-eqz v19, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    :goto_5
    sub-int v9, v23, v22

    .line 1005
    .local v9, childVerticalMargins:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    sub-int v22, v22, v12

    sub-int v22, v22, v8

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1009
    .local v11, childWidthMeasureSpec:I
    add-int v22, v20, v9

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v7

    .line 1012
    .local v7, childHeightMeasureSpec:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1014
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v10, v22, v8

    .line 1015
    .local v10, childWidth:I
    move/from16 v0, v16

    if-le v10, v0, :cond_2

    .line 1016
    move/from16 v16, v10

    .line 1018
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v6, v22, v9

    .line 1019
    .local v6, childHeight:I
    if-le v6, v15, :cond_3

    .line 1020
    move v15, v6

    .line 1022
    :cond_3
    if-eqz v4, :cond_4

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 1024
    :cond_5
    const/16 v17, 0x1

    .line 993
    .end local v6           #childHeight:I
    .end local v7           #childHeightMeasureSpec:I
    .end local v8           #childHorizontalMargins:I
    .end local v9           #childVerticalMargins:I
    .end local v10           #childWidth:I
    .end local v11           #childWidthMeasureSpec:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v19           #verticalGravityIsTop:Z
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 983
    .end local v3           #checkMatchParentHeight:Z
    .end local v4           #checkMatchParentWidth:Z
    .end local v5           #childCount:I
    .end local v12           #horizontalPadding:I
    .end local v13           #i:I
    .end local v15           #maxHeight:I
    .end local v16           #maxWidth:I
    .end local v17           #mustMake2ndPass:Z
    .end local v18           #v:Landroid/view/View;
    .end local v20           #verticalPadding:I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 984
    .restart local v4       #checkMatchParentWidth:Z
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 997
    .restart local v3       #checkMatchParentHeight:Z
    .restart local v5       #childCount:I
    .restart local v12       #horizontalPadding:I
    .restart local v13       #i:I
    .restart local v14       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15       #maxHeight:I
    .restart local v16       #maxWidth:I
    .restart local v17       #mustMake2ndPass:Z
    .restart local v18       #v:Landroid/view/View;
    .restart local v20       #verticalPadding:I
    :cond_9
    const/16 v19, 0x0

    goto :goto_4

    .line 1000
    .restart local v8       #childHorizontalMargins:I
    .restart local v19       #verticalGravityIsTop:Z
    :cond_a
    const/16 v22, 0x0

    goto :goto_5

    .line 1028
    .end local v8           #childHorizontalMargins:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #v:Landroid/view/View;
    .end local v19           #verticalGravityIsTop:Z
    :cond_b
    add-int v16, v16, v12

    .line 1029
    add-int v15, v15, v20

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getSuggestedMinimumHeight()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1033
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getSuggestedMinimumWidth()I

    move-result v22

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1035
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/PagedView;->resolveSize(II)I

    move-result v22

    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/launcher2/PagedView;->resolveSize(II)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    .line 1040
    if-eqz v17, :cond_11

    .line 1041
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v22

    sub-int v16, v22, v12

    .line 1042
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v22

    sub-int v15, v22, v20

    .line 1043
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v5, :cond_11

    .line 1044
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1045
    .restart local v18       #v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 1046
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1047
    .restart local v14       #lp:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v4, :cond_c

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    :cond_c
    if-eqz v3, :cond_e

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 1053
    :cond_d
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 1054
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1061
    .restart local v11       #childWidthMeasureSpec:I
    :goto_7
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 1062
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1069
    .restart local v7       #childHeightMeasureSpec:I
    :goto_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1043
    .end local v7           #childHeightMeasureSpec:I
    .end local v11           #childWidthMeasureSpec:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1057
    .restart local v14       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_f
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v22, v22, v12

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v11

    .restart local v11       #childWidthMeasureSpec:I
    goto :goto_7

    .line 1065
    :cond_10
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v22, v0

    add-int v22, v22, v20

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7       #childHeightMeasureSpec:I
    goto :goto_8

    .line 1074
    .end local v7           #childHeightMeasureSpec:I
    .end local v11           #childWidthMeasureSpec:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #v:Landroid/view/View;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v21

    .line 1076
    .local v21, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    move/from16 v22, v0

    if-gez v22, :cond_12

    .line 1077
    div-int/lit8 v22, v21, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    .line 1082
    :goto_9
    const/16 v22, 0x1

    move/from16 v0, v22

    if-gt v5, v0, :cond_13

    .line 1083
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 1079
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    goto :goto_9

    .line 1085
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    move/from16 v22, v0

    add-int v22, v22, v21

    add-int/lit8 v23, v5, -0x1

    mul-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()Z

    .line 504
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1401
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1402
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1403
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1405
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2366
    instance-of v1, p1, Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2367
    check-cast v0, Lcom/android/launcher2/PagedView$SavedState;

    .line 2368
    .local v0, ss:Lcom/android/launcher2/PagedView$SavedState;
    invoke-virtual {v0}, Lcom/android/launcher2/PagedView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2369
    iget v1, v0, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 2370
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 2374
    .end local v0           #ss:Lcom/android/launcher2/PagedView$SavedState;
    :goto_0
    return-void

    .line 2372
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 2358
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2359
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/launcher2/PagedView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2360
    .local v0, ss:Lcom/android/launcher2/PagedView$SavedState;
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v2, v0, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    .line 2361
    return-object v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    .line 2817
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 1827
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    if-nez v8, :cond_0

    .line 1828
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->updateMotionTracking(Landroid/view/MotionEvent;)V

    .line 1830
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v8

    if-gtz v8, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 1977
    :goto_0
    return v8

    .line 1832
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8, p1}, Lcom/android/launcher2/PageIndicatorManager;->handleEvent(Landroid/view/MotionEvent;)Z

    .line 1834
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1838
    .local v0, action:I
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v8, v9

    .line 1977
    goto :goto_0

    .line 1844
    :pswitch_1
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1845
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1847
    :cond_3
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1848
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v9, :cond_2

    .line 1849
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 1854
    :pswitch_2
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1855
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1856
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    .line 1857
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v9, :cond_6

    .line 1859
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1860
    .local v7, x:F
    iget v8, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v8, v10

    sub-float v2, v8, v7

    .line 1862
    .local v2, deltaX:F
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v8, v10

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1867
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v10, 0x3f80

    cmpl-float v8, v8, v10

    if-ltz v8, :cond_5

    .line 1868
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    add-float/2addr v8, v2

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1869
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-float v8, v10

    const v10, 0x4e6e6b28

    div-float/2addr v8, v10

    iput v8, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1870
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-nez v8, :cond_4

    .line 1871
    float-to-int v8, v2

    invoke-virtual {p0, v8, v12}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 1876
    :goto_2
    iput v7, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1877
    float-to-int v8, v2

    int-to-float v8, v8

    sub-float v8, v2, v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1884
    .end local v2           #deltaX:F
    .end local v7           #x:F
    :goto_3
    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    goto :goto_1

    .line 1874
    .restart local v2       #deltaX:F
    .restart local v7       #x:F
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_2

    .line 1879
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto :goto_3

    .line 1882
    .end local v2           #deltaX:F
    .end local v7           #x:F
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 1888
    :pswitch_3
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v8, v9, :cond_7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v13, :cond_d

    .line 1889
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1890
    .restart local v7       #x:F
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1891
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v10, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v5, v8, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1892
    invoke-virtual {v5, v12}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    float-to-int v6, v8

    .line 1895
    .local v6, velocityX:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v8, v10

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1896
    const/4 v3, 0x1

    .line 1898
    .local v3, dir:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    const/high16 v10, 0x41c8

    cmpl-float v8, v8, v10

    if-lez v8, :cond_b

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v10, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    if-le v8, v10, :cond_b

    .line 1901
    if-lez v6, :cond_9

    .line 1902
    const/4 v3, 0x2

    .line 1903
    iget v8, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_8

    .line 1905
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1925
    .local v4, nextPage:I
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    .line 1926
    .local v1, adjustedPage:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v1, v8, :cond_c

    iget v8, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v1, v8, :cond_c

    .line 1927
    iget v8, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v8, v3}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 1954
    .end local v1           #adjustedPage:I
    .end local v3           #dir:I
    .end local v4           #nextPage:I
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #velocityX:I
    .end local v7           #x:F
    :goto_5
    iput v12, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1955
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 1956
    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1909
    .restart local v3       #dir:I
    .restart local v5       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v6       #velocityX:I
    .restart local v7       #x:F
    :cond_8
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v8, -0x1

    .restart local v4       #nextPage:I
    goto :goto_4

    .line 1912
    .end local v4           #nextPage:I
    :cond_9
    const/4 v3, 0x3

    .line 1913
    iget v8, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    cmpl-float v8, v7, v8

    if-lez v8, :cond_a

    .line 1915
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .restart local v4       #nextPage:I
    goto :goto_4

    .line 1919
    .end local v4           #nextPage:I
    :cond_a
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v8, 0x1

    .restart local v4       #nextPage:I
    goto :goto_4

    .line 1923
    .end local v4           #nextPage:I
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v4

    .restart local v4       #nextPage:I
    goto :goto_4

    .line 1929
    .restart local v1       #adjustedPage:I
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_5

    .line 1931
    .end local v1           #adjustedPage:I
    .end local v3           #dir:I
    .end local v4           #nextPage:I
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #velocityX:I
    .end local v7           #x:F
    :cond_d
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v10, :cond_f

    .line 1935
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v4

    .line 1936
    .restart local v4       #nextPage:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v4, v8, :cond_e

    iget v8, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v4, v8, :cond_e

    .line 1937
    iget v8, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v8, v10}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_5

    .line 1939
    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_5

    .line 1941
    .end local v4           #nextPage:I
    :cond_f
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v11, :cond_11

    .line 1945
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v4

    .line 1946
    .restart local v4       #nextPage:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v4, v8, :cond_10

    iget v8, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v4, v8, :cond_10

    .line 1947
    iget v8, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v8, v11}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_5

    .line 1949
    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_5

    .line 1952
    .end local v4           #nextPage:I
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1960
    :pswitch_4
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v8, v9, :cond_12

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v13, :cond_13

    .line 1961
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1963
    :cond_13
    iput v12, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1964
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 1965
    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1969
    :pswitch_5
    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1973
    :pswitch_6
    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1838
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 2048
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 2560
    instance-of v1, p1, Lcom/android/launcher2/Page;

    if-eqz v1, :cond_1

    .line 2561
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2562
    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 2563
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2565
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 2566
    check-cast v1, Lcom/android/launcher2/Page;

    invoke-interface {v1}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    .line 2569
    .end local v0           #i:I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2570
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 2992
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2993
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()Z

    .line 2994
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1810
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->dampedOverScroll(F)V

    .line 1811
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 4

    .prologue
    .line 435
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v3, :cond_0

    .line 436
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    .line 438
    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 440
    .local v1, l:Lcom/android/launcher2/AnimationLayer;
    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 443
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 444
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 445
    .local v2, v:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .end local v0           #i:I
    .end local v1           #l:Lcom/android/launcher2/AnimationLayer;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 2

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 453
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    .line 454
    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncViewVisibility()V

    .line 457
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/PagedView;->mPageScrollEndTime:J

    .line 461
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2052
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2053
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 2054
    .local v0, page:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2055
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mFromFocusHelper:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2056
    iget v1, p0, Lcom/android/launcher2/PagedView;->mDir:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    .line 2059
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mFromFocusHelper:Z

    .line 2061
    :cond_0
    return-void

    .line 2058
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1391
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 1392
    .local v0, page:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1393
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1394
    const/4 v1, 0x1

    .line 1396
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    .line 1473
    if-eqz p1, :cond_1

    .line 1476
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1478
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v0, v1, :cond_0

    .line 1479
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1481
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 1483
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1484
    return-void
.end method

.method protected rotateFolder()V
    .locals 0

    .prologue
    .line 3006
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 1
    .parameter "screenCenter"

    .prologue
    .line 1254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1255
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 534
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 535
    return-void
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2294
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2295
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 2299
    :goto_0
    return-void

    .line 2297
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2302
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2303
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 2307
    :goto_0
    return-void

    .line 2305
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 560
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 561
    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 562
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 563
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 567
    :goto_0
    int-to-float v5, p1

    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 568
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    long-to-float v5, v5

    const v6, 0x4e6e6b28

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 581
    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    if-eqz v5, :cond_5

    .line 582
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mInvalidatedByTouch:Z

    .line 583
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()Z

    .line 584
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_5

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, found:Z
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 587
    .local v3, info:Lcom/android/launcher2/PagedView$PageInfo;
    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    if-ne v5, v1, :cond_0

    .line 588
    const/4 v0, 0x1

    .line 593
    .end local v3           #info:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 594
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_4

    .line 584
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 565
    .end local v0           #found:Z
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #v:Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedView;->scrollToNonLooped(II)V

    goto :goto_0

    .line 596
    .restart local v0       #found:Z
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #v:Landroid/view/View;
    :cond_4
    if-eqz v0, :cond_2

    .line 597
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 602
    .end local v0           #found:Z
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #v:Landroid/view/View;
    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    .line 603
    return-void
.end method

.method protected setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 2321
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 2322
    return-void
.end method

.method setCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 424
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 412
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v0

    .line 413
    .local v0, newX:I
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 414
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 421
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 422
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 346
    return-void
.end method

.method protected setDirtyFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1205
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 1206
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1208
    return-void
.end method

.method public setHideItems(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 2809
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    .line 2810
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 527
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 528
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 518
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 519
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 520
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method

.method public setPageBackgroundAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 2786
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    .line 2787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 2789
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 2790
    return-void
.end method

.method protected setPageIndicatorTop(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->setTop(I)V

    .line 2998
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V
    .locals 3
    .parameter "pageSwitchListener"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    .line 331
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 334
    :cond_0
    return-void
.end method

.method public setPageZoom(F)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 2772
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 2773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 2775
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 2776
    return-void
.end method

.method public showPageIndicator(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    .line 2674
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 2154
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 2155
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .parameter "whichPage"

    .prologue
    .line 2216
    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 2217
    return-void
.end method

.method protected snapToPage(II)V
    .locals 1
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 2220
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 2221
    return-void
.end method

.method protected snapToPage(III)V
    .locals 8
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 2249
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    .line 2250
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 2251
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2252
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    if-lez p2, :cond_3

    .line 2253
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    .line 2262
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 2263
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 2265
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 2268
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 2269
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    .line 2270
    if-nez p3, :cond_1

    .line 2271
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 2274
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2275
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2280
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2284
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_6

    .line 2285
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 2289
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 2290
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 2291
    return-void

    .line 2254
    .end local v6           #focusedChild:Landroid/view/View;
    :cond_3
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v0, :cond_4

    if-gez p2, :cond_4

    .line 2255
    iput v7, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto :goto_0

    .line 2257
    :cond_4
    iput v2, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto :goto_0

    .line 2260
    :cond_5
    iput v2, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto :goto_0

    .line 2287
    .restart local v6       #focusedChild:Landroid/view/View;
    :cond_6
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_1
.end method

.method protected snapToPage(IIZ)V
    .locals 1
    .parameter "whichPage"
    .parameter "dir"
    .parameter "fromfocushelper"

    .prologue
    .line 2223
    iput-boolean p3, p0, Lcom/android/launcher2/PagedView;->mFromFocusHelper:Z

    .line 2224
    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 2225
    return-void
.end method

.method protected snapToPageAfterLayout(II)V
    .locals 0
    .parameter "pageToSnapTo"
    .parameter "dir"

    .prologue
    .line 1096
    iput p1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 1097
    iput p2, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    .line 1098
    return-void
.end method

.method protected snapToPageWithDir(II)V
    .locals 1
    .parameter "whichPage"
    .parameter "dir"

    .prologue
    .line 2227
    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 2228
    return-void
.end method

.method protected snapToPageWithDir(III)V
    .locals 3
    .parameter "whichPage"
    .parameter "duration"
    .parameter "dir"

    .prologue
    .line 2231
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result p1

    .line 2235
    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-direct {p0, p1, v2, p3}, Lcom/android/launcher2/PagedView;->getScrollXForPageIndex(III)I

    move-result v1

    .line 2236
    .local v1, dstScrollX:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v1, v2

    .line 2237
    .local v0, delta:I
    iput p3, p0, Lcom/android/launcher2/PagedView;->mDir:I

    .line 2238
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2239
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    const/high16 v8, 0x3f80

    .line 2179
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2180
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 2182
    .local v4, halfScreenSize:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v5

    .line 2186
    .local v5, newX:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 2187
    .local v0, delta:I
    const/4 v3, 0x0

    .line 2189
    .local v3, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xfa

    if-ge v6, v7, :cond_0

    .line 2192
    iget v6, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 2213
    :goto_0
    return-void

    .line 2200
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2201
    .local v2, distanceRatio:F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 2204
    .local v1, distance:F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2205
    const/16 v6, 0x898

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2210
    const/high16 v6, 0x447a

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 2212
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected syncViewVisibility()V
    .locals 6

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, found:Z
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 478
    .local v3, info:Lcom/android/launcher2/PagedView$PageInfo;
    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    if-ne v5, v1, :cond_0

    .line 479
    const/4 v0, 0x1

    .line 484
    .end local v3           #info:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 485
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_2

    .line 475
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 488
    :cond_2
    if-eqz v0, :cond_3

    .line 489
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 491
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 494
    .end local v0           #found:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #v:Landroid/view/View;
    :cond_4
    return-void
.end method

.method protected updateAdjacentPagesAlpha()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 1216
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v6, :cond_5

    .line 1217
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1220
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    .line 1223
    .local v5, pageWidth:I
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1224
    .local v4, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    iget v6, v4, Lcom/android/launcher2/PagedView$PageInfo;->mDistFromCntr:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v7, v5

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 1225
    .local v1, dimAlpha:F
    const/4 v6, 0x0

    mul-float v7, v1, v1

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1226
    sub-float v0, v8, v1

    .line 1227
    .local v0, alpha:F
    const v6, 0x38d1b717

    cmpg-float v6, v0, v6

    if-gez v6, :cond_3

    .line 1228
    const/4 v0, 0x0

    .line 1236
    :cond_2
    :goto_1
    iget v6, v4, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 1243
    .local v3, layout:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1244
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1229
    .end local v3           #layout:Landroid/view/View;
    :cond_3
    const v6, 0x3f7ff972

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    .line 1230
    const/high16 v0, 0x3f80

    goto :goto_1

    .line 1249
    .end local v0           #alpha:F
    .end local v1           #dimAlpha:F
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    .end local v5           #pageWidth:I
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 1251
    :cond_5
    return-void
.end method

.method protected updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V
    .locals 8
    .parameter "option"

    .prologue
    const/4 v7, 0x0

    .line 2601
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v0

    .line 2602
    .local v0, enableChildrenLayers:Z
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    if-eqz v4, :cond_0

    .line 2603
    sget-object p1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    .line 2605
    :cond_0
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_3

    .line 2606
    const/4 v0, 0x0

    .line 2611
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 2612
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 2613
    .local v3, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2614
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    .line 2615
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2607
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_3
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_1

    .line 2608
    const/4 v0, 0x1

    goto :goto_0

    .line 2618
    :cond_4
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_5

    .line 2619
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 2620
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    .line 2621
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2619
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2625
    .end local v1           #i:I
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 2626
    .restart local v3       #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    if-eqz v3, :cond_6

    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    if-eqz v4, :cond_6

    .line 2627
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    .line 2628
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2633
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_7
    return-void
.end method

.method updateIndicator(II)V
    .locals 1
    .parameter "top"
    .parameter "gap"

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    .line 3002
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->setTop(I)V

    .line 3003
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PageIndicatorManager;->setGap(I)V

    .line 3004
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 0
    .parameter "page"
    .parameter "scrollProgress"

    .prologue
    .line 1263
    return-void
.end method

.method protected updateVisiblePages()Z
    .locals 14

    .prologue
    .line 852
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 853
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 855
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHorizontalVisibilityExtension()I

    move-result v1

    .line 857
    .local v1, horizontalVisibilityExtension:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    .line 858
    .local v6, pageCount:I
    const/4 v12, 0x1

    if-ge v6, v12, :cond_0

    .line 859
    const/4 v12, 0x0

    .line 905
    :goto_0
    return v12

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v11

    .line 863
    .local v11, pageWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v10

    .line 864
    .local v10, pageTotWidth:I
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    div-int/lit8 v13, v11, 0x2

    add-int v5, v12, v13

    .line 868
    .local v5, pageCenter:I
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v13, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int v8, v12, v1

    .line 869
    .local v8, pageLeftEdge:I
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int/2addr v12, v11

    iget v13, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    sub-int/2addr v12, v13

    mul-int/lit8 v13, v1, 0x2

    add-int v9, v12, v13

    .line 876
    .local v9, pageRightEdge:I
    const/high16 v3, -0x8000

    .line 878
    .local v3, lastIndex:I
    move v0, v8

    .local v0, currEdge:I
    :goto_1
    if-ge v0, v9, :cond_4

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v2

    .line 880
    .local v2, index:I
    const/high16 v12, -0x8000

    if-eq v3, v12, :cond_2

    if-ne v3, v2, :cond_2

    .line 878
    :cond_1
    :goto_2
    add-int/lit8 v12, v11, -0x1

    add-int/2addr v0, v12

    goto :goto_1

    .line 883
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 884
    .local v4, page:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 887
    move v3, v2

    .line 888
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;

    move-result-object v7

    .line 889
    .local v7, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    iput v2, v7, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    .line 890
    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v12

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    .line 891
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 892
    iget v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    mul-int/2addr v12, v10

    neg-int v12, v12

    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v12, v13

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    .line 896
    :goto_3
    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v12

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    .line 897
    iget v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v12, v13

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    .line 898
    iget v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    sub-int v12, v5, v12

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mDistFromCntr:I

    .line 899
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 894
    :cond_3
    const/4 v12, 0x0

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    goto :goto_3

    .line 901
    .end local v2           #index:I
    .end local v4           #page:Landroid/view/View;
    .end local v7           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncViewVisibility()V

    .line 902
    iget-boolean v12, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v12, :cond_5

    .line 903
    sget-object v12, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v12}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 905
    :cond_5
    const/4 v12, 0x1

    goto :goto_0
.end method
