.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$19;,
        Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$StateAnimatorProvider;,
        Lcom/android/launcher2/Workspace$State;,
        Lcom/android/launcher2/Workspace$BindWidgetsState;
    }
.end annotation


# static fields
.field private static final DEBUG_WP:Z = false

.field private static final DEBUG_WP_TAG:Ljava/lang/String; = "Launcher.WS.DebugWp"

.field private static final FAST_ROTATION:F = 15.0f

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static PAGE_HAVER_RIGHT_WIDTH_SIZE:I = 0x0

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final SLOW_ROTATION:F = 20.0f

.field private static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field static STATE_CHANGE_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field public static final TAG_STUCK_IN_EDIT:Ljava/lang/String; = "Launcher.StuckInEdit"

.field private static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static TRANSITION_MAX_ROTATION:F = 0.0f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final WORKSPACE_ROTATION:F = 20.0f

.field static final kPageZoomScaleLimit:F = 0.8f

.field static final sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;


# instance fields
.field private final ADDSCALEFACTOR:F

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBackgroundDarken:F

.field private mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

.field private mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragBarSize:I

.field private mDragFromMenu:Z

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mEditModeShrinkFactor:F

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private mFastScrollDrawInward:F

.field private mFixedWallpaper:Z

.field private mFolder:Lcom/android/launcher2/Folder;

.field protected mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private mInScrollArea:Z

.field private mInterceptedTouchEvent:Z

.field private mIsDragOccuring:Z

.field private mIsStaticWallpaper:Z

.field private mIsSwitchingState:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mOldState:Lcom/android/launcher2/Workspace$State;

.field private mPageIndicatorTopShrunken:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mScrollDirection:I

.field private mShrinkTranslateX:Z

.field private mShrinkTranslateY:Z

.field protected mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Workspace$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchStateAfterFirstLayout:Z

.field private mTempCell:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mUpdateWallpaperOffsetImmediately:Z

.field private mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperTravelWidth:I

.field private mWallpaperWidth:I

