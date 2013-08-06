.class public Lcom/android/launcher2/AnimationLayer$Anim;
.super Ljava/lang/Object;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AnimationLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Anim"
.end annotation


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field mAnimIcon:Landroid/widget/ImageView;

.field private mAnimation:Landroid/animation/Animator;

.field mClipRect:Landroid/graphics/Rect;

.field mClippingEnabled:Z

.field public mDarken:F

.field mFadeOutDrop:Z

.field mFrom:[I

.field private mIsCompleted:Z

.field public mLinkedItem:Lcom/android/launcher2/BaseItem;

.field private mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public mPaint:Landroid/graphics/Paint;

.field private mShadowFadeStarted:Z

.field mTo:[I

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AnimationLayer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 533
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 524
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    .line 531
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    .line 617
    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim$4;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    .line 642
    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim$5;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 809
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    .line 534
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/AnimationLayer$Anim;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/AnimationLayer$Anim;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    return p1
.end method


# virtual methods
.method public addAlphaAnimator(FFZ)V
    .locals 3
    .parameter "from"
    .parameter "to"
    .parameter "markCompleteOnEnd"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 593
    .local v0, a:Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher2/AnimationLayer$Anim$2;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;FF)V

    .line 602
    .local v2, ul:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    new-instance v1, Lcom/android/launcher2/AnimationLayer$Anim$3;

    invoke-direct {v1, p0, v0, v2, p3}, Lcom/android/launcher2/AnimationLayer$Anim$3;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 613
    .local v1, l:Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 614
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    return-void
.end method

.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V
    .locals 2
    .parameter "ul"
    .parameter "markCompleteOnEnd"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 575
    .local v0, a:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/launcher2/AnimationLayer$Anim$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher2/AnimationLayer$Anim$1;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 586
    .local v1, l:Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 587
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 588
    return-void
.end method

.method cancel()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    .line 778
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 827
    :cond_0
    return-void
.end method

.method public enableClipping()V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 561
    return-void
.end method

.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrom()[I
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    return-object v0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTo()[I
    .locals 3

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 794
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCompleted()Z
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    return v0
.end method

.method public markCompleted()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 814
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    .line 815
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 537
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 538
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 539
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 540
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 541
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 542
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 543
    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    .line 544
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 546
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    instance-of v0, v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 548
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 551
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 552
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 553
    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFadeOutDrop:Z

    .line 554
    return-void
.end method

.method public setFrom([I)V
    .locals 0
    .parameter "f"

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 782
    return-void
.end method

.method public setTo([I)V
    .locals 0
    .parameter "t"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 786
    return-void
.end method

.method setupBasicAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"
    .parameter "b"
    .parameter "animIcon"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 565
    iput-object p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 566
    iput-object p2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 568
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    .line 569
    return-void

    .line 568
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V
    .locals 3
    .parameter "view"
    .parameter "b"
    .parameter "animIcon"
    .parameter "from"
    .parameter "to"
    .parameter "duration"
    .parameter "fadeInShadow"

    .prologue
    .line 675
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 677
    iput-object p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 678
    iput-object p2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 679
    iput-object p4, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 680
    iput-object p5, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 681
    if-nez p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    .line 683
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    .line 684
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 685
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 686
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 687
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 688
    return-void

    .line 681
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 683
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V
    .locals 24
    .parameter "view"
    .parameter "b"
    .parameter "animIcon"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 692
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 693
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 694
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 695
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 696
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 697
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v8

    .line 701
    .local v8, _to:[I
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x0

    aget v3, p4, v3

    sub-int/2addr v2, v3

    int-to-float v6, v2

    .line 702
    .local v6, dx:F
    const/4 v2, 0x1

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, p4, v3

    sub-int/2addr v2, v3

    int-to-float v7, v2

    .line 704
    .local v7, dy:F
    mul-float v2, v6, v6

    mul-float v3, v7, v7

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v13, v2

    .line 705
    .local v13, kDistance:F
    const/16 v19, 0x5a

    .line 706
    .local v19, kFadeOutDuration:I
    const/16 v15, 0x5a

    .line 707
    .local v15, kFadeInDuration:I
    const v2, 0x3da3d70a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v18, v2, v3

    .line 708
    .local v18, kFadeOutDistance:F
    const v2, 0x3df5c28f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v14, v2, v3

    .line 709
    .local v14, kFadeInDistance:F
    const v21, 0x3dcccccd

    .line 710
    .local v21, kFadeOutStartFactor:F
    const v2, 0x3dcccccd

    div-float v3, v18, v13

    add-float v20, v2, v3

    .line 712
    .local v20, kFadeOutEndFactor:F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const v4, 0x3dcccccd

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v20, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v22

    .line 713
    .local v22, moveAnim1:Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x5a

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 714
    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$6;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim$6;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;[IFF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 726
    const/high16 v16, 0x3f80

    .line 727
    .local v16, kFadeInEndFactor:F
    const/high16 v2, 0x3f80

    div-float v3, v14, v13

    sub-float v17, v2, v3

    .line 729
    .local v17, kFadeInStartFactor:F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v17, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v23

    .line 730
    .local v23, moveAnim2:Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x5a

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 731
    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$7;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim$7;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;[IFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 743
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 744
    .local v11, fadeOutAnim:Landroid/animation/ValueAnimator;
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 747
    .local v9, fadeInAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x5a

    invoke-virtual {v11, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 748
    const-wide/16 v2, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 749
    const-wide/16 v2, 0x5a

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 751
    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 752
    .local v12, fadeOutSet:Landroid/animation/AnimatorSet;
    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v10

    .line 755
    .local v10, fadeInSet:Landroid/animation/AnimatorSet;
    invoke-static {v12, v10}, Lcom/android/launcher2/AnimationLayer;->createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 757
    return-void

    .line 743
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    .line 744
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method update([IIZ)V
    .locals 4
    .parameter "to"
    .parameter "duration"
    .parameter "clip"

    .prologue
    .line 760
    iput-boolean p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 761
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 762
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 763
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 764
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    instance-of v1, v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 766
    .local v0, a:Landroid/animation/ValueAnimator;
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 767
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 769
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 772
    .end local v0           #a:Landroid/animation/ValueAnimator;
    :cond_0
    return-void
.end method
