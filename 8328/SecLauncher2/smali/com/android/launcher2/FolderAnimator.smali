.class Lcom/android/launcher2/FolderAnimator;
.super Ljava/lang/Object;
.source "FolderAnimator.java"


# instance fields
.field private mAnimatingOpen:Z

.field private final mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

.field private mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

.field private final mCloseAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private final mContent:Lcom/android/launcher2/CellLayoutNoGap;

.field private final mFolder:Lcom/android/launcher2/Folder;

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mIndexOfFirstItem:I

.field private mNumCloseAnimsRunning:I

.field mOnAnimationCancel:Ljava/lang/Runnable;

.field private final mOpenAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPostDrawPlate:Ljava/lang/Runnable;

.field private mRenderIconOnPlate:Z

.field private mTmpCanvas:Landroid/graphics/Canvas;

.field private mTmpPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V
    .locals 2
    .parameter "f"
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/android/launcher2/FolderAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderAnimator$1;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    .line 267
    iput-boolean v1, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    .line 361
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    .line 417
    iput v1, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    .line 648
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    .line 649
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 689
    new-instance v0, Lcom/android/launcher2/FolderAnimator$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderAnimator$7;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    .line 48
    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 49
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    .line 50
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    .line 51
    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    .line 53
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->addOnCancelCallback(Ljava/lang/Runnable;)V

    .line 54
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AppIconView;Z)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/FolderAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/FolderAnimator;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$720(Lcom/android/launcher2/FolderAnimator;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/FolderAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->drawPlate()V

    return-void
.end method

.method private animationNeeded(Landroid/view/View;I)Z
    .locals 6
    .parameter "v"
    .parameter "pos"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    .line 363
    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    .line 364
    .local v2, visible:Z
    if-eqz v2, :cond_1

    move v0, v1

    .line 365
    .local v0, from_alpha:F
    :goto_0
    const/4 v4, 0x4

    if-ge p2, v4, :cond_2

    .line 366
    .local v1, to_alpha:F
    :goto_1
    cmpl-float v4, v0, v3

    if-gtz v4, :cond_0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    :cond_0
    const/4 v3, 0x1

    :goto_2
    return v3

    .end local v0           #from_alpha:F
    .end local v1           #to_alpha:F
    :cond_1
    move v0, v3

    .line 364
    goto :goto_0

    .restart local v0       #from_alpha:F
    :cond_2
    move v1, v3

    .line 365
    goto :goto_1

    .line 366
    .restart local v1       #to_alpha:F
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private buildAnimForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 140
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 141
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iput-object p1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 142
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 143
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 144
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 146
    iput-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 148
    return-object v0
.end method

.method private buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 14
    .parameter "from_"
    .parameter "a"
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 370
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 371
    .local v3, animateScale:Z
    :goto_0
    if-nez p1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v12

    .line 373
    .local v12, loc:[I
    const/4 v1, 0x2

    new-array p1, v1, [I

    .end local p1
    const/4 v1, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x0

    aget v4, v12, v4

    sub-int/2addr v2, v4

    aput v2, p1, v1

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x1

    aget v4, v12, v4

    sub-int/2addr v2, v4

    aput v2, p1, v1

    .line 375
    .end local v12           #loc:[I
    .restart local p1
    :cond_0
    move-object v5, p1

    .line 376
    .local v5, from:[I
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v7

    .line 378
    .local v7, scale:F
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    .line 380
    .local v11, from_d:F
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v13

    .line 381
    .local v13, visible:Z
    :goto_1
    if-eqz v13, :cond_3

    const/high16 v8, 0x3f80

    .line 382
    .local v8, from_alpha:F
    :goto_2
    const/4 v1, 0x4

    move/from16 v0, p3

    if-ge v0, v1, :cond_4

    const/high16 v9, 0x3f80

    .line 384
    .local v9, to_alpha:F
    :goto_3
    new-instance v1, Lcom/android/launcher2/FolderAnimator$4;

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v10, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher2/FolderAnimator$4;-><init>(Lcom/android/launcher2/FolderAnimator;ZLcom/android/launcher2/AnimationLayer$Anim;[I[IFFFIF)V

    return-object v1

    .line 370
    .end local v3           #animateScale:Z
    .end local v5           #from:[I
    .end local v7           #scale:F
    .end local v8           #from_alpha:F
    .end local v9           #to_alpha:F
    .end local v11           #from_d:F
    .end local v13           #visible:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 380
    .restart local v3       #animateScale:Z
    .restart local v5       #from:[I
    .restart local v7       #scale:F
    .restart local v11       #from_d:F
    :cond_2
    const/4 v13, 0x1

    goto :goto_1

    .line 381
    .restart local v13       #visible:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 382
    .restart local v8       #from_alpha:F
    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private drawPlate()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 651
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderAnimator;->destroyPlate()V

    .line 688
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 660
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 661
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 662
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcom/android/launcher2/FolderAnimator;->drawPlate_(Landroid/graphics/Canvas;)V

    .line 663
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 664
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 668
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v2

    .line 669
    .local v2, xy:[I
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v4, v2, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 670
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v4, v2, v6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getPlateOffsetY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 672
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v1

    .line 673
    .local v1, s:F
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 674
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 676
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHomeContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 677
    .local v0, baseAlpha:F
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 678
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_4

    .line 679
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 680
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 681
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 684
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 685
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 687
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/FolderIconView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private drawPlate_(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIconView;->drawPlate(Landroid/graphics/Canvas;)V

    .line 708
    iget-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 711
    :cond_0
    return-void
.end method

.method private getAppIconOffset(II)[I
    .locals 7
    .parameter "i"
    .parameter "count"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v2

    .line 74
    .local v2, s:F
    invoke-static {p1, p2}, Lcom/android/launcher2/FolderIconHelper;->getAppIconRect(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 75
    .local v1, r:Landroid/graphics/Rect;
    const/4 v3, 0x2

    new-array v0, v3, [I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    aput v3, v0, v5

    iget v3, v1, Landroid/graphics/Rect;->top:I

    aput v3, v0, v6

    .line 81
    .local v0, l:[I
    aget v3, v0, v5

    int-to-float v3, v3

    const/high16 v4, 0x4100

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v5

    .line 82
    aget v3, v0, v6

    int-to-float v3, v3

    const/high16 v4, 0x4120

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v6

    .line 84
    return-object v0
.end method

.method private getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I
    .locals 8
    .parameter "iconView"
    .parameter "closing"

    .prologue
    const/4 v7, 0x1

    .line 121
    if-eqz p2, :cond_0

    .line 122
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v5, v7}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v5

    .line 135
    :goto_0
    return-object v5

    .line 124
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/DragLayer$LayoutParams;

    move-result-object v0

    .line 125
    .local v0, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget v3, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .local v3, x:I
    iget v4, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 126
    .local v4, y:I
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v1, v5, v7

    .line 127
    .local v1, topDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 128
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 129
    move-object v2, p1

    .line 130
    .local v2, v:Landroid/view/View;
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eq v2, v5, :cond_1

    .line 131
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v3, v5

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 133
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_1

    .line 135
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v4, v5, v7

    goto :goto_0
.end method

.method private final getLocationOfFolderIcon()[I
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x4000

    const/4 v11, 0x1

    .line 89
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 90
    .local v8, v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 93
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 95
    .local v5, l:[I
    invoke-virtual {v8, v5}, Lcom/android/launcher2/FolderIconView;->getLocationOnScreen([I)V

    .line 96
    aget v9, v5, v11

    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v10, v10, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    aget v10, v10, v11

    sub-int/2addr v9, v10

    aput v9, v5, v11

    .line 99
    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v3, v9, v12

    .line 100
    .local v3, dx:F
    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getPaddingTop()I

    move-result v9

    int-to-float v4, v9

    .line 102
    .local v4, dy:F
    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 103
    .local v7, s:F
    aget v9, v5, v13

    int-to-float v9, v9

    mul-float v10, v3, v7

    add-float/2addr v9, v10

    float-to-int v9, v9

    aput v9, v5, v13

    .line 104
    aget v9, v5, v11

    int-to-float v9, v9

    mul-float v10, v4, v7

    add-float/2addr v9, v10

    float-to-int v9, v9

    aput v9, v5, v11

    .line 106
    const/high16 v9, 0x3f80

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v2, v9

    .line 108
    .local v2, bw:F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v1, v9

    .line 109
    .local v1, bh:F
    aget v9, v5, v13

    int-to-float v9, v9

    mul-float v10, v2, v7

    sub-float v10, v2, v10

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    float-to-int v9, v9

    aput v9, v5, v13

    .line 110
    aget v9, v5, v11

    int-to-float v9, v9

    mul-float v10, v1, v7

    sub-float v10, v1, v10

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    float-to-int v9, v9

    aput v9, v5, v11

    .line 114
    .end local v1           #bh:F
    .end local v2           #bw:F
    :cond_0
    aget v9, v5, v11

    add-int/lit8 v9, v9, 0x1

    aput v9, v5, v11

    .line 116
    return-object v5
.end method

.method static mix(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "mix"

    .prologue
    .line 595
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method animateClose(Lcom/android/launcher2/DragState;)V
    .locals 17
    .parameter "dragState"

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 420
    .local v1, a:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v13, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 421
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 423
    .end local v1           #a:Landroid/widget/ImageView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 424
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    .line 426
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 427
    .local v3, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_1

    .line 428
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/launcher2/AnimationLayer;->cancelAnimationFor(Landroid/view/View;)V

    .line 427
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 431
    :cond_1
    if-lez v3, :cond_3

    if-eqz p1, :cond_2

    const/4 v13, 0x1

    if-le v3, v13, :cond_3

    .line 432
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v13, v13, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    iget v15, v15, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v15, v15

    invoke-virtual/range {v13 .. v16}, Lcom/android/launcher2/ScalarAnimator;->to(FJ)V

    .line 435
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v13}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 436
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v13, v13, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v14, 0x3f80

    invoke-virtual {v13, v14}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 439
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/launcher2/AppIconView;->mDrawText:Z

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v13}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 444
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims()V

    .line 447
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v3

    .line 449
    const/4 v4, 0x0

    .line 450
    .local v4, dragging_out:Z
    const/4 v10, 0x0

    .line 451
    .local v10, shift_icon_index:Z
    const/4 v8, 0x0

    .line 452
    .local v8, origin:I
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->hasEnded()Z

    move-result v13

    if-nez v13, :cond_6

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    if-eq v13, v14, :cond_8

    const/4 v10, 0x1

    .line 454
    :goto_2
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    .line 455
    const/4 v4, 0x1

    .line 457
    :cond_6
    add-int/lit8 v6, v3, -0x1

    :goto_3
    if-ltz v6, :cond_c

    .line 458
    move v12, v6

    .line 459
    .local v12, view_index:I
    if-eqz v4, :cond_a

    .line 460
    if-ne v6, v8, :cond_9

    .line 457
    :cond_7
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 453
    .end local v12           #view_index:I
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 462
    .restart local v12       #view_index:I
    :cond_9
    if-eqz v10, :cond_a

    if-le v6, v8, :cond_a

    .line 463
    add-int/lit8 v12, v12, -0x1

    .line 466
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v11

    .line 467
    .local v11, v:Landroid/view/View;
    instance-of v13, v11, Lcom/android/launcher2/AppIconView;

    if-eqz v13, :cond_7

    .line 468
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/android/launcher2/FolderAnimator;->animationNeeded(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object v13, v11

    .line 470
    check-cast v13, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v13}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 471
    .local v2, b:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_7

    .line 472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    const/4 v14, -0x1

    invoke-virtual {v13, v11, v2, v14}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    .line 473
    .local v1, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/BaseItem;

    iput-object v13, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 476
    .local v9, paint:Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 477
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 478
    iget-object v13, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v9}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 479
    iput-object v9, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 480
    const/4 v13, 0x0

    iput v13, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    .line 482
    if-nez v6, :cond_b

    .line 483
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v14, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Lcom/android/launcher2/AnimationLayer;->indexOfChild(Landroid/view/View;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/FolderAnimator;->mIndexOfFirstItem:I

    .line 485
    :cond_b
    iget-object v13, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v13, Lcom/android/launcher2/AppIconView;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v5

    .line 486
    .local v5, from:[I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(II)[I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1, v6, v13}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 487
    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v13

    new-instance v14, Lcom/android/launcher2/FolderAnimator$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/launcher2/FolderAnimator$5;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    invoke-virtual {v13, v14}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 494
    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    iget v14, v14, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 495
    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/animation/Animator;->start()V

    .line 496
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    goto/16 :goto_4

    .line 499
    .end local v1           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v5           #from:[I
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v11           #v:Landroid/view/View;
    .end local v12           #view_index:I
    :cond_c
    if-nez p1, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v13}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v13

    if-nez v13, :cond_d

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/launcher2/AppIconView;->mDrawText:Z

    .line 505
    :cond_d
    if-eqz p1, :cond_e

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    .line 506
    return-void

    .line 505
    :cond_e
    const/4 v13, 0x0

    goto :goto_5
.end method

.method animateCloseAnimsEnd(Lcom/android/launcher2/DragState;Z)V
    .locals 13
    .parameter "dragState"
    .parameter "forceDropAnim"

    .prologue
    .line 510
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 515
    invoke-virtual {p0}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims()V

    goto :goto_0

    .line 518
    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v9}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v9

    if-nez v9, :cond_0

    .line 521
    :cond_3
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/FolderItem;

    invoke-interface {v9}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v2

    .line 523
    .local v2, count:I
    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->foundValidDrop()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v9, :cond_7

    iget-object v9, p1, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v10, v10, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-ne v9, v10, :cond_7

    :cond_4
    const/4 v1, 0x1

    .line 525
    .local v1, animateDrop:Z
    :goto_1
    if-nez p2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->hasEnded()Z

    move-result v9

    if-nez v9, :cond_5

    .line 526
    const/4 v1, 0x0

    .line 528
    :cond_5
    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    const/4 v11, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :goto_2
    const/4 v12, -0x1

    invoke-virtual {v10, v11, v9, v12}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v3

    .line 530
    .local v3, dropAnim:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v9

    iput-object v9, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 531
    if-eqz v1, :cond_9

    .line 533
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v8

    .line 534
    .local v8, pos_:I
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v10

    invoke-direct {p0, v8, v2}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(II)[I

    move-result-object v11

    invoke-direct {p0, v10, v3, v8, v11}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 537
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 538
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 539
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 540
    iget-object v9, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v6}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 541
    iput-object v6, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 543
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v9, v9, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v9}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v9

    if-nez v9, :cond_6

    .line 544
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v9, v9, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v10, 0x0

    const-wide/16 v11, 0xf0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/launcher2/ScalarAnimator;->to(FJ)V

    .line 545
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 553
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v8           #pos_:I
    :cond_6
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 554
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/Animator;->removeAllListeners()V

    .line 555
    iget-object v5, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 556
    .local v5, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v7

    .line 557
    .local v7, pos:I
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    const/4 v10, 0x0

    invoke-direct {p0, v7, v2}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(II)[I

    move-result-object v11

    invoke-direct {p0, v10, v0, v7, v11}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3

    .line 523
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v1           #animateDrop:Z
    .end local v3           #dropAnim:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/android/launcher2/BaseItem;
    .end local v7           #pos:I
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 528
    .restart local v1       #animateDrop:Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 547
    .restart local v3       #dropAnim:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_9
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 548
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto/16 :goto_0

    .line 562
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/FolderAnimator$6;

    invoke-direct {v10, p0, v3}, Lcom/android/launcher2/FolderAnimator$6;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 572
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    sget v10, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 573
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    .line 575
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto/16 :goto_0
.end method

.method animateOpen()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 269
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v14, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 270
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v14, v0, Lcom/android/launcher2/AppIconView;->mDrawText:Z

    .line 271
    iput-boolean v13, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    .line 272
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v8

    .line 274
    .local v8, loc:[I
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f80

    iget-object v11, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    iget v11, v11, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v11, v11

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/launcher2/ScalarAnimator;->to(FJ)V

    .line 275
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 276
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 278
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v4

    .line 279
    .local v4, count:I
    add-int/lit8 v7, v4, -0x1

    .local v7, i:I
    :goto_0
    if-ltz v7, :cond_2

    .line 281
    const/16 v0, 0x10

    if-lt v7, v0, :cond_1

    .line 279
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v10

    .line 284
    .local v10, v:Landroid/view/View;
    instance-of v0, v10, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_0

    move-object v0, v10

    .line 285
    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 286
    .local v6, b:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 287
    new-instance v3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 288
    .local v3, a:Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 290
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 291
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    invoke-virtual {v3, v13, v5}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 293
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v0, v3, v1, v11}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;II)V

    .line 294
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-direct {p0, v7, v4}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(II)[I

    move-result-object v9

    .line 299
    .local v9, r:[I
    sget v0, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 300
    sget v0, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 302
    aget v0, v8, v14

    aget v1, v9, v14

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 303
    aget v0, v8, v13

    aget v1, v9, v13

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 304
    move v2, v7

    .line 305
    .local v2, pos:I
    new-instance v0, Lcom/android/launcher2/FolderAnimator$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderAnimator$3;-><init>(Lcom/android/launcher2/FolderAnimator;ILandroid/widget/ImageView;ILandroid/graphics/Paint;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_1

    .line 356
    .end local v2           #pos:I
    .end local v3           #a:Landroid/widget/ImageView;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #b:Landroid/graphics/Bitmap;
    .end local v9           #r:[I
    .end local v10           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v14}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    .line 357
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 358
    return-void
.end method

.method animatePlate(Z)Z
    .locals 7
    .parameter "isDragging"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 600
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v2, v2, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v2, v2, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v2, v2, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v4

    .line 605
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v2, v2, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v2, :cond_0

    .line 607
    iget-boolean v2, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    .line 608
    :cond_2
    iput-boolean v4, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    .line 613
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v4, v2, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 614
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v4, v2, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 615
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v4, v2, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 616
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 618
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

    .line 619
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    .line 620
    const/4 v1, -0x1

    .line 621
    .local v1, index:I
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_3

    .line 622
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/AnimationLayer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 624
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v6, v6, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 626
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->drawPlate()V

    move v4, v3

    .line 627
    goto :goto_0

    .line 611
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #index:I
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2
.end method

.method bounceItemInIconAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 13
    .parameter "item"
    .parameter "pos"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderAnimator;->buildAnimForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 184
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 185
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    new-instance v10, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v10}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    if-eqz p2, :cond_1

    .line 189
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v10, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 190
    iget v9, p0, Lcom/android/launcher2/FolderAnimator;->mIndexOfFirstItem:I

    sub-int/2addr v9, p2

    add-int/lit8 v3, v9, 0x1

    .line 191
    .local v3, i:I
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer;->getChildCount()I

    move-result v9

    if-lt v3, v9, :cond_0

    const/4 v3, -0x1

    .line 192
    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v10, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v10, v3}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;I)V

    .line 195
    .end local v3           #i:I
    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderItem;

    .line 196
    .local v2, folderItem:Lcom/android/launcher2/FolderItem;
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v4

    .line 197
    .local v4, loc:[I
    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v9

    invoke-direct {p0, p2, v9}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(II)[I

    move-result-object v5

    .line 199
    .local v5, offset:[I
    const/4 v9, 0x2

    new-array v1, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v4, v10

    const/4 v11, 0x0

    aget v11, v5, v11

    add-int/2addr v10, v11

    aput v10, v1, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v4, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    add-int/2addr v10, v11

    aput v10, v1, v9

    .line 204
    .local v1, dest:[I
    const/4 v9, 0x2

    new-array v8, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v4, v10

    const/4 v11, 0x0

    aget v11, v5, v11

    add-int/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v4, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4040

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v8, v9

    .line 209
    .local v8, up:[I
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 210
    .local v7, s_:F
    sget v9, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    mul-float v6, v7, v9

    .line 211
    .local v6, s:F
    iget-object v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 212
    iget-object v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 214
    int-to-float v9, p2

    const v10, 0x3dcccccd

    mul-float/2addr v9, v10

    iput v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    .line 215
    iget v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    iget-object v10, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    invoke-static {v9, v10}, Lcom/android/launcher2/FolderIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 216
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 218
    new-instance v9, Lcom/android/launcher2/FolderAnimator$2;

    invoke-direct {v9, p0, v0, v1, v8}, Lcom/android/launcher2/FolderAnimator$2;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 233
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    const-wide/16 v10, 0x4b0

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 234
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    .line 235
    return-void
.end method

.method buildIcon()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 152
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims()V

    .line 155
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FolderItem;

    .line 156
    .local v3, item:Lcom/android/launcher2/FolderItem;
    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    .line 158
    .local v1, count:I
    const/4 v8, 0x3

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 159
    invoke-interface {v3, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    .line 158
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v3, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/launcher2/FolderAnimator;->buildAnimForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 161
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v4

    .line 164
    .local v4, loc:[I
    invoke-direct {p0, v2, v1}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(II)[I

    move-result-object v5

    .line 165
    .local v5, r:[I
    iget-object v8, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v9, v4, v11

    aget v10, v5, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 166
    iget-object v8, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v9, v4, v12

    aget v10, v5, v12

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 168
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 169
    .local v7, s_:F
    sget v8, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    mul-float v6, v7, v8

    .line 170
    .local v6, s:F
    iget-object v8, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 171
    iget-object v8, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 173
    int-to-float v8, v2

    const v9, 0x3dcccccd

    mul-float/2addr v8, v9

    iput v8, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    .line 174
    iget v8, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    iget-object v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Lcom/android/launcher2/FolderIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 176
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    goto :goto_1

    .line 178
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v4           #loc:[I
    .end local v5           #r:[I
    .end local v6           #s:F
    .end local v7           #s_:F
    :cond_2
    return-void
.end method

.method cancel()V
    .locals 1

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/launcher2/FolderAnimator;->destroyPlate()V

    .line 591
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 592
    return-void
.end method

.method cancelBouncingItem()V
    .locals 4

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 250
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 253
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 254
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 255
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 258
    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->addAlphaAnimator(FFZ)V

    .line 260
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method cleanupCloseAnims()V
    .locals 4

    .prologue
    .line 579
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 580
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    goto :goto_0

    .line 582
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 583
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    .line 585
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher2/AppIconView;->mDrawText:Z

    .line 586
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 587
    return-void
.end method

.method destroyPlate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 631
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->resetShadow()V

    .line 632
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 633
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 635
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 639
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawText:Z

    .line 641
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 642
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 646
    :cond_1
    return-void
.end method

.method finishBouncingItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "swapWith"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 241
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 242
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 58
    return-void
.end method