.field private final mWidgetsToBind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowToken:Landroid/os/IBinder;

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 178
    const/high16 v0, 0x3f00

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    .line 179
    const/high16 v0, 0x4180

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    sget-object v4, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    .line 112
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 119
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 120
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 124
    const v4, 0x3d75c28f

    iput v4, p0, Lcom/android/launcher2/Workspace;->ADDSCALEFACTOR:F

    .line 127
    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 129
    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 130
    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 143
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    .line 146
    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 148
    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 150
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 153
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    .line 158
    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 173
    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 174
    iput v7, p0, Lcom/android/launcher2/Workspace;->mMovePinchStart:I

    .line 182
    const v4, 0x3ee66666

    iput v4, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    .line 187
    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    .line 190
    iput v7, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 195
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/launcher2/Workspace;->mScrollDirection:I

    .line 196
    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    .line 198
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    .line 358
    new-instance v4, Lcom/android/launcher2/Workspace$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 420
    new-instance v4, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1070
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    .line 1412
    new-instance v4, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v4}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 219
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 221
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 222
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 227
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 231
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 232
    .local v0, config:Landroid/content/res/Configuration;
    const-string v4, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SmallestWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ScreenSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 237
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const-string v4, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen Width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", DensityDpi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const v4, 0x7f0a0005

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    .line 245
    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    const v4, 0x7f0c0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 252
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 253
    const v4, 0x7f0c0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    .line 254
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 257
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 259
    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    .line 260
    new-instance v4, Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-direct {v4, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 261
    return-void

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "Launcher.Workspace"

    const-string v5, "Failed to fine resources defined in attributes for workspace"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Workspace;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private backgroundAlphaInterpolator(F)F
    .locals 4
    .parameter "r"

    .prologue
    .line 1081
    const/4 v0, 0x0

    .line 1082
    .local v0, pivotA:F
    const v1, 0x3e99999a

    .line 1083
    .local v1, pivotB:F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1084
    const/4 v2, 0x0

    .line 1088
    :goto_0
    return v2

    .line 1085
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1086
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1088
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private changeState(Lcom/android/launcher2/Workspace$State;)V
    .locals 3
    .parameter "shrinkState"

    .prologue
    .line 1552
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 1553
    return-void
.end method

.method private createAndBindWidget(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 2893
    sget-object v0, Lcom/android/launcher2/Workspace$19;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2901
    .end local p1
    :goto_0
    return-void

    .line 2895
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_0

    .line 2898
    .restart local p1
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast p1, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    goto :goto_0

    .line 2893
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1893
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1894
    .local v6, res:Landroid/content/res/Resources;
    const v7, 0x1060012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1895
    .local v5, outlineColor:I
    const/4 v1, 0x0

    .line 1897
    .local v1, b:Landroid/graphics/Bitmap;
    instance-of v7, p0, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    move-object v7, p0

    .line 1898
    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 1899
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 1900
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, p2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1910
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1911
    const/4 v7, 0x1

    invoke-static {p0, p1, p2, v7}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1914
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1916
    return-object v1

    .line 1898
    .restart local v0       #arr$:[Landroid/graphics/drawable/Drawable;
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1906
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method private createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1952
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1953
    .local v5, r:Landroid/content/res/Resources;
    const v7, 0x1060012

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1954
    .local v4, outlineColor:I
    const v7, 0x7f0c0013

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1955
    .local v2, iconWidth:I
    const v7, 0x7f0c0014

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1956
    .local v1, iconHeight:I
    const v7, 0x7f0c0057

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1957
    .local v6, rectRadius:I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 1958
    .local v3, inset:I
    add-int v7, v2, p2

    add-int v8, v1, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1961
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1962
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v3

    sub-int v10, v2, v3

    int-to-float v10, v10

    sub-int v11, v1, v3

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v8, v6

    int-to-float v9, v6

    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1964
    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v7, v0, p1, v4, v4}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1965
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1966
    return-object v0
.end method

.method private static drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 14
    .parameter "v"
    .parameter "destCanvas"
    .parameter "padding"
    .parameter "pruneToDrawable"

    .prologue
    .line 1824
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1825
    .local v2, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1827
    const/4 v8, 0x0

    .line 1829
    .local v8, textVisible:Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1830
    instance-of v10, p0, Landroid/widget/TextView;

    if-eqz v10, :cond_5

    if-eqz p3, :cond_5

    .line 1831
    const/4 v5, 0x0

    .line 1832
    .local v5, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v10, p0, Lcom/android/launcher2/FolderIconView;

    if-eqz v10, :cond_3

    move-object v10, p0

    .line 1833
    check-cast v10, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1834
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v5, Lcom/android/launcher2/FastBitmapDrawable;

    .end local v5           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v5, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1845
    .end local v1           #b:Landroid/graphics/Bitmap;
    .restart local v5       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    .line 1846
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int v12, v12, p2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int v13, v13, p2

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1848
    div-int/lit8 v10, p2, 0x2

    int-to-float v10, v10

    div-int/lit8 v11, p2, 0x2

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1851
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1852
    .local v4, dm:Landroid/util/DisplayMetrics;
    iget v10, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v11, 0xf0

    if-ne v10, v11, :cond_1

    .line 1853
    const v10, 0x3f59999a

    const v11, 0x3f59999a

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1857
    :cond_1
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1885
    .end local v4           #dm:Landroid/util/DisplayMetrics;
    .end local v5           #drawable:Landroid/graphics/drawable/Drawable;
    .end local p0
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1886
    return-void

    .restart local v5       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local p0
    :cond_3
    move-object v10, p0

    .line 1836
    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_0

    aget-object v3, v0, v6

    .line 1837
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_4

    .line 1838
    move-object v5, v3

    .line 1839
    goto :goto_0

    .line 1836
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1860
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .end local v5           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_5
    instance-of v10, p0, Lcom/android/launcher2/AppIconView;

    if-eqz v10, :cond_7

    move-object v9, p0

    .line 1861
    check-cast v9, Lcom/android/launcher2/AppIconView;

    .line 1862
    .local v9, tv:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v9}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    invoke-virtual {v9}, Lcom/android/launcher2/AppIconView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    .line 1866
    invoke-virtual {v9}, Lcom/android/launcher2/AppIconView;->getTextVisible()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1867
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 1868
    const/4 v8, 0x1

    .line 1876
    .end local v9           #tv:Lcom/android/launcher2/AppIconView;
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v11, p2, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v11

    neg-int v11, v11

    div-int/lit8 v12, p2, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1877
    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1878
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1881
    if-eqz v8, :cond_2

    .line 1882
    check-cast p0, Lcom/android/launcher2/AppIconView;

    .end local p0
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    goto :goto_1

    .line 1871
    .restart local p0
    :cond_7
    instance-of v10, p0, Landroid/widget/TextView;

    if-eqz v10, :cond_6

    move-object v9, p0

    .line 1872
    check-cast v9, Landroid/widget/TextView;

    .line 1873
    .local v9, tv:Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method private getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 2057
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method private getScrollRange()I
    .locals 2

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 11
    .parameter "tag"

    .prologue
    .line 2224
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    .line 2225
    .local v2, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    .line 2226
    .local v6, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2227
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 2228
    invoke-virtual {v6, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2229
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 2230
    .local v1, childItem:Lcom/android/launcher2/BaseItem;
    if-eqz v1, :cond_1

    iget-wide v7, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v9, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 2235
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childItem:Lcom/android/launcher2/BaseItem;
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :goto_1
    return-object v0

    .line 2227
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childItem:Lcom/android/launcher2/BaseItem;
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v6       #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2235
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childItem:Lcom/android/launcher2/BaseItem;
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2213
    .local v0, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 2214
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2215
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2217
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2218
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    :cond_1
    return-object v0
.end method

.method private getWorkspaceAndHotseatCellLayouts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2196
    .local v1, layouts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    .line 2197
    .local v3, screenCount:I
    const/4 v2, 0x0

    .local v2, screen:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2198
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2200
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    .line 2201
    .local v0, hotseat:Lcom/android/launcher2/Hotseat;
    if-eqz v0, :cond_1

    .line 2202
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2204
    :cond_1
    return-object v1
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 2
    .parameter "info"
    .parameter "folderIcon"
    .parameter "animateOpen"

    .prologue
    .line 2503
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2504
    const-string v0, "Launcher.Workspace"

    const-string v1, "Folder info marked as open, but associated folder is not open."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 2508
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    .line 2509
    return-void
.end method

.method private hitsPage(IFF)Z
    .locals 7
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 453
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 454
    .local v1, page:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 455
    const/4 v4, 0x2

    new-array v0, v4, [F

    aput p2, v0, v3

    aput p3, v0, v2

    .line 456
    .local v0, localXY:[F
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 457
    aget v4, v0, v3

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    aget v4, v0, v2

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 460
    .end local v0           #localXY:[F
    :goto_0
    return v2

    .restart local v0       #localXY:[F
    :cond_0
    move v2, v3

    .line 457
    goto :goto_0

    .end local v0           #localXY:[F
    :cond_1
    move v2, v3

    .line 460
    goto :goto_0
.end method

.method private initWorkspace()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 294
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 295
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 297
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 298
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    .line 299
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 301
    new-instance v1, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 321
    const/16 v1, 0x258

    iput v1, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 322
    new-instance v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 323
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 324
    .local v0, size:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 325
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    .line 326
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    .line 327
    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 329
    return-void
.end method

.method private isTouchActive()Z
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimationOnThis(I)Landroid/animation/Animator;
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 1809
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1810
    .local v0, s:Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1811
    return-object v0
.end method

.method private onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1352
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1353
    .local v8, position:[I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 1355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1356
    .local v7, pointerIndex:I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1357
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1359
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1363
    return-void

    .line 1359
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method private openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 6
    .parameter "folderItem"
    .parameter "icon"
    .parameter "animateOpen"

    .prologue
    const/4 v5, 0x1

    .line 2472
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2474
    .local v1, parentView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    .line 2475
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher2/Folder;->mFixedWidth:I

    .line 2476
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Folder;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 2477
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 2479
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v3, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    invoke-direct {v3, p0, p2, p3}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    .line 2480
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 2481
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    .line 2482
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    invoke-virtual {v3, v2, v1, p3}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    .line 2483
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2484
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v5, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2488
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 2490
    :cond_1
    return-void
.end method

.method private reConfigureHotseat()V
    .locals 10

    .prologue
    .line 2690
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    .line 2691
    .local v3, oldHotseat:Lcom/android/launcher2/Hotseat;
    if-nez v3, :cond_1

    .line 2726
    :cond_0
    :goto_0
    return-void

    .line 2693
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 2694
    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2695
    .local v4, parentOfHotSeat:Landroid/view/ViewGroup;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2696
    .local v1, idx:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2698
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03001a

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeFragment;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    .line 2701
    .local v0, hotSeat:Lcom/android/launcher2/Hotseat;
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2702
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/HomeFragment;->setHotseat(Lcom/android/launcher2/Hotseat;)V

    .line 2703
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 2705
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2706
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x5

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2711
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->allItems()Ljava/util/List;

    move-result-object v2

    .line 2712
    .local v2, items:Ljava/util/List;
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6, v2}, Lcom/android/launcher2/HomeFragment;->bindHotseat(Ljava/util/List;)V

    .line 2713
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v6

    const v7, 0x7f0f0016

    const v8, 0x7f0f0017

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/CellLayout;->applyAppIconViewStyles(II)V

    .line 2716
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2717
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    .line 2718
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 2721
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2722
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v7

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v7, v6}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    .line 2723
    .local v5, v:Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->restoreStateForOpenVisualize()V

    .line 2724
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    goto/16 :goto_0

    .line 2708
    .end local v2           #items:Ljava/util/List;
    .end local v5           #v:Lcom/android/launcher2/FolderIconView;
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method private reConfigureQuickLaunch()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2730
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    .line 2731
    .local v1, oldQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    if-nez v1, :cond_1

    .line 2773
    :cond_0
    :goto_0
    return-void

    .line 2732
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    .line 2734
    .local v4, quickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 2735
    invoke-virtual {v1}, Lcom/android/launcher2/QuickLaunch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2736
    .local v2, parentQL:Landroid/view/ViewGroup;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2737
    .local v0, idx:I
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2738
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030015

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeFragment;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/QuickLaunch;

    .line 2740
    .local v3, quickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2741
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6, v3}, Lcom/android/launcher2/HomeFragment;->setQuickLaunch(Lcom/android/launcher2/QuickLaunch;)V

    .line 2742
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 2743
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2744
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x5

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2749
    :goto_1
    if-nez v4, :cond_2

    .line 2750
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030016

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeFragment;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .end local v4           #quickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    check-cast v4, Lcom/android/launcher2/QuickLaunch;

    .line 2753
    .restart local v4       #quickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2754
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeFragment;->setQuickLaunchCamera(Lcom/android/launcher2/QuickLaunch;)V

    .line 2755
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 2756
    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x3

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2758
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 2759
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 2763
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    .line 2764
    .local v5, qvw:Lcom/android/launcher2/QuickViewWorkspace;
    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2765
    invoke-virtual {v3, v10}, Lcom/android/launcher2/QuickLaunch;->setAlpha(F)V

    .line 2766
    invoke-virtual {v3, v11}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 2768
    :cond_3
    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2769
    invoke-virtual {v4, v10}, Lcom/android/launcher2/QuickLaunch;->setAlpha(F)V

    .line 2770
    invoke-virtual {v4, v11}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    goto/16 :goto_0

    .line 2746
    .end local v5           #qvw:Lcom/android/launcher2/QuickViewWorkspace;
    :cond_4
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 2761
    :cond_5
    invoke-virtual {v4, v9}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    goto :goto_2
.end method

.method private setScrollDirection(I)V
    .locals 0
    .parameter "scrollDirection"

    .prologue
    .line 2164
    iput p1, p0, Lcom/android/launcher2/Workspace;->mScrollDirection:I

    .line 2165
    return-void
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 4

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    .line 891
    .local v0, enableWallpaperEffects:Z
    if-eqz v0, :cond_0

    .line 892
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    const-string v3, "syncWallpaperOffsetWithScroll"

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(FLjava/lang/String;)V

    .line 894
    :cond_0
    return-void
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 21

    .prologue
    .line 814
    const/4 v7, 0x1

    .line 815
    .local v7, overScrollWallpaper:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 820
    .local v2, isStaticWallpaper:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    move/from16 v17, v0

    .line 821
    .local v17, wallpaperTravelWidth:I
    if-nez v2, :cond_0

    .line 822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v17, v0

    .line 827
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f00

    invoke-virtual/range {v18 .. v20}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 836
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v14

    .line 837
    .local v14, scrollRange:I
    const/4 v13, 0x0

    .line 843
    .local v13, scrollProgressOffset:F
    if-eqz v2, :cond_1

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v6, v0

    .line 845
    .local v6, overScrollOffset:I
    int-to-float v0, v6

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    add-float v13, v13, v18

    .line 846
    mul-int/lit8 v18, v6, 0x2

    add-int v14, v14, v18

    .line 850
    .end local v6           #overScrollOffset:I
    :cond_1
    const/4 v3, 0x0

    .local v3, newScrollX:I
    const/4 v9, 0x0

    .local v9, pg:I
    const/4 v11, 0x0

    .local v11, scrollDelta:I
    const/16 v16, 0x0

    .line 851
    .local v16, totWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v10

    .line 855
    .local v10, pgCnt:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v18

    mul-int v16, v18, v10

    .line 856
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v18, v0

    if-lez v18, :cond_6

    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v18, v0

    rem-int v15, v18, v16

    .line 858
    .local v15, tempScrollX:I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v15, v0, :cond_5

    .line 859
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v18, v0

    sub-int v11, v15, v18

    .line 860
    const/high16 v18, 0x3f80

    int-to-float v0, v11

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    sub-float v8, v18, v19

    .line 861
    .local v8, perRemain:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v3, v0

    .line 873
    .end local v8           #perRemain:F
    .end local v10           #pgCnt:I
    .end local v15           #tempScrollX:I
    :cond_2
    :goto_1
    int-to-float v1, v3

    .line 875
    .local v1, adjustedScrollX:F
    int-to-float v0, v14

    move/from16 v18, v0

    div-float v18, v1, v18

    add-float v12, v18, v13

    .line 876
    .local v12, scrollProgress:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v17

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v18, v19

    .line 878
    .local v5, offsetInDips:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v5, v18

    .line 879
    .local v4, offset:F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 880
    const/4 v4, 0x0

    .line 887
    :cond_3
    return v4

    .line 830
    .end local v1           #adjustedScrollX:F
    .end local v3           #newScrollX:I
    .end local v4           #offset:F
    .end local v5           #offsetInDips:F
    .end local v9           #pg:I
    .end local v11           #scrollDelta:I
    .end local v12           #scrollProgress:F
    .end local v13           #scrollProgressOffset:F
    .end local v14           #scrollRange:I
    .end local v16           #totWidth:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f80

    invoke-virtual/range {v18 .. v20}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    goto/16 :goto_0

    .line 863
    .restart local v3       #newScrollX:I
    .restart local v9       #pg:I
    .restart local v10       #pgCnt:I
    .restart local v11       #scrollDelta:I
    .restart local v13       #scrollProgressOffset:F
    .restart local v14       #scrollRange:I
    .restart local v15       #tempScrollX:I
    .restart local v16       #totWidth:I
    :cond_5
    move v3, v15

    goto :goto_1

    .line 865
    .end local v15           #tempScrollX:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v18, v0

    if-gez v18, :cond_2

    .line 866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v18, v0

    rem-int v18, v18, v16

    add-int v3, v16, v18

    goto :goto_1

    .line 869
    .end local v10           #pgCnt:I
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method private wallpaperTravelToScreenHeightRatio(II)F
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 728
    const v0, 0x3f8ccccd

    return v0
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 734
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 741
    .local v4, aspectRatio:F
    const v0, 0x3fcccccd

    .line 742
    .local v0, ASPECT_RATIO_LANDSCAPE:F
    const/high16 v1, 0x3f20

    .line 743
    .local v1, ASPECT_RATIO_PORTRAIT:F
    const/high16 v2, 0x3fc0

    .line 744
    .local v2, WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE:F
    const v3, 0x3f99999a

    .line 751
    .local v3, WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT:F
    const v5, 0x3e9d89d7

    .line 754
    .local v5, x:F
    const v6, 0x3f80fc10

    .line 755
    .local v6, y:F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method abortConfigChanges()V
    .locals 1

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2889
    sget-object v0, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 2890
    return-void
.end method

.method addApplicationShortcut(Lcom/android/launcher2/HomeShortcutItem;Lcom/android/launcher2/CellLayout;JIIIZII)V
    .locals 9
    .parameter "info"
    .parameter "target"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "insertAtFirst"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 2026
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2027
    .local v1, cellXY:[I
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p2

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 2028
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v0, 0x0

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 2030
    invoke-virtual {p2, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 2031
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
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
    .line 1343
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1344
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1345
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1349
    :goto_0
    return-void

    .line 1347
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher2/HomeItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 404
    const/4 v1, 0x0

    .line 406
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v0

    .line 408
    .local v0, cpMgr:Lcom/android/launcher2/ContextualPageManager;
    iget v2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v0, v2}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 418
    .end local v0           #cpMgr:Lcom/android/launcher2/ContextualPageManager;
    :cond_0
    :goto_0
    return-void

    .line 411
    .restart local v0       #cpMgr:Lcom/android/launcher2/ContextualPageManager;
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 416
    .end local v0           #cpMgr:Lcom/android/launcher2/ContextualPageManager;
    .restart local v1       #layout:Lcom/android/launcher2/CellLayout;
    :goto_1
    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .restart local v1       #layout:Lcom/android/launcher2/CellLayout;
    goto :goto_1
.end method

.method public addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    return-void
.end method

.method bindWidgetsAfterConfigChange()V
    .locals 6

    .prologue
    .line 2917
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 2918
    .local v2, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    sget-object v5, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    if-ne v4, v5, :cond_1

    .line 2964
    :cond_0
    :goto_0
    return-void

    .line 2921
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2922
    sget-object v4, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 2923
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->finishBindingItems()V

    goto :goto_0

    .line 2925
    :cond_2
    sget-object v4, Lcom/android/launcher2/Workspace$19;->$SwitchMap$com$android$launcher2$Workspace$BindWidgetsState:[I

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace$BindWidgetsState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2957
    :cond_3
    :goto_1
    new-instance v4, Lcom/android/launcher2/Workspace$18;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$18;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2927
    :pswitch_0
    sget-object v4, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NONCURRENT_PAGES:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 2928
    const/4 v3, 0x0

    .line 2929
    .local v3, somethingBound:Z
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_5

    .line 2930
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 2931
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget v4, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v4, v5, :cond_4

    .line 2932
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    .line 2933
    const/4 v3, 0x1

    .line 2934
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2929
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2941
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :cond_5
    if-nez v3, :cond_3

    .line 2952
    .end local v0           #i:I
    .end local v3           #somethingBound:Z
    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 2953
    .restart local v0       #i:I
    if-ltz v0, :cond_3

    .line 2954
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, v4}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1

    .line 2925
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V
    .locals 27
    .parameter "state"
    .parameter "animated"
    .parameter "delay"
    .parameter "item"

    .prologue
    .line 1557
    const-string v3, "Launcher.StuckInEdit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v3, :cond_1

    .line 1559
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1560
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    .line 1806
    :cond_0
    :goto_0
    return-void

    .line 1564
    :cond_1
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1565
    const/16 p2, 0x0

    .line 1568
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 1569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1573
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1575
    const/high16 v18, 0x3f80

    .line 1576
    .local v18, finalScaleFactor:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1577
    .local v4, oldState:Lcom/android/launcher2/Workspace$State;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    .line 1578
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1580
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_f

    .line 1581
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    const v5, 0x3d75c28f

    add-float v18, v3, v5

    .line 1585
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v19

    .line 1586
    .local v19, hotseat:Lcom/android/launcher2/Hotseat;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 1587
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 1591
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHomeEditTitleBar()Landroid/view/ViewGroup;

    move-result-object v14

    .line 1593
    .local v14, HomeEditTitleBar:Landroid/view/ViewGroup;
    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1594
    .local v22, preAnimatorSet:Landroid/animation/AnimatorSet;
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1595
    .local v21, mainAnimatorSet:Landroid/animation/AnimatorSet;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    .line 1597
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    .local v7, preAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1600
    .local v13, mainAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 1602
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_9

    .line 1603
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 1605
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Hotseat;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_7

    .line 1606
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1607
    :cond_6
    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 1611
    :cond_7
    if-eqz v14, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_8

    .line 1612
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v23, v0

    .line 1614
    .local v23, titleBarHeight:F
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move/from16 v0, v23

    neg-float v10, v0

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v14, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1617
    .local v15, a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/launcher2/Workspace$13;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1623
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1628
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    .end local v23           #titleBarHeight:F
    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1629
    if-eqz v14, :cond_9

    if-eqz p4, :cond_9

    .line 1630
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1631
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v8, v9

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v14, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1634
    .restart local v15       #a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/launcher2/Workspace$14;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1641
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1643
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getTopBar()Landroid/view/View;

    move-result-object v24

    .line 1650
    .local v24, v:Landroid/view/View;
    if-eqz v24, :cond_a

    .line 1651
    if-eqz p2, :cond_10

    .line 1652
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1653
    const-string v3, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v8, 0x0

    aput v8, v5, v6

    move-object/from16 v0, v24

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1654
    .restart local v15       #a:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xdc

    invoke-virtual {v15, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1655
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    .end local v24           #v:Landroid/view/View;
    :cond_a
    :goto_2
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 1743
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v5, :cond_b

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-eqz v3, :cond_0

    .line 1747
    :cond_b
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_c

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_16

    .line 1748
    :cond_c
    const v3, 0x7f05001d

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    :cond_d
    :goto_3
    sget v17, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    .line 1761
    .local v17, duration:I
    sget-object v3, Lcom/android/launcher2/Workspace;->PAGE_ZOOM:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v18, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    .line 1762
    .local v26, zoomAnim:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1763
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    .line 1766
    .local v2, provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_19

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_19

    if-nez p4, :cond_19

    .line 1769
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_e

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 1770
    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 1583
    .end local v2           #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    .end local v7           #preAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v13           #mainAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v14           #HomeEditTitleBar:Landroid/view/ViewGroup;
    .end local v17           #duration:I
    .end local v19           #hotseat:Lcom/android/launcher2/Hotseat;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #mainAnimatorSet:Landroid/animation/AnimatorSet;
    .end local v22           #preAnimatorSet:Landroid/animation/AnimatorSet;
    .end local v26           #zoomAnim:Landroid/animation/ObjectAnimator;
    :cond_f
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    goto/16 :goto_1

    .line 1657
    .restart local v7       #preAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v13       #mainAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v14       #HomeEditTitleBar:Landroid/view/ViewGroup;
    .restart local v19       #hotseat:Lcom/android/launcher2/Hotseat;
    .restart local v21       #mainAnimatorSet:Landroid/animation/AnimatorSet;
    .restart local v22       #preAnimatorSet:Landroid/animation/AnimatorSet;
    .restart local v24       #v:Landroid/view/View;
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    .line 1661
    .end local v24           #v:Landroid/view/View;
    :cond_11
    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 1662
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_a

    .line 1664
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1665
    if-eqz v14, :cond_a

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_a

    .line 1666
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v23, v0

    .line 1668
    .restart local v23       #titleBarHeight:F
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move/from16 v0, v23

    neg-float v10, v0

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v14, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1671
    .restart local v15       #a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/launcher2/Workspace$15;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1677
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1685
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    .end local v23           #titleBarHeight:F
    :cond_12
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_14

    .line 1686
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_14

    .line 1687
    if-eqz v19, :cond_13

    .line 1688
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 1691
    :cond_13
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 1692
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 1694
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 1696
    if-eqz v14, :cond_14

    .line 1697
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1698
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v8, v9

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_3

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v14, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1701
    .restart local v15       #a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/launcher2/Workspace$16;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1708
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1710
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    :cond_14
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getTopBar()Landroid/view/View;

    move-result-object v24

    .line 1717
    .restart local v24       #v:Landroid/view/View;
    if-eqz v24, :cond_a

    .line 1718
    const-string v3, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v8, 0x3f80

    aput v8, v5, v6

    move-object/from16 v0, v24

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1719
    .restart local v15       #a:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xdc

    invoke-virtual {v15, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1720
    new-instance v3, Lcom/android/launcher2/Workspace$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/Workspace$17;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1735
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1738
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    .end local v24           #v:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    goto/16 :goto_2

    .line 1749
    :cond_16
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v3, :cond_17

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_d

    :cond_17
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_d

    .line 1751
    const v25, 0x7f05001e

    .line 1752
    .local v25, xmlId:I
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_18

    .line 1753
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v3

    if-eqz v3, :cond_18

    .line 1754
    const v25, 0x7f05001f

    .line 1756
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v25           #xmlId:I
    .restart local v2       #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    .restart local v17       #duration:I
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v26       #zoomAnim:Landroid/animation/ObjectAnimator;
    :cond_19
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    .line 1773
    invoke-interface/range {v2 .. v7}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectPreWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto/16 :goto_4

    .line 1777
    .end local v2           #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    :cond_1a
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1b
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    .line 1780
    .restart local v2       #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1c

    if-nez p4, :cond_1c

    .line 1783
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_1b

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1b

    .line 1784
    sget-object v11, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v12, p4

    invoke-interface/range {v8 .. v13}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_1c
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    .line 1787
    invoke-interface/range {v8 .. v13}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_5

    .line 1791
    .end local v2           #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    :cond_1d
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1792
    move/from16 v0, v17

    int-to-long v5, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1793
    move/from16 v0, p3

    int-to-long v5, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1795
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1796
    .local v16, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1803
    if-nez p2, :cond_0

    .line 1804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto/16 :goto_0

    .line 1614
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1631
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1668
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1698
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public closeFolder()V
    .locals 2

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 2494
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->disableChildBadges()V

    .line 2495
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->close(Z)V

    .line 2496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    .line 2498
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1054
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    .line 1055
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    .line 1056
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 1058
    :cond_0
    return-void
.end method

.method createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1924
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1926
    .local v5, outlineColor:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1927
    .local v6, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1928
    .local v3, height:I
    instance-of v7, p1, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 1929
    check-cast v4, Landroid/widget/ImageView;

    .line 1930
    .local v4, image:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v7}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1931
    .local v2, dragOutline:Landroid/graphics/Bitmap;
    int-to-float v7, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1932
    .local v1, d:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v6, v7

    .line 1933
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v3, v7

    .line 1936
    .end local v1           #d:F
    .end local v2           #dragOutline:Landroid/graphics/Bitmap;
    .end local v4           #image:Landroid/widget/ImageView;
    :cond_0
    add-int v7, v6, p3

    add-int v8, v3, p3

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1939
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1940
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1941
    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v7, v0, p2, v5, v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1942
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1943
    return-object v0
.end method

.method createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "spanX"
    .parameter "spanY"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1975
    .local v6, r:Landroid/content/res/Resources;
    const v9, 0x106000b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1976
    .local v5, outlineColor:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    move/from16 v0, p2

    invoke-virtual {v9, p1, v0}, Lcom/android/launcher2/CellLayout;->spanToPixel(II)[I

    move-result-object v8

    .line 1977
    .local v8, size:[I
    const/4 v9, 0x0

    aget v3, v8, v9

    .line 1978
    .local v3, iconWidth:I
    const/4 v9, 0x1

    aget v2, v8, v9

    .line 1979
    .local v2, iconHeight:I
    const/4 v7, 0x2

    .line 1980
    .local v7, rectRadius:I
    div-int/lit8 v4, p4, 0x2

    .line 1981
    .local v4, inset:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1984
    .local v1, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1985
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v4

    int-to-float v11, v4

    sub-int v12, v3, v4

    int-to-float v12, v12

    sub-int v13, v2, v4

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v10, 0x4000

    const/high16 v11, 0x4000

    iget-object v12, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1987
    sget-object v9, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0, v5, v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1988
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1989
    return-object v1
.end method

.method createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1970
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 1971
    .local v0, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const v8, 0x3f060a92

    .line 616
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_2

    .line 617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 618
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 620
    .local v1, deltaY:F
    float-to-double v4, v1

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 622
    .local v3, theta:F
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 626
    :cond_1
    const v4, 0x3f860a92

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 643
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v3           #theta:F
    :cond_2
    :goto_0
    return-void

    .line 629
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    .restart local v3       #theta:F
    :cond_3
    cmpl-float v4, v3, v8

    if-lez v4, :cond_4

    .line 634
    sub-float/2addr v3, v8

    .line 635
    div-float v4, v3, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 637
    .local v2, extraRatio:F
    const/high16 v4, 0x3f80

    const/high16 v5, 0x4080

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-super {p0, p1, v4}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 640
    .end local v2           #extraRatio:F
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    iget v0, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->screenScrolled(I)V

    .line 1289
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1290
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-eqz v0, :cond_1

    .line 1292
    :goto_0
    return-void

    .line 1291
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 502
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 5
    .parameter "hostView"
    .parameter "layout"

    .prologue
    .line 1478
    instance-of v2, p2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1480
    const-string v2, "Launcher.StuckInEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterWidgetResizeMode state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    new-instance v1, Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    .line 1482
    .local v1, sizes:Lcom/android/launcher2/WidgetSizes;
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/res/Resources;)V

    .line 1483
    invoke-virtual {v1}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1484
    new-instance v0, Lcom/android/launcher2/Workspace$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    .line 1506
    .local v0, resizeRunnable:Ljava/lang/Runnable;
    new-instance v2, Lcom/android/launcher2/Workspace$12;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1522
    const-string v2, "Launcher.StuckInEdit"

    const-string v3, "enterWidgetResizeMode switching to resize mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 6

    .prologue
    .line 1528
    const-string v3, "Launcher.StuckInEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitWidgetResizeMode State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v3, v4, :cond_1

    .line 1538
    :cond_0
    return-void

    .line 1530
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1531
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1532
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 1533
    .local v2, l:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1534
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    .line 1535
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->commitDeltas()V

    .line 1531
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBackgroundDarken()F
    .locals 1

    .prologue
    .line 1077
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0077

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "v"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 267
    if-eqz p1, :cond_3

    .line 268
    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v0, :cond_2

    .line 272
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 283
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v0

    .line 275
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 279
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    const/4 v2, 0x0

    .line 2049
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2050
    return-void
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1212
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    .line 1213
    .local v0, fsf:Lcom/android/launcher2/ScalarAnimator;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1215
    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1217
    :cond_0
    return v1
.end method

.method public getHorizontalWallpaperOffset()F
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    return v0
.end method

.method public getIsDragOccuring()Z
    .locals 1

    .prologue
    .line 2685
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    .prologue
    .line 2101
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    .prologue
    .line 2106
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher2/Workspace$State;
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 11
    .parameter "aRect"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1295
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1296
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1297
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    .line 1298
    .local v2, hs:Lcom/android/launcher2/Hotseat;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1299
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_0

    .line 1300
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1302
    :cond_0
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v10, :cond_1

    .line 1303
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1306
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v0

    .line 1307
    .local v0, bar:Lcom/android/launcher2/HomeEditBar;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1308
    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getBarPosition()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1319
    :cond_2
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v3

    .line 1320
    .local v3, ql:Lcom/android/launcher2/QuickLaunch;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1321
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_3

    .line 1322
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1324
    :cond_3
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v10, :cond_4

    .line 1325
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1328
    :cond_4
    return v9

    .line 1310
    .end local v3           #ql:Lcom/android/launcher2/QuickLaunch;
    :pswitch_1
    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1315
    :pswitch_2
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getVerticalWallpaperOffset()F
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v0

    return v0
.end method

.method protected hitsNextPage(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 474
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 467
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;
    .locals 12
    .parameter "insertAt"
    .parameter "showEmptyMessage"

    .prologue
    const/4 v11, -0x1

    .line 2995
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 2998
    .local v2, hf:Lcom/android/launcher2/HomeFragment;
    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030045

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2999
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3000
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 3001
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_0

    .line 3002
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3005
    .restart local v5       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3006
    if-nez p2, :cond_1

    .line 3007
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3009
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 3010
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    .line 3011
    .local v3, homePageIndex:I
    if-gt p1, v3, :cond_2

    .line 3012
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Lcom/android/launcher2/HomeFragment;->setHomeScreenAt(I)V

    .line 3014
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->saveScreenInfo()V

    .line 3017
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3019
    .local v7, updatedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 3020
    .local v6, totalScreens:I
    add-int/lit8 v4, p1, 0x1

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 3021
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3022
    .local v1, clc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, v4, v7}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 3020
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3024
    .end local v1           #clc:Lcom/android/launcher2/CellLayoutChildren;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 3025
    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInResizeMode()Z
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "child"
    .parameter "outLocalPoint"

    .prologue
    .line 2653
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_1

    instance-of v3, p3, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v3, :cond_1

    move-object v2, p3

    .line 2654
    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 2655
    .local v2, page:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 2656
    .local v0, localX:F
    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 2657
    .local v1, localY:F
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->isPointInRegion(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2658
    if-eqz p4, :cond_0

    .line 2659
    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 2661
    :cond_0
    const/4 v3, 0x1

    .line 2664
    .end local v0           #localX:F
    .end local v1           #localY:F
    .end local v2           #page:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher2/SmoothPagedView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v3

    goto :goto_0
.end method

.method launchAllAppsIcon()V
    .locals 2

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    if-eqz v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getAllAppsIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFragment;->onClickAllAppsButton(Landroid/view/View;)V

    .line 2620
    :cond_0
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 5
    .parameter "v"
    .parameter "xy"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2038
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2039
    .local v0, cachedInverseMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2040
    aget v1, p2, v3

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v3

    .line 2041
    aget v1, p2, v4

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v4

    .line 2042
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2043
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 2322
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    .line 2323
    .local v0, homeScreenIndex:I
    if-eqz p1, :cond_0

    .line 2324
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2328
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2329
    return-void

    .line 2326
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public newPage(Z)I
    .locals 7
    .parameter "showEmptyMessage"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2967
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v1

    .line 2968
    .local v1, cpMgr:Lcom/android/launcher2/ContextualPageManager;
    const/high16 v2, -0x8000

    .line 2970
    .local v2, insertAt:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    move v0, v3

    .line 2972
    .local v0, canCreatePage:Z
    :goto_0
    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v5, :cond_0

    .line 2973
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v0, v3

    .line 2974
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 2975
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v3, 0x1

    .line 2977
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2979
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v4

    sub-int v2, v3, v4

    .line 2981
    :cond_1
    invoke-virtual {p0, v2, p1}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    .line 2983
    :cond_2
    return v2

    .end local v0           #canCreatePage:Z
    :cond_3
    move v0, v4

    .line 2970
    goto :goto_0

    .restart local v0       #canCreatePage:Z
    :cond_4
    move v0, v4

    .line 2973
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1225
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    .line 1226
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1227
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1228
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1229
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 2354
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2355
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2380
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 2359
    .restart local p1
    :cond_1
    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 2360
    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 2361
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    .line 2362
    check-cast v1, Lcom/android/launcher2/FolderItem;

    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    check-cast p1, Lcom/android/launcher2/FolderIconView;

    .end local p1
    invoke-direct {p0, v1, p1, v9}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0

    .line 2363
    .restart local v1       #item:Lcom/android/launcher2/BaseItem;
    .restart local p1
    :cond_2
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_3

    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_0

    .line 2366
    :cond_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_4

    .line 2367
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move-object v4, v3

    .line 2371
    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v0, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 2372
    .local v0, intent:Landroid/content/Intent;
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 2373
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2374
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v7

    aget v6, v2, v9

    aget v7, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2376
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher2/HomeFragment;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 20
    .parameter "newConfig"

    .prologue
    .line 2776
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeFragment;->setWorkspaceLoading()V

    .line 2781
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2783
    .local v13, r:Landroid/content/res/Resources;
    const v17, 0x7f0a0028

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 2784
    const v17, 0x7f0a0029

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 2785
    const v17, 0x7f0c0011

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    .line 2786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 2788
    const v17, 0x7f0c0010

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 2789
    const v17, 0x7f0c0019

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 2791
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2792
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2800
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 2801
    .local v7, context:Landroid/content/Context;
    const v17, 0x7f0f0014

    sget-object v18, Landroid/R$styleable;->TextView:[I

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 2802
    .local v3, aivTextView:Landroid/content/res/TypedArray;
    const v17, 0x7f0f0014

    sget-object v18, Landroid/R$styleable;->View:[I

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2804
    .local v4, aivView:Landroid/content/res/TypedArray;
    const v17, 0x7f0f0015

    sget-object v18, Landroid/R$styleable;->TextView:[I

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2805
    .local v8, fivTextView:Landroid/content/res/TypedArray;
    const v17, 0x7f0f0015

    sget-object v18, Landroid/R$styleable;->View:[I

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2807
    .local v9, fivView:Landroid/content/res/TypedArray;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v14

    .line 2808
    .local v14, screenCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v14, :cond_7

    .line 2809
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 2811
    .local v6, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2813
    .local v12, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    const v17, 0x7f0c000f

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2814
    const v17, 0x7f0c000d

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2815
    const v17, 0x7f0c000e

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2816
    invoke-virtual {v6, v12}, Lcom/android/launcher2/CellLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2818
    const v17, 0x7f0c0013

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher2/CellLayout;->setCellWidth(I)V

    .line 2819
    const v17, 0x7f0c0014

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher2/CellLayout;->setCellHeight(I)V

    .line 2820
    const v17, 0x7f0c0015

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher2/CellLayout;->setGapX(I)V

    .line 2821
    const v17, 0x7f0c0016

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher2/CellLayout;->setGapY(I)V

    .line 2822
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    .line 2823
    sget-boolean v17, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v17, :cond_1

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v17

    if-eqz v17, :cond_1

    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/launcher2/ContextualPageManager;->reconfigurationContextualPageLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2827
    :cond_1
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v17

    add-int/lit8 v11, v17, -0x1

    .local v11, j:I
    :goto_1
    if-ltz v11, :cond_6

    .line 2828
    invoke-virtual {v6, v11}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 2829
    .local v5, childView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 2830
    .local v16, tag:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/HomeWidgetItem;

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 2832
    :cond_2
    invoke-virtual {v6, v11}, Lcom/android/launcher2/CellLayout;->removeViewOnPageAt(I)V

    move-object/from16 v17, v16

    .line 2833
    check-cast v17, Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object/from16 v17, v16

    .line 2834
    check-cast v17, Lcom/android/launcher2/HomeItem;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    move-object/from16 v17, v0

    check-cast v16, Lcom/android/launcher2/HomeItem;

    .end local v16           #tag:Ljava/lang/Object;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2837
    :cond_3
    instance-of v0, v5, Lcom/android/launcher2/FolderIconView;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 2838
    invoke-static {v9, v5}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 2839
    check-cast v5, Landroid/widget/TextView;

    .end local v5           #childView:Landroid/view/View;
    invoke-static {v8, v5}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 2827
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 2840
    .restart local v5       #childView:Landroid/view/View;
    :cond_5
    instance-of v0, v5, Lcom/android/launcher2/AppIconView;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2841
    invoke-static {v4, v5}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 2842
    check-cast v5, Landroid/widget/TextView;

    .end local v5           #childView:Landroid/view/View;
    invoke-static {v3, v5}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    goto :goto_2

    .line 2808
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 2846
    .end local v6           #cl:Lcom/android/launcher2/CellLayout;
    .end local v11           #j:I
    .end local v12           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 2847
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2849
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2850
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    .line 2854
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->reConfigureHotseat()V

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeFragment;->finishBindingItems()V

    .line 2866
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->handleScrollOnOrientationChange()V

    .line 2867
    const v17, 0x7f0c0018

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const v18, 0x7f0c0017

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    .line 2870
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 2871
    .local v15, size:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2872
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    .line 2873
    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    .line 2874
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v18

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 2877
    sget-boolean v17, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v17, :cond_8

    .line 2878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeFragment;->setupContextualPageMarker()V

    .line 2880
    :cond_8
    return-void

    .line 2863
    .end local v15           #size:Landroid/graphics/Point;
    :cond_9
    sget-object v17, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_CURRENT_PAGE:Lcom/android/launcher2/Workspace$BindWidgetsState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    goto/16 :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1233
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onDetachedFromWindow()V

    .line 1234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1235
    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 1450
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->disableRollNavigation()V

    .line 1452
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1453
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v0, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1455
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 1456
    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 1458
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_3

    .line 1459
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_5

    .line 1460
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1461
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    if-eqz v0, :cond_3

    .line 1462
    :cond_2
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    .line 1472
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeFragment;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    .line 1464
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1465
    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_1

    .line 1469
    :cond_5
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_1
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1418
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-eqz v0, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    if-eqz p1, :cond_0

    .line 1420
    const-string v0, "Launcher.StuckInEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragStartedWithItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    new-instance v0, Lcom/android/launcher2/Workspace$10;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1440
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->enableRollNavigation()V

    .line 1441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1277
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    .line 1278
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1280
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1281
    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2112
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_1

    .line 2113
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return v3

    .line 2117
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    .line 2119
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2120
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2121
    .local v2, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 2122
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2126
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2127
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2128
    .restart local v2       #r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher2/QuickLaunch;->getHitRect(Landroid/graphics/Rect;)V

    .line 2129
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2134
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/launcher2/Workspace;->setScrollDirection(I)V

    .line 2136
    const/4 v3, 0x0

    .line 2137
    .local v3, result:Z
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_0

    .line 2138
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez p3, :cond_6

    move v4, v5

    :goto_1
    add-int v1, v7, v4

    .line 2139
    .local v1, page:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2140
    if-ne v1, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 2143
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2145
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 2147
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_5

    .line 2148
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2150
    :cond_5
    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2151
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2155
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2156
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 2157
    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    .end local v1           #page:I
    :cond_6
    move v4, v6

    .line 2138
    goto :goto_1

    .line 2141
    .restart local v1       #page:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ne v1, v4, :cond_4

    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onExitScrollArea()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2175
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    .line 2176
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_1

    .line 2177
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2180
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2181
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2185
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2187
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 2189
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 534
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_1

    move v3, v5

    .line 607
    :cond_0
    :goto_0
    return v3

    .line 537
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-eqz v4, :cond_2

    move v3, v5

    .line 538
    goto :goto_0

    .line 540
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 602
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 603
    .local v3, r:Z
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 604
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setAllowLongPress(Z)V

    .line 605
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelLongPress()V

    goto :goto_0

    .line 542
    .end local v3           #r:Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    .line 544
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    .line 548
    :pswitch_2
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v4, :cond_4

    .line 549
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v4

    if-nez v4, :cond_4

    .line 550
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 553
    :cond_4
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    .line 556
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 559
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    if-eqz v4, :cond_3

    .line 560
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 563
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v4, :cond_5

    .line 564
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->snapToDestination()V

    .line 566
    :cond_5
    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 572
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    .line 573
    .local v1, dy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 574
    .local v0, dx:I
    iget v4, p0, Lcom/android/launcher2/Workspace;->mMovePinchStart:I

    mul-int v6, v1, v1

    mul-int v7, v0, v0

    add-int/2addr v6, v7

    sub-int v2, v4, v6

    .line 576
    .local v2, pinchDelta:I
    const/16 v4, 0x2710

    if-le v2, v4, :cond_3

    .line 577
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 578
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher2/HomeFragment;->openQuickViewWorkspace(Landroid/os/Bundle;Z)V

    .line 579
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    goto/16 :goto_0

    .line 586
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #pinchDelta:I
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-gt v4, v7, :cond_3

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto/16 :goto_1

    .line 590
    :pswitch_5
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    .line 593
    .restart local v1       #dy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 595
    .restart local v0       #dx:I
    mul-int v4, v1, v1

    mul-int v6, v0, v0

    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/Workspace;->mMovePinchStart:I

    .line 597
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    goto/16 :goto_1

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1239
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1240
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1242
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 1246
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    if-eqz v2, :cond_1

    .line 1247
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1250
    new-instance v2, Lcom/android/launcher2/Workspace$9;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1261
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:Z

    .line 1262
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:Z

    .line 1263
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1264
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1265
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1266
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:Z

    .line 1273
    :cond_2
    :goto_0
    return-void

    .line 1268
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    const v5, 0x3d75c28f

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    mul-float v1, v2, v3

    .line 1269
    .local v1, childTranslateDueToScale:F
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget v3, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 1270
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:Z

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .parameter "v"

    .prologue
    .line 2571
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onLongClick(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2572
    const/4 v11, 0x1

    .line 2611
    :goto_0
    return v11

    .line 2578
    :cond_0
    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_2

    .line 2581
    const/4 v11, 0x2

    new-array v0, v11, [I

    .line 2582
    .local v0, cellLayoutXY:[I
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 2583
    .local v8, pagedViewXY:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2584
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationInWindow([I)V

    .line 2586
    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    float-to-int v11, v11

    const/4 v12, 0x0

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    aget v12, v0, v12

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int v9, v11, v12

    .line 2587
    .local v9, x:I
    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    float-to-int v11, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v0, v12

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int v10, v11, v12

    .local v10, y:I
    move-object v4, p1

    .line 2589
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 2591
    .local v4, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v5

    .line 2592
    .local v5, cw:I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v3

    .line 2593
    .local v3, ch:I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v7

    .line 2594
    .local v7, gw:I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v6

    .line 2596
    .local v6, gh:I
    add-int v11, v5, v7

    div-int v1, v9, v11

    .line 2597
    .local v1, cellX:I
    add-int v11, v3, v6

    div-int v2, v10, v11

    .line 2602
    .local v2, cellY:I
    add-int v11, v5, v7

    mul-int/2addr v11, v1

    div-int/lit8 v12, v7, 0x2

    sub-int/2addr v11, v12

    sub-int v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v12, v3, v6

    mul-int/2addr v12, v2

    div-int/lit8 v13, v6, 0x2

    sub-int/2addr v12, v13

    sub-int v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v11, v12, :cond_1

    .line 2603
    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v4, v11, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2604
    const/4 v11, 0x1

    goto :goto_0

    .line 2606
    :cond_1
    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v4, v1, v11}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2607
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2611
    .end local v0           #cellLayoutXY:[I
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    .end local v3           #ch:I
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v5           #cw:I
    .end local v6           #gh:I
    .end local v7           #gw:I
    .end local v8           #pagedViewXY:[I
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 647
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageBeginMoving()V

    .line 648
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 649
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 650
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 651
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 654
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 655
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 658
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    .line 659
    .local v1, qlCamera:Lcom/android/launcher2/QuickLaunch;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 660
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 663
    :cond_2
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_5

    .line 664
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getContextualPageMarker()Ljava/util/ArrayList;

    move-result-object v3

    .line 665
    .local v3, vPmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 666
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 649
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #qlCamera:Lcom/android/launcher2/QuickLaunch;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #vPmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 669
    .restart local v1       #qlCamera:Lcom/android/launcher2/QuickLaunch;
    :cond_5
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 4

    .prologue
    .line 673
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageEndMoving()V

    .line 674
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 675
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 676
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 680
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 681
    new-instance v3, Lcom/android/launcher2/Workspace$4;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 689
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 690
    new-instance v3, Lcom/android/launcher2/Workspace$5;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 697
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    .line 698
    .local v0, qlCamera:Lcom/android/launcher2/QuickLaunch;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 699
    new-instance v3, Lcom/android/launcher2/Workspace$6;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 706
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    .line 707
    .local v1, qw:Lcom/android/launcher2/QuickViewWorkspace;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 708
    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 711
    :cond_4
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_5

    .line 712
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getContextualPageMarker()Ljava/util/ArrayList;

    move-result-object v2

    .line 713
    .local v2, vPmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v3, Lcom/android/launcher2/Workspace$7;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 723
    .end local v2           #vPmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1334
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1335
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1337
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2073
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2074
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 2075
    return-void
.end method

.method public onScrollComplete()V
    .locals 0

    .prologue
    .line 2169
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onScrollComplete()V

    .line 2170
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->onExitScrollArea()V

    .line 2171
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 525
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 529
    :goto_0
    return v0

    .line 511
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    .line 529
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 514
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v0, :cond_0

    .line 515
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    move v0, v1

    .line 516
    goto :goto_0

    .line 520
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v1

    .line 521
    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onViewAdded(Landroid/view/View;)V

    .line 339
    instance-of v1, p1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayoutWithResizableWidgets children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 342
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 343
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 344
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setClickable(Z)V

    .line 347
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v1}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 350
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 354
    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->onWindowVisibilityChanged(I)V

    .line 494
    return-void
.end method

.method pauseScreen(I)V
    .locals 8
    .parameter "which"

    .prologue
    .line 2512
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 2513
    :cond_0
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR: trying to pause screen on invalid page index. passed in page number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", children count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    :cond_1
    return-void

    .line 2518
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 2519
    .local v0, cl:Lcom/android/launcher2/CellLayoutChildren;
    if-eqz v0, :cond_1

    .line 2521
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 2522
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2523
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2524
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2525
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v5, :cond_3

    .line 2526
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    check-cast v3, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v6, v5, v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    .line 2522
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public releaseShadows()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2623
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 2624
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2625
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 2626
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 2628
    .local v5, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2629
    .local v0, ccout:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 2630
    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2631
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 2632
    check-cast v7, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 2633
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/BaseItem;

    iput-object v8, v7, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 2629
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2624
    .end local v6           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2637
    .end local v0           #ccout:I
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v4           #j:I
    .end local v5           #l:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method removeItems(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2239
    .local p1, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 2241
    .local v4, item:Lcom/android/launcher2/HomeItem;
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2244
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/launcher2/HomeItem;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    .line 2245
    .local v0, cellLayouts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/CellLayout;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 2246
    .restart local v4       #item:Lcom/android/launcher2/HomeItem;
    iget-wide v6, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 2250
    iget-wide v6, v4, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v6, v7}, Lcom/android/launcher2/HomeFragment;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v1

    .line 2251
    .local v1, folder:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v1, :cond_1

    .line 2252
    invoke-virtual {v1, v4}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 2260
    .end local v1           #folder:Lcom/android/launcher2/HomeFolderItem;
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_1

    .line 2255
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 2256
    .local v5, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 2263
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/launcher2/HomeItem;
    .end local v5           #layout:Lcom/android/launcher2/CellLayout;
    :cond_4
    return-void
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1545
    return-void
.end method

.method public restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z
    .locals 2
    .parameter "openFolder"

    .prologue
    const/4 v1, 0x0

    .line 2560
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 2561
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2562
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0           #v:Landroid/view/View;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    .line 2563
    const/4 v1, 0x1

    .line 2565
    :cond_0
    return v1
.end method

.method resumeScreen(I)V
    .locals 8
    .parameter "which"

    .prologue
    .line 2533
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2534
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    if-nez v0, :cond_1

    .line 2547
    :cond_0
    return-void

    .line 2535
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 2536
    .local v1, cl:Lcom/android/launcher2/CellLayoutChildren;
    if-eqz v1, :cond_0

    .line 2538
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2539
    .local v3, itemCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2540
    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2541
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2542
    .local v4, tag:Ljava/lang/Object;
    instance-of v6, v4, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v6, :cond_2

    .line 2543
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    check-cast v4, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-virtual {v7, v6, v4}, Lcom/android/launcher2/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    .line 2539
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected rotateFolder()V
    .locals 1

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 2670
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->handleOrientationChange()V

    .line 2672
    :cond_0
    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 2079
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 2080
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 2082
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2083
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 2084
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 2086
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 2090
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 2091
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 2093
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2094
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 2095
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 2097
    :cond_1
    return-void
.end method

.method public sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "provider"
    .parameter "appWidgetId"

    .prologue
    .line 2550
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2551
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2552
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2553
    const-string v1, "widgetspanx"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2554
    const-string v1, "widgetspany"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2555
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2556
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 2557
    return-void
.end method

.method setAllEmptyMessageVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 2676
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 2677
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2678
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2679
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeFragment;->determineEmptyPageMsgVisibility(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 2677
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2679
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 2681
    .end local v0           #cell:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method public setBackgroundDarken(F)V
    .locals 2
    .parameter "darken"

    .prologue
    .line 1072
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    .line 1073
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getDarkenView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getDarkenView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1075
    :cond_0
    return-void
.end method

.method public setDragOutline(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1446
    return-void
.end method

.method public setHorizontalWallpaperOffset(F)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    const-string v1, "setHorizontalWallpaperOffset"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(FLjava/lang/String;)V

    .line 808
    return-void
.end method

.method public setPageZoom(F)V
    .locals 5
    .parameter "zoom"

    .prologue
    const/high16 v4, 0x3f80

    .line 2642
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 2643
    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v3, v4, v3

    div-float v0, v2, v3

    .line 2644
    .local v0, p:F
    iget v2, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 2645
    .local v1, top:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setPageIndicatorTop(I)V

    .line 2647
    .end local v0           #p:F
    .end local v1           #top:I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->setPageZoom(F)V

    .line 2648
    return-void
.end method

.method public setVerticalWallpaperOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalY(F)V

    .line 802
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 5

    .prologue
    .line 764
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 765
    .local v2, size:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 766
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 767
    .local v0, maxDim:I
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 771
    .local v1, minDim:I
    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v3, :cond_0

    .line 772
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 773
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 792
    :goto_0
    new-instance v3, Lcom/android/launcher2/Workspace$8;

    const-string v4, "setWallpaperDimension"

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace$8;->start()V

    .line 798
    return-void

    .line 785
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 786
    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 787
    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenHeightRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0

    .line 789
    :cond_1
    int-to-float v3, v1

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 790
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method setup(Lcom/android/launcher2/HomeFragment;)V
    .locals 1
    .parameter "home"

    .prologue
    .line 2061
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 2063
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 2067
    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 2068
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 2069
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1061
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1064
    :cond_0
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 926
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(III)V

    .line 927
    return-void
.end method

.method startDrag(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 1997
    if-nez p1, :cond_1

    .line 2021
    :cond_0
    :goto_0
    return-void

    .line 1999
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2001
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2004
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2006
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showMotionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2012
    :cond_3
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->enableRollNavigation()V

    .line 2015
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v0, :cond_4

    .line 2016
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SamsungAppWidgetInfo;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    .line 2019
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 2342
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2343
    .local v0, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    .line 2344
    return-void
.end method

.method public syncPages()V
    .locals 3

    .prologue
    .line 2333
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 2334
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2335
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2336
    .local v2, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsOnPage()V

    .line 2334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2338
    .end local v2           #l:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public turnOffEmptyPageMsg()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3035
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3036
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->setShowEmptyPageMessagePref(Z)V

    .line 3037
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3038
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3039
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SHOW_EMPTY_PAGE_MSG"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3040
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3041
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 3043
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 21
    .parameter "page"
    .parameter "scrollProgress"

    .prologue
    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v7

    .line 1095
    .local v7, factor:F
    const/high16 v18, 0x3f80

    cmpl-float v18, p2, v18

    if-gtz v18, :cond_0

    const/high16 v18, -0x4080

    cmpg-float v18, p2, v18

    if-gez v18, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    move/from16 v18, v0

    const v19, 0x3f4ccccd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v17

    .line 1100
    .local v17, zoom:F
    const/high16 v18, 0x3f80

    const v19, 0x3f4ccccd

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v20

    invoke-static/range {v18 .. v20}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v18

    mul-float v17, v17, v18

    .line 1102
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 1103
    .local v9, i:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v13

    .line 1106
    .local v13, scrollAlpha:F
    const/high16 v18, 0x3f80

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v19

    sub-float v18, v18, v19

    const v19, 0x3f333333

    mul-float v18, v18, v19

    const v19, 0x3e99999a

    add-float v8, v18, v19

    .local v8, fastScrollBgAlpha:F
    move-object/from16 v5, p1

    .line 1108
    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 1112
    .local v5, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1114
    const/4 v4, 0x0

    .line 1118
    .local v4, blendBackground:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v18

    or-int v4, v4, v18

    .line 1122
    const v18, 0x3e4ccccd

    cmpl-float v18, v7, v18

    if-lez v18, :cond_2

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3f19999a

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_2

    .line 1123
    const/4 v4, 0x1

    .line 1126
    :cond_2
    sget-boolean v18, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v18, :cond_7

    .line 1127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1128
    .local v6, curCl:Lcom/android/launcher2/CellLayout;
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1130
    .local v2, absScrollProgress:F
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v18

    if-eqz v18, :cond_6

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeFragment;->getContextualPageMarker()Ljava/util/ArrayList;

    move-result-object v16

    .line 1133
    .local v16, vPmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-eqz v18, :cond_3

    .line 1134
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 1135
    .local v15, vPm:Landroid/view/View;
    if-eqz v15, :cond_3

    .line 1136
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    neg-float v0, v2

    move/from16 v18, v0

    const/high16 v19, 0x4396

    mul-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1138
    const/high16 v18, 0x3f80

    sub-float v18, v2, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1143
    .end local v15           #vPm:Landroid/view/View;
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v18

    if-nez v18, :cond_4

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    sub-float v19, v19, v2

    sget v20, Lcom/android/launcher2/ContextualPageManager;->CP_DARKEN_AMOUNT:F

    mul-float v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/HomeFragment;->setDarkenViewAlpha(F)V

    .line 1153
    .end local v16           #vPmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    :goto_1
    invoke-static {v13, v8, v7}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v18

    const/high16 v19, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeFragment;->getDarkenView()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getAlpha()F

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 1163
    .end local v2           #absScrollProgress:F
    .end local v6           #curCl:Lcom/android/launcher2/CellLayout;
    :goto_2
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v20

    sub-float v19, v19, v20

    const v20, 0x3e4ccccd

    add-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1165
    .local v3, alpha:F
    const/high16 v18, 0x41a0

    const/high16 v19, 0x4170

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v18

    mul-float v12, v18, p2

    .line 1167
    .local v12, rotation:F
    mul-float v18, v7, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v14, v18, v19

    .line 1168
    .local v14, translationX:F
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v11

    .line 1169
    .local v11, pageWidth:I
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v10

    .line 1171
    .local v10, pageHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1172
    int-to-float v0, v10

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1173
    int-to-float v0, v11

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1197
    :goto_3
    invoke-virtual {v5, v3}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 1198
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1199
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 1202
    const/high16 v18, 0x3f80

    sub-float v18, v18, v17

    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x3f00

    mul-float v18, v18, v19

    add-float v14, v14, v18

    .line 1206
    :cond_5
    :goto_4
    invoke-virtual {v5, v14}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1207
    invoke-virtual {v5, v12}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    goto/16 :goto_0

    .line 1149
    .end local v3           #alpha:F
    .end local v10           #pageHeight:I
    .end local v11           #pageWidth:I
    .end local v12           #rotation:F
    .end local v14           #translationX:F
    .restart local v2       #absScrollProgress:F
    .restart local v6       #curCl:Lcom/android/launcher2/CellLayout;
    :cond_6
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v18

    if-eqz v18, :cond_4

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v18, v0

    sget v19, Lcom/android/launcher2/ContextualPageManager;->CP_DARKEN_AMOUNT:F

    mul-float v19, v19, v2

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/HomeFragment;->setDarkenViewAlpha(F)V

    goto/16 :goto_1

    .line 1158
    .end local v2           #absScrollProgress:F
    .end local v6           #curCl:Lcom/android/launcher2/CellLayout;
    :cond_7
    invoke-static {v13, v8, v7}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v18

    const/high16 v19, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    goto/16 :goto_2

    .line 1175
    .restart local v3       #alpha:F
    .restart local v10       #pageHeight:I
    .restart local v11       #pageWidth:I
    .restart local v12       #rotation:F
    .restart local v14       #translationX:F
    :cond_8
    if-nez v9, :cond_9

    const/16 v18, 0x0

    cmpg-float v18, p2, v18

    if-gez v18, :cond_9

    .line 1177
    sget v18, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1178
    sget v18, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v19

    div-float v12, v18, v19

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v14, v0

    .line 1181
    const/high16 v17, 0x3f80

    .line 1182
    const/high16 v3, 0x3f80

    goto/16 :goto_3

    .line 1183
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_a

    const/16 v18, 0x0

    cmpl-float v18, p2, v18

    if-lez v18, :cond_a

    .line 1185
    const/high16 v18, 0x3f80

    sget v19, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    sub-float v18, v18, v19

    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1186
    sget v18, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v19

    div-float v12, v18, v19

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v14, v0

    .line 1189
    const/high16 v17, 0x3f80

    .line 1190
    const/high16 v3, 0x3f80

    goto/16 :goto_3

    .line 1192
    :cond_a
    int-to-float v0, v10

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1193
    int-to-float v0, v11

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    goto/16 :goto_3

    .line 1203
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1204
    const/high16 v18, 0x3f80

    sub-float v18, v18, v17

    int-to-float v0, v10

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x3f00

    mul-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    goto/16 :goto_4
.end method

.method updateShortcuts(Ljava/util/List;)V
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2266
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v3

    .line 2267
    .local v3, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 2268
    .local v11, layout:Lcom/android/launcher2/CellLayoutChildren;
    iget-object v14, v11, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/BaseItem;

    .line 2269
    .local v10, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v11, v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v13

    .line 2270
    .local v13, view:Landroid/view/View;
    instance-of v14, v10, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v14, :cond_6

    move-object v9, v10

    .line 2271
    check-cast v9, Lcom/android/launcher2/HomeShortcutItem;

    .line 2272
    .local v9, info:Lcom/android/launcher2/HomeShortcutItem;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 2273
    .local v0, app:Lcom/android/launcher2/HomeItem;
    if-ne v0, v9, :cond_2

    .line 2274
    iget-object v14, v9, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_3

    .line 2275
    iget-object v14, p0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v14}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2277
    :cond_3
    iget-object v14, v9, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v14, :cond_4

    .line 2278
    const-string v14, ""

    iput-object v14, v9, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    :cond_4
    move-object v14, v13

    .line 2280
    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    .line 2281
    .local v12, oldTitle:Ljava/lang/CharSequence;
    if-nez v12, :cond_5

    .line 2282
    const-string v12, ""

    :cond_5
    move-object v14, v13

    .line 2284
    check-cast v14, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v14, v10}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    move-object v14, v13

    .line 2285
    check-cast v14, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v14}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    .line 2286
    iget-object v14, v9, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 2287
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v9}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_1

    .line 2291
    .end local v0           #app:Lcom/android/launcher2/HomeItem;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v12           #oldTitle:Ljava/lang/CharSequence;
    :cond_6
    instance-of v14, v10, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v14, :cond_1

    move-object v9, v10

    .line 2292
    check-cast v9, Lcom/android/launcher2/HomeFolderItem;

    .line 2293
    .local v9, info:Lcom/android/launcher2/HomeFolderItem;
    const/4 v1, 0x0

    .line 2294
    .local v1, changed:Z
    invoke-virtual {v9}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    .line 2295
    .local v4, folderItemCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v4, :cond_a

    .line 2296
    invoke-virtual {v9, v5}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeShortcutItem;

    .line 2297
    .local v2, childItem:Lcom/android/launcher2/HomeShortcutItem;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 2298
    .restart local v0       #app:Lcom/android/launcher2/HomeItem;
    if-ne v0, v2, :cond_7

    .line 2299
    const/4 v1, 0x1

    .line 2300
    iget-object v14, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_8

    .line 2301
    iget-object v14, p0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v14}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v14

    iput-object v14, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2303
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2295
    .end local v0           #app:Lcom/android/launcher2/HomeItem;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2308
    .end local v2           #childItem:Lcom/android/launcher2/HomeShortcutItem;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_a
    if-eqz v1, :cond_1

    move-object v14, v13

    .line 2309
    check-cast v14, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v14}, Lcom/android/launcher2/FolderIconView;->refreshBadge()V

    .line 2310
    check-cast v13, Lcom/android/launcher2/FolderIconView;

    .end local v13           #view:Landroid/view/View;
    invoke-virtual {v13, v9}, Lcom/android/launcher2/FolderIconView;->setFolderIcon(Lcom/android/launcher2/FolderItem;)Z

    .line 2311
    iget-object v14, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v14, :cond_1

    iget-object v14, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v14

    if-ne v14, v9, :cond_1

    .line 2312
    iget-object v14, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 2313
    iget-object v14, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    goto/16 :goto_0

    .line 2319
    .end local v1           #changed:Z
    .end local v4           #folderItemCount:I
    .end local v5           #i:I
    .end local v9           #info:Lcom/android/launcher2/HomeFolderItem;
    .end local v10           #item:Lcom/android/launcher2/BaseItem;
    .end local v11           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_b
    return-void
.end method

.method protected updateWallpaperOffsets()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f00

    .line 897
    const/4 v3, 0x0

    .line 898
    .local v3, updateNow:Z
    const/4 v0, 0x1

    .line 900
    .local v0, keepUpdating:Z
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v4, :cond_3

    .line 901
    const/4 v3, 0x1

    .line 902
    const/4 v0, 0x0

    .line 903
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 904
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 908
    :goto_0
    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-boolean v4, v4, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v4, :cond_1

    .line 909
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v4, :cond_1

    .line 910
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v4, :cond_4

    move v1, v5

    .line 911
    .local v1, offsetX:F
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v4, :cond_5

    move v2, v5

    .line 912
    .local v2, offsetY:F
    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 918
    .end local v1           #offsetX:F
    .end local v2           #offsetY:F
    :cond_1
    if-eqz v0, :cond_2

    .line 919
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 921
    :cond_2
    return-void

    .line 906
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v3, v0

    goto :goto_0

    .line 910
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v1

    goto :goto_1

    .line 911
    .restart local v1       #offsetX:F
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v2

    goto :goto_2
.end method
