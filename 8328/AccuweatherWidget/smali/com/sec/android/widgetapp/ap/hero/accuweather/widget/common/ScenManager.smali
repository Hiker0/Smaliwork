.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;
.super Ljava/lang/Object;
.source "ScenManager.java"


# instance fields
.field ani:Landroid/view/animation/Animation$AnimationListener;

.field arrow:Landroid/widget/RelativeLayout;

.field private bgPx:F

.field private bgPy:F

.field private clockPx:F

.field private clockPy:F

.field emboss:Landroid/widget/ImageView;

.field isPlayAin:Z

.field public mAnimHandler:Landroid/os/Handler;

.field private mApperenceScale:Landroid/view/animation/AnimationSet;

.field private mArrowFadeInOut:Landroid/view/animation/AnimationSet;

.field private mBaseScale:F

.field private mBgNextCityFadeIn:Landroid/view/animation/AnimationSet;

.field private mBgNextCityFadeOut:Landroid/view/animation/AnimationSet;

.field private mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

.field private mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

.field private mBgPreCityFadeIn:Landroid/view/animation/AnimationSet;

.field private mBgPreCityFadeOut:Landroid/view/animation/AnimationSet;

.field private mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

.field private mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private mDayNightBgFadeIn:Landroid/view/animation/AnimationSet;

.field private mDayNightBgFadeOut:Landroid/view/animation/AnimationSet;

.field private mDayNightFrontBgFadeIn:Landroid/view/animation/AnimationSet;

.field private mDayNightFrontBgFadeOut:Landroid/view/animation/AnimationSet;

.field mDepthZ:F

.field private mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

.field private mFlickUp:Z

.field private mIsFirstAppearenceAnim:Z

.field mIsPreviouRain:Z

.field mIsRain:Z

.field private mNextClockFadeIn:Landroid/view/animation/AnimationSet;

.field private mNextClockFadeOut:Landroid/view/animation/AnimationSet;

.field private mPlayAnim:Z

.field private mPreClockFadeIn:Landroid/view/animation/AnimationSet;

.field private mPreClockFadeOut:Landroid/view/animation/AnimationSet;

.field private mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

.field private mWindowFadeIn:Landroid/view/animation/AnimationSet;

.field private mWitchClockView:I

.field timezone:Landroid/widget/RelativeLayout;

.field timezone2:Landroid/widget/RelativeLayout;

.field weather_bg1:Landroid/widget/ImageView;

.field weather_bg2:Landroid/widget/ImageView;

.field weather_front1:Landroid/widget/ImageView;

.field weather_front2:Landroid/widget/ImageView;

.field weather_icon:Landroid/widget/ImageView;

.field weather_window:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    .line 26
    const/high16 v0, 0x4316

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDepthZ:F

    .line 38
    iput v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    .line 39
    iput v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    .line 40
    iput v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPx:F

    .line 41
    iput v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPy:F

    .line 42
    const v0, 0x3fb33333

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    .line 44
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mApperenceScale:Landroid/view/animation/AnimationSet;

    .line 46
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeOut:Landroid/view/animation/AnimationSet;

    .line 47
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeIn:Landroid/view/animation/AnimationSet;

    .line 48
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeOut:Landroid/view/animation/AnimationSet;

    .line 49
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeIn:Landroid/view/animation/AnimationSet;

    .line 51
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    .line 52
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    .line 53
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    .line 54
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    .line 56
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeOut:Landroid/view/animation/AnimationSet;

    .line 57
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeIn:Landroid/view/animation/AnimationSet;

    .line 58
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeOut:Landroid/view/animation/AnimationSet;

    .line 59
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeIn:Landroid/view/animation/AnimationSet;

    .line 61
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWindowFadeIn:Landroid/view/animation/AnimationSet;

    .line 63
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeIn:Landroid/view/animation/AnimationSet;

    .line 64
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeOut:Landroid/view/animation/AnimationSet;

    .line 65
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeIn:Landroid/view/animation/AnimationSet;

    .line 66
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeOut:Landroid/view/animation/AnimationSet;

    .line 69
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mArrowFadeInOut:Landroid/view/animation/AnimationSet;

    .line 73
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    .line 74
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mFlickUp:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPlayAnim:Z

    .line 77
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    .line 78
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsFirstAppearenceAnim:Z

    .line 79
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    .line 88
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$1;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mAnimHandler:Landroid/os/Handler;

    .line 327
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    .line 328
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsPreviouRain:Z

    .line 535
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->isPlayAin:Z

    .line 544
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$4;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ani:Landroid/view/animation/Animation$AnimationListener;

    .line 82
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPlayAnim:Z

    .line 84
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->init()V

    .line 86
    return-void
