.class public Lcom/android/launcher2/PageIndicator$Page;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mDrawState:I

.field private mPrevDrawState:I

.field final synthetic this$0:Lcom/android/launcher2/PageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/PageIndicator;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 477
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 469
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 471
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 472
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    .line 478
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 500
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;I)Z

    move-result v0

    return v0
.end method

.method draw(Landroid/graphics/Canvas;I)Z
    .locals 11
    .parameter "canvas"
    .parameter "index"

    .prologue
    .line 505

    #hq start <<
    const-string v1, "zxf-l" 
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v2
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    #hq end >>
    #hq start <<
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I
    move-result v10
    #hq end >>
    
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    .line 507
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 509
    :cond_0
    const/4 v5, 0x0

    .line 510
    .local v5, value:F
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 512
    .local v3, normalized:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_1

    .line 513
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 515
    :cond_1
    const/high16 v6, 0x3f80

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 517
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    iget v8, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float v5, v6, v7

    .line 522
    .end local v3           #normalized:F
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mGrowBy:F
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$100(Lcom/android/launcher2/PageIndicator;)F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v1, v6

    .line 523
    .local v1, grow:I
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 524
    .local v4, s:I
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;
    #hq start <<
    move v8, p2
    
    if-ne v8 , v10,  :zxf_1
    
    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawableDef:Landroid/graphics/drawable/Drawable;
    
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$201(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    neg-int v7, v1

    const/4 v8, 0x02
    
    neg-int v7, v8

    add-int/2addr v4,v8

    add-int v9, v4, v1
    
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    
    goto :zxf_draw
    :zxf_1
   #hq end >>
    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    
    neg-int v7, v1

    const/4 v8, 0x07

    add-int v9, v4, v1
    
    add-int/2addr v4,v8

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :zxf_draw

    .line 525
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$300(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    .line 526
    .local v2, modeFactor:F
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mIsHiding:Z
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v5

    .line 527
    .local v0, alpha:F
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

     #hq start <<
    move v8, p2
    
    if-ne v8 , v10,  :zxf_2
    
    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawableDef:Landroid/graphics/drawable/Drawable;
    
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$201(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;
    move-result-object v6
    goto :zxf_draw2
    :zxf_2
   #hq end >>
    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    
    :zxf_draw2
    

    const/high16 v7, 0x437f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 529
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

     #hq start <<
    move v8, p2    
    
    if-ne v8 , v10,  :zxf_3
    
    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawableDef:Landroid/graphics/drawable/Drawable;
    
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$201(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;
    move-result-object v6
    goto :zxf_draw3
    :zxf_3
   #hq end >>
    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :zxf_draw3
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 531
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    return v6

    .line 518
    .end local v0           #alpha:F
    .end local v1           #grow:I
    .end local v2           #modeFactor:F
    .end local v4           #s:I
    :cond_3
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 519
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v6

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v5, v6, v7

    goto :goto_0

    .line 526
    .restart local v1       #grow:I
    .restart local v2       #modeFactor:F
    .restart local v4       #s:I
    :cond_4
    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v2

    mul-float v0, v6, v7

    goto :goto_1

    .line 531
    .restart local v0       #alpha:F
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method drawContextualPageIndicator(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;)Z
    .locals 10
    .parameter "canvas"
    .parameter "index"
    .parameter "pageDrawable"

    .prologue
    .line 536
    const-string v1, "zxf-l"
    const-string v2, "drawContextualPageIndicator"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 537
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    .line 538
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 540
    :cond_0
    const/4 v5, 0x0

    .line 541
    .local v5, value:F
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 543
    .local v3, normalized:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_1

    .line 544
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 546
    :cond_1
    const/high16 v6, 0x3f80

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 548
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    iget v8, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float v5, v6, v7

    .line 553
    .end local v3           #normalized:F
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 554
    .local v4, s:I
    int-to-float v6, v4

    mul-float/2addr v6, v5

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mGrowBy_CP:F
    invoke-static {v7}, Lcom/android/launcher2/PageIndicator;->access$500(Lcom/android/launcher2/PageIndicator;)F

    move-result v7

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 555
    .local v1, grow:I
    neg-int v6, v1

    neg-int v7, v1

    add-int v8, v4, v1

    add-int v9, v4, v1

    invoke-virtual {p3, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 556
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$300(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    .line 557
    .local v2, modeFactor:F
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mIsHiding:Z
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v5

    .line 558
    .local v0, alpha:F
    :goto_1
    const/high16 v6, 0x437f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {p3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 560
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 562
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    return v6

    .line 549
    .end local v0           #alpha:F
    .end local v1           #grow:I
    .end local v2           #modeFactor:F
    .end local v4           #s:I
    :cond_3
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 550
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v6

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v5, v6, v7

    goto :goto_0

    .line 557
    .restart local v1       #grow:I
    .restart local v2       #modeFactor:F
    .restart local v4       #s:I
    :cond_4
    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v2

    mul-float v0, v6, v7

    goto :goto_1

    .line 562
    .restart local v0       #alpha:F
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method endAnimation()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 497
    return-void
.end method

.method public getScale()F
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/high16 v5, 0x3f80

    .line 566
    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 568
    .local v0, normalized:F
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_0

    .line 569
    iput v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 571
    :cond_0
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 573
    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 577
    .end local v0           #normalized:F
    :goto_0
    return v1

    .line 574
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    if-ne v1, v6, :cond_2

    .line 575
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v1, v1, v2

    goto :goto_0

    .line 577
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method initDrawState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 481
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 482
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 483
    return-void
.end method

.method setDrawState(I)V
    .locals 2
    .parameter "drawState"

    .prologue
    .line 486
    iget v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 487
    iput p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 489
    iget v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    if-eq v0, v1, :cond_0

    .line 490
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 491
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    .line 492
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    .line 494
    :cond_0
    return-void
.end method