.end method

.method private makeApperenceAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 676
    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 679
    .local v7, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f09

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    .line 680
    const v1, 0x7f090001

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    .line 686
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mApperenceScale:Landroid/view/animation/AnimationSet;

    .line 688
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    iget v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    iget v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    iget v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    iget v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    iget v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 689
    .local v0, scaleUp:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 690
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 691
    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 692
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mApperenceScale:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 693
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mApperenceScale:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 694
    return-void

    .line 682
    .end local v0           #scaleUp:Landroid/view/animation/Animation;
    :cond_2
    const-string v1, ""

    const-string v2, "mWA ct is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeArrowAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xa7

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 372
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mArrowFadeInOut:Landroid/view/animation/AnimationSet;

    .line 374
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 375
    .local v0, fadeIn:Landroid/view/animation/Animation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 376
    sget-object v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 377
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 378
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 379
    .local v1, fadeOut:Landroid/view/animation/Animation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 380
    sget-object v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 381
    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 382
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 384
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mArrowFadeInOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 385
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mArrowFadeInOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 386
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mArrowFadeInOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 387
    new-instance v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$2;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$2;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;)V

    .line 394
    .local v2, listener:Landroid/view/animation/Animation$AnimationListener;
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mArrowFadeInOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 395
    return-void
.end method

.method private makeChangeDayNightAnimation()V
    .locals 18

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 399
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 400
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 401
    .local v17, res:Landroid/content/res/Resources;
    const/high16 v5, 0x7f09

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    .line 402
    const v5, 0x7f090001

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    .line 407
    .end local v17           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeIn:Landroid/view/animation/AnimationSet;

    .line 408
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeOut:Landroid/view/animation/AnimationSet;

    .line 409
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeIn:Landroid/view/animation/AnimationSet;

    .line 410
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeOut:Landroid/view/animation/AnimationSet;

    .line 412
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 413
    .local v1, Scale:Landroid/view/animation/Animation;
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 414
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 415
    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 416
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41f0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 417
    .local v16, position:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x2bc

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 418
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Linear;->easeNone:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 419
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 420
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 421
    .local v14, fadeIn:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v14, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 422
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 423
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 425
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeIn:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeIn:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 431
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 432
    .local v2, Scale2:Landroid/view/animation/Animation;
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 433
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 434
    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 435
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v15, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 436
    .local v15, fadeOut:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x5a

    invoke-virtual {v15, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 437
    const-wide/16 v5, 0x258

    invoke-virtual {v15, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 438
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 439
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 440
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeOut:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 444
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 445
    .local v3, FrontScale:Landroid/view/animation/Animation;
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 446
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 447
    const-wide/16 v5, 0x2bc

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 448
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42a0

    const/4 v8, 0x0

    invoke-direct {v13, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 449
    .local v13, Frontposition:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x2bc

    invoke-virtual {v13, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 450
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Linear;->easeNone:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 451
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 452
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v11, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 453
    .local v11, FrontfadeIn:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 454
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 455
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 456
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeIn:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 461
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 462
    .local v4, FrontScale2:Landroid/view/animation/Animation;
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 463
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 464
    const-wide/16 v5, 0x44c

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 465
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v12, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 466
    .local v12, FrontfadeOut:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x64

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 467
    const-wide/16 v5, 0x3e8

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 468
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 469
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 470
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeOut:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 473
    return-void

    .line 404
    .end local v1           #Scale:Landroid/view/animation/Animation;
    .end local v2           #Scale2:Landroid/view/animation/Animation;
    .end local v3           #FrontScale:Landroid/view/animation/Animation;
    .end local v4           #FrontScale2:Landroid/view/animation/Animation;
    .end local v11           #FrontfadeIn:Landroid/view/animation/Animation;
    .end local v12           #FrontfadeOut:Landroid/view/animation/Animation;
    .end local v13           #Frontposition:Landroid/view/animation/Animation;
    .end local v14           #fadeIn:Landroid/view/animation/Animation;
    .end local v15           #fadeOut:Landroid/view/animation/Animation;
    .end local v16           #position:Landroid/view/animation/Animation;
    :cond_2
    const-string v5, ""

    const-string v6, "mWA ct is null"

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makeNextCityAnimation()V
    .locals 17

    .prologue
    .line 563
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 564
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 565
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 566
    .local v16, res:Landroid/content/res/Resources;
    const/high16 v5, 0x7f09

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    .line 567
    const v5, 0x7f090001

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    .line 572
    .end local v16           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeOut:Landroid/view/animation/AnimationSet;

    .line 573
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeIn:Landroid/view/animation/AnimationSet;

    .line 574
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    .line 575
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    .line 577
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const v3, 0x3fd9999a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const v5, 0x3fd9999a

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 578
    .local v1, scaleUp:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 579
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 580
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 581
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 582
    .local v13, fadeOut:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x258

    invoke-virtual {v13, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 583
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 584
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 585
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeOut:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 590
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 591
    .local v2, scaleUp2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 592
    const-wide/16 v5, 0xa7

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 593
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 594
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 595
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 596
    .local v14, fadeOut2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v14, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 597
    const-wide/16 v5, 0x5a

    invoke-virtual {v14, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 598
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 599
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 600
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeIn:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 604
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    if-eqz v5, :cond_3

    .line 605
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x4248

    const/4 v8, 0x0

    invoke-direct {v15, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 606
    .local v15, position:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x2bc

    invoke-virtual {v15, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 607
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Linear;->easeNone:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 608
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 609
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 610
    .local v3, FrontscaleUp2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 611
    const-wide/16 v5, 0xa7

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 612
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 613
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 614
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v12, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 615
    .local v12, FrontfadeOut2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 616
    const-wide/16 v5, 0xa7

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 617
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 618
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 619
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 639
    .end local v15           #position:Landroid/view/animation/Animation;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsPreviouRain:Z

    if-eqz v5, :cond_4

    .line 640
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x4248

    invoke-direct {v15, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 641
    .restart local v15       #position:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x2bc

    invoke-virtual {v15, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 642
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Linear;->easeNone:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 643
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 644
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 645
    .local v4, FrontscaleUp:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 646
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 647
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 648
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v11, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 649
    .local v11, FrontfadeOut:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 650
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 651
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 669
    .end local v15           #position:Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeOut:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ani:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeIn:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ani:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ani:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ani:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 673
    return-void

    .line 569
    .end local v1           #scaleUp:Landroid/view/animation/Animation;
    .end local v2           #scaleUp2:Landroid/view/animation/Animation;
    .end local v3           #FrontscaleUp2:Landroid/view/animation/Animation;
    .end local v4           #FrontscaleUp:Landroid/view/animation/Animation;
    .end local v11           #FrontfadeOut:Landroid/view/animation/Animation;
    .end local v12           #FrontfadeOut2:Landroid/view/animation/Animation;
    .end local v13           #fadeOut:Landroid/view/animation/Animation;
    .end local v14           #fadeOut2:Landroid/view/animation/Animation;
    :cond_2
    const-string v5, ""

    const-string v6, "mWA ct is null"

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 624
    .restart local v1       #scaleUp:Landroid/view/animation/Animation;
    .restart local v2       #scaleUp2:Landroid/view/animation/Animation;
    .restart local v13       #fadeOut:Landroid/view/animation/Animation;
    .restart local v14       #fadeOut2:Landroid/view/animation/Animation;
    :cond_3
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 625
    .restart local v3       #FrontscaleUp2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 626
    const-wide/16 v5, 0xa7

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 627
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 628
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 629
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v12, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 630
    .restart local v12       #FrontfadeOut2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 631
    const-wide/16 v5, 0xa7

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 632
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 633
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 634
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    goto/16 :goto_1

    .line 657
    :cond_4
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const/high16 v8, 0x4000

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 658
    .restart local v4       #FrontscaleUp:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 659
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 660
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 661
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v11, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 662
    .restart local v11       #FrontfadeOut:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 663
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 664
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    goto/16 :goto_2
.end method

.method private makeNextClockAnimation()V
    .locals 10

    .prologue
    .line 812
    iget v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPx:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 813
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPx:F

    .line 815
    :cond_0
    iget v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPy:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 816
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPy:F

    .line 818
    :cond_1
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeOut:Landroid/view/animation/AnimationSet;

    .line 819
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeIn:Landroid/view/animation/AnimationSet;

    .line 821
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3fc0

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3fc0

    iget v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPx:F

    iget v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPy:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 822
    .local v0, scaleUp:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 823
    sget-object v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 824
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 825
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v8, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 826
    .local v8, fadeOut:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 827
    sget-object v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 828
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 830
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 831
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 832
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeOut:Landroid/view/animation/AnimationSet;

    const-wide/16 v3, 0x14d

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 833
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeOut:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 835
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f35c28f

    const/high16 v3, 0x3f80

    const v4, 0x3f35c28f

    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPx:F

    iget v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPy:F

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 836
    .local v1, scaleUp2:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 837
    sget-object v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 838
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 839
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 840
    .local v9, fadeOut2:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 841
    sget-object v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 842
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 844
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 845
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 846
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeIn:Landroid/view/animation/AnimationSet;

    const-wide/16 v3, 0x14d

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 847
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeIn:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 848
    return-void
.end method

.method private makePreCityAnimation()V
    .locals 17

    .prologue
    .line 697
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 698
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 699
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 700
    .local v16, res:Landroid/content/res/Resources;
    const/high16 v5, 0x7f09

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    .line 701
    const v5, 0x7f090001

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    .line 706
    .end local v16           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeOut:Landroid/view/animation/AnimationSet;

    .line 707
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeIn:Landroid/view/animation/AnimationSet;

    .line 708
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    .line 709
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    .line 711
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 712
    .local v1, scaleDown:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 713
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 714
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 715
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 716
    .local v14, fadeOut:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x258

    invoke-virtual {v14, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 717
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 718
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 720
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeOut:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 725
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3fd9999a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const v5, 0x3fd9999a

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 726
    .local v2, scaleDown2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 727
    const-wide/16 v5, 0xa7

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 728
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 729
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 730
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 731
    .local v13, fadeIn:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v13, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 732
    const-wide/16 v5, 0x5a

    invoke-virtual {v13, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 733
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 734
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 736
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeIn:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 740
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    if-eqz v5, :cond_3

    .line 741
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x4248

    const/4 v8, 0x0

    invoke-direct {v15, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 742
    .local v15, position:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x2bc

    invoke-virtual {v15, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 743
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Linear;->easeNone:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 744
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 745
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 746
    .local v3, FrontscaleDown2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 747
    const-wide/16 v5, 0xa7

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 748
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 749
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 750
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v12, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 751
    .local v12, FrontfadeOut2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 752
    const-wide/16 v5, 0xa7

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 753
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 754
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 755
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 775
    .end local v15           #position:Landroid/view/animation/Animation;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsPreviouRain:Z

    if-eqz v5, :cond_4

    .line 776
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x4248

    invoke-direct {v15, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 777
    .restart local v15       #position:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x2bc

    invoke-virtual {v15, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 778
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Linear;->easeNone:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 779
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 780
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 781
    .local v4, FrontscaleDown:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 782
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 783
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 784
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v11, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 785
    .local v11, FrontfadeOut:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 786
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 787
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 788
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 805
    .end local v15           #position:Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeOut:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ani:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeIn:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ani:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ani:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ani:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 809
    return-void

    .line 703
    .end local v1           #scaleDown:Landroid/view/animation/Animation;
    .end local v2           #scaleDown2:Landroid/view/animation/Animation;
    .end local v3           #FrontscaleDown2:Landroid/view/animation/Animation;
    .end local v4           #FrontscaleDown:Landroid/view/animation/Animation;
    .end local v11           #FrontfadeOut:Landroid/view/animation/Animation;
    .end local v12           #FrontfadeOut2:Landroid/view/animation/Animation;
    .end local v13           #fadeIn:Landroid/view/animation/Animation;
    .end local v14           #fadeOut:Landroid/view/animation/Animation;
    :cond_2
    const-string v5, ""

    const-string v6, "mWA ct is null"

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 760
    .restart local v1       #scaleDown:Landroid/view/animation/Animation;
    .restart local v2       #scaleDown2:Landroid/view/animation/Animation;
    .restart local v13       #fadeIn:Landroid/view/animation/Animation;
    .restart local v14       #fadeOut:Landroid/view/animation/Animation;
    :cond_3
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3fd9999a

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const v6, 0x3fd9999a

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 761
    .restart local v3       #FrontscaleDown2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 762
    const-wide/16 v5, 0xa7

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 763
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 764
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 765
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v12, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 766
    .restart local v12       #FrontfadeOut2:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 767
    const-wide/16 v5, 0xa7

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 768
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 769
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 770
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    goto/16 :goto_1

    .line 793
    :cond_4
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    const/high16 v8, 0x3f80

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 794
    .restart local v4       #FrontscaleDown:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 795
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 796
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 797
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v11, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 798
    .restart local v11       #FrontfadeOut:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 799
    sget-object v5, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 800
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 801
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    goto/16 :goto_2
.end method

.method private makePreClockAnimation()V
    .locals 15

    .prologue
    const v2, 0x3f35c28f

    const/4 v14, 0x0

    const-wide/16 v12, 0x1f4

    const/4 v11, 0x1

    const/high16 v1, 0x3f80

    .line 971
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPx:F

    .line 972
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPy:F

    .line 973
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeOut:Landroid/view/animation/AnimationSet;

    .line 974
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeIn:Landroid/view/animation/AnimationSet;

    .line 976
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPx:F

    iget v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPy:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 977
    .local v0, scaleUp:Landroid/view/animation/Animation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 978
    sget-object v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 979
    invoke-virtual {v0, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 980
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v1, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 981
    .local v9, fadeOut:Landroid/view/animation/Animation;
    invoke-virtual {v9, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 982
    sget-object v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 983
    invoke-virtual {v9, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 985
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 986
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 987
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeOut:Landroid/view/animation/AnimationSet;

    const-wide/16 v4, 0x14d

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 988
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v11}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 990
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3fb33333

    const v5, 0x3fb33333

    iget v7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPx:F

    iget v8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->clockPy:F

    move v4, v1

    move v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 991
    .local v2, scaleUp2:Landroid/view/animation/Animation;
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 992
    sget-object v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 993
    invoke-virtual {v2, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 994
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v14, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 995
    .local v10, fadeOut2:Landroid/view/animation/Animation;
    invoke-virtual {v10, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 996
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 997
    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 999
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1000
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1001
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeIn:Landroid/view/animation/AnimationSet;

    const-wide/16 v3, 0x14d

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1002
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1004
    return-void
.end method


# virtual methods
.method public appearenceAnimation(I)V
    .locals 3
    .parameter "cityCount"

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setImageResource(Z)V

    .line 356
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setWindowImage(Z)V

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ismPlayAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->makeApperenceAnimation()V

    .line 359
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mApperenceScale:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mApperenceScale:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mApperenceScale:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mApperenceScale:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 363
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->makeArrowAnimation()V

    .line 365
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->arrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->arrow:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mArrowFadeInOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->applyRotation()V

    .line 370
    :cond_1
    return-void
.end method

.method public applyRotation()V
    .locals 8

    .prologue
    .line 206
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    const/high16 v3, 0x43af

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDepthZ:F

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 207
    .local v0, rotation:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;->setDuration(J)V

    .line 208
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;->setStartOffset(J)V

    .line 209
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;->setFillAfter(Z)V

    .line 210
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 212
    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;

    const/high16 v2, 0x4387

    const/high16 v3, 0x43b4

    const/high16 v4, 0x43af

    const/high16 v5, 0x4302

    iget v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDepthZ:F

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 213
    .local v1, rotation2:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;->setDuration(J)V

    .line 214
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;->setStartOffset(J)V

    .line 215
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;->setFillAfter(Z)V

    .line 216
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 218
    iget v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 219
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->toggleClock()V

    .line 226
    return-void

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 223
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public buildTimeCurrentClock()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    if-nez v0, :cond_0

    .line 1086
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getDST()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showDTSicon(I)V

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->buildTimeMap()V

    goto :goto_0

    .line 1081
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    if-eqz v0, :cond_3

    .line 1082
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getDST()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showDTSicon2(I)V

    .line 1084
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->buildTimeMap2()V

    goto :goto_0
.end method

.method public buildTimeOtherClock()V
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    if-nez v0, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1092
    :cond_0
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 1093
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getDST()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showDTSicon2(I)V

    .line 1096
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->buildTimeMap2()V

    goto :goto_0

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    if-eqz v0, :cond_3

    .line 1099
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getDST()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showDTSicon(I)V

    .line 1101
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->buildTimeMap()V

    goto :goto_0
.end method

.method public changeCityAnimation(I)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setImageResource(Z)V

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ismPlayAnim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 347
    :cond_1
    if-ne p1, v3, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->nextCityAnimation()V

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->preCityAnimation()V

    goto :goto_0
.end method

.method public changeDayNightAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 476
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setImageResource(Z)V

    .line 478
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPlayAnim:Z

    if-nez v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 488
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->makeChangeDayNightAnimation()V

    .line 489
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$3;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;)V

    .line 507
    .local v0, listener:Landroid/view/animation/Animation$AnimationListener;
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 509
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 511
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 512
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 513
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 516
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightBgFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 517
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 518
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDayNightFrontBgFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public clearView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    .line 180
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    .line 181
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    .line 182
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    .line 183
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->arrow:Landroid/widget/RelativeLayout;

    .line 184
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    .line 185
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    .line 186
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_icon:Landroid/widget/ImageView;

    .line 187
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    .line 188
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    .line 189
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    .line 190
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mAnimHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mAnimHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 192
    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mAnimHandler:Landroid/os/Handler;

    .line 194
    :cond_0
    return-void
.end method

.method public getDrawingInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    return-object v0
.end method

.method public getmAnimHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mAnimHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 144
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    .line 145
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    .line 148
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    .line 153
    .end local v0           #res:Landroid/content/res/Resources;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsFirstAppearenceAnim:Z

    .line 154
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getTimezone()Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    .line 155
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getTimezone2()Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    .line 156
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getWeather_bg1()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    .line 157
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getWeather_bg2()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    .line 158
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getWeather_front1()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    .line 161
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getWeather_front2()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    .line 162
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getWeather_rain()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    .line 163
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getWeather_icon()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_icon:Landroid/widget/ImageView;

    .line 164
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getArrowGroup()Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->arrow:Landroid/widget/RelativeLayout;

    .line 165
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getEmboss()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->emboss:Landroid/widget/ImageView;

    .line 166
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setDefaultDrawInfo()Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    .line 168
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPlayAnim:Z

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    :cond_0
    return-void

    .line 150
    :cond_1
    const-string v1, ""

    const-string v2, "ini ct is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isPlayAin()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->isPlayAin:Z

    return v0
.end method

.method public ismPlayAnim()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 124
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPlayAnim:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPlayAnim:Z

    return v0

    .line 127
    :cond_0
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public makeWindowAnimation(Z)V
    .locals 9
    .parameter "isani"

    .prologue
    .line 851
    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 853
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 854
    .local v8, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f09

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    .line 855
    const v1, 0x7f090001

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    .line 860
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWindowFadeIn:Landroid/view/animation/AnimationSet;

    .line 861
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    iget v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    iget v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    iget v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBaseScale:F

    iget v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPx:F

    iget v6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->bgPy:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 862
    .local v0, scale:Landroid/view/animation/Animation;
    if-eqz p1, :cond_4

    .line 863
    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 864
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 868
    :goto_1
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 869
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 870
    if-eqz p1, :cond_2

    .line 871
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 872
    .local v7, fadeOut:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x2ee

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 873
    const-wide/16 v1, 0x1f4

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 874
    sget-object v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 875
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 876
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWindowFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 878
    .end local v7           #fadeOut:Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWindowFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 879
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWindowFadeIn:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 880
    return-void

    .line 857
    .end local v0           #scale:Landroid/view/animation/Animation;
    :cond_3
    const-string v1, ""

    const-string v2, "mWA ct is null"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 866
    .restart local v0       #scale:Landroid/view/animation/Animation;
    :cond_4
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1
.end method

.method public nextCityAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 883
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->makeNextCityAnimation()V

    .line 884
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->nextClockAnimation()V

    .line 886
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 895
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 896
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 909
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 905
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 906
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgNextFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public nextClockAnimation()V
    .locals 3

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->makeNextClockAnimation()V

    .line 922
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$5;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;)V

    .line 930
    .local v0, listener:Landroid/view/animation/Animation$AnimationListener;
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 932
    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 933
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 934
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 939
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 937
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mNextClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public preCityAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 942
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->makePreCityAnimation()V

    .line 943
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->preClockAnimation()V

    .line 944
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 946
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 952
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 953
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 954
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 967
    :goto_0
    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 963
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 964
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 965
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mBgPreFrontCityFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public preClockAnimation()V
    .locals 3

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->makePreClockAnimation()V

    .line 1017
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager$6;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;)V

    .line 1025
    .local v0, listener:Landroid/view/animation/Animation$AnimationListener;
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1027
    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1029
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1035
    :goto_0
    return-void

    .line 1031
    :cond_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1032
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPreClockFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setDrawingInfo(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    .line 109
    return-void
.end method

.method public setImageResource(Z)V
    .locals 4
    .parameter "bToggle"

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->isPlayAin:Z

    if-eqz v0, :cond_1

    .line 246
    if-nez p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mAnimHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    if-eqz p1, :cond_3

    .line 252
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsPreviouRain:Z

    .line 254
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getIsRain()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    .line 255
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getBackgrondImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getLandBackgrondImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setWindowImage(Z)V

    .line 281
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IPR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsPreviouRain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->isDay()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->emboss:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    :goto_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->emboss:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 288
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getIconImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsPreviouRain:Z

    .line 260
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getIsRain()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    .line 261
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getBackgrondImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getLandBackgrondImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsPreviouRain:Z

    .line 268
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getIsRain()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    .line 269
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getBackgrondImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getLandBackgrondImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsPreviouRain:Z

    .line 274
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getIsRain()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    .line 275
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsRain:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_bg1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getBackgrondImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_front1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getLandBackgrondImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->emboss:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2
.end method

.method public setWindowImage(Z)V
    .locals 5
    .parameter "bUpdate"

    .prologue
    const v4, 0x7f020019

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 293
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getWindowBackgrondImage()I

    move-result v0

    .line 294
    .local v0, resId:I
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mPlayAnim:Z

    if-eqz v1, :cond_3

    .line 295
    if-eqz p1, :cond_1

    .line 296
    if-gez v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->makeWindowAnimation(Z)V

    .line 302
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWindowFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 306
    :cond_1
    if-gez v0, :cond_2

    .line 307
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->makeWindowAnimation(Z)V

    .line 312
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWindowFadeIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 317
    :cond_3
    if-gez v0, :cond_4

    .line 318
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->weather_window:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setmIsFirstAppearenceAnim(Z)V
    .locals 0
    .parameter "mIsFirstAppearenceAnim"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsFirstAppearenceAnim:Z

    .line 121
    return-void
.end method

.method public startAnimation(I)V
    .locals 3
    .parameter "flickingDirection"

    .prologue
    const/4 v2, 0x0

    .line 1038
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->isPlayAin:Z

    if-eqz v0, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->ismIsRefreshing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1045
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->buildTimeCurrentClock()V

    .line 1046
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setImageResource(Z)V

    goto :goto_0

    .line 1051
    :cond_2
    if-lez p1, :cond_3

    .line 1052
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->buildTimeOtherClock()V

    .line 1053
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->changeCityAnimation(I)V

    goto :goto_0

    .line 1057
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsFirstAppearenceAnim:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1058
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getDST()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showDTSicon(I)V

    .line 1059
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mDrawingInfo:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->getDST()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->showDTSicon2(I)V

    .line 1060
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->buildTimeMapAll()V

    .line 1061
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWeatherClock:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getCityCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->appearenceAnimation(I)V

    .line 1062
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mIsFirstAppearenceAnim:Z

    goto :goto_0

    .line 1064
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->buildTimeCurrentClock()V

    .line 1065
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->setImageResource(Z)V

    goto :goto_0
.end method

.method public toggleClock()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 233
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    if-ne v0, v3, :cond_0

    .line 234
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    .line 235
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    iput v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    .line 239
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public watchViewShow()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->ismPlayAnim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 527
    :cond_0
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->mWitchClockView:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/ScenManager;->timezone2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
