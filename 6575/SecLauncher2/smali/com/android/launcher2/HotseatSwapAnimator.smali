.class Lcom/android/launcher2/HotseatSwapAnimator;
.super Ljava/lang/Object;
.source "HotseatSwapAnimator.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HotseatSwapAnimator$6;,
        Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;
    }
.end annotation


# instance fields
.field final kFolderScaleDuration:I

.field final kFolderScaleFactor:F

.field final kFolderScalingFactor:F

.field final kIconFastFadeInDuration:I

.field final kIconFastFadeOutDuration:I

.field final kIconSlowFadeInDuration:I

.field final kIconSlowFadeOutDuration:I

.field private mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

.field private final mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mDisabled:Z

.field private final mDragCell:[I

.field private mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

.field private mDragSourceFolder:Lcom/android/launcher2/Folder;

.field private mDropped:Z

.field private final mHotseat:Lcom/android/launcher2/Hotseat;

.field private mHotseatSwapIcon:Landroid/view/View;

.field private final mLauncher:Lcom/android/launcher2/Launcher;

.field private final mLayout:Lcom/android/launcher2/CellLayout;

.field private mSwapFolder:Lcom/android/launcher2/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)V
    .locals 3
    .parameter "hotseat"
    .parameter "layout"

    .prologue
    const/16 v2, 0x1f4

    const/16 v1, 0x64

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDisabled:Z

    .line 129
    iput v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconFastFadeInDuration:I

    .line 130
    iput v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconFastFadeOutDuration:I

    .line 131
    iput v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconSlowFadeInDuration:I

    .line 132
    iput v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconSlowFadeOutDuration:I

    .line 133
    iput v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kFolderScaleDuration:I

    .line 134
    const v0, 0x3fb33333

    iput v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kFolderScaleFactor:F

    .line 135
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kFolderScalingFactor:F

    .line 35
    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 36
    iput-object p2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    .line 37
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 38
    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/CellLayoutChildren;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    return-object v0
.end method

.method private animateMoveFade(Lcom/android/launcher2/DragState;)V
    .locals 13
    .parameter "dragState"

    .prologue
    .line 417
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->getWorkspaceParent(Landroid/view/View;)Lcom/android/launcher2/Workspace;

    move-result-object v12

    .line 420
    .local v12, ws:Lcom/android/launcher2/Workspace;
    if-eqz v12, :cond_0

    .line 423
    invoke-direct {p0, p1}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    .line 426
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v5, :cond_2

    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/FolderIconView;

    if-nez v1, :cond_0

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 432
    .local v0, overlay:Lcom/android/launcher2/AnimationLayer;
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 433
    .local v2, b:Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v3

    .line 434
    .local v3, from:[I
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v4

    .line 435
    .local v4, to:[I
    const v9, 0x3f4ccccd

    .line 436
    .local v9, pageScale:F
    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 438
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 441
    .local v8, page:Landroid/view/View;
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v9

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v10, v1, v5

    .line 442
    .local v10, pageScaleDx:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v9

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v11, v1, v5

    .line 443
    .local v11, pageScaleDy:F
    const/4 v1, 0x0

    aget v5, v4, v1

    int-to-float v5, v5

    add-float/2addr v5, v10

    float-to-int v5, v5

    aput v5, v4, v1

    .line 444
    const/4 v1, 0x1

    aget v5, v4, v1

    int-to-float v5, v5

    add-float/2addr v5, v11

    float-to-int v5, v5

    aput v5, v4, v1

    .line 446
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v1, :cond_3

    .line 447
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "We already have an mAnimInfo!"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x1

    const/16 v6, 0x140

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer;->animateIcon(Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 450
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 451
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    goto/16 :goto_0
.end method

.method private animateOverlayIconBack(Lcom/android/launcher2/DragState;)V
    .locals 19
    .parameter "dragState"

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v3, :cond_1

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-nez v3, :cond_2

    .line 323
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    const/16 v14, 0x78

    .line 327
    .local v14, kFadeOutDuration:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 328
    .local v11, fadeAnim:Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;[I[I)V

    .line 330
    .local v2, overlayFadeAdapter:Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;
    const-wide/16 v3, 0x78

    invoke-virtual {v11, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 331
    invoke-virtual {v11, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_3

    const/4 v12, 0x1

    .line 335
    .local v12, isOverFolder:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v12, :cond_4

    .line 336
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->start()V

    .line 360
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0

    .line 332
    .end local v12           #isOverFolder:Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 339
    .restart local v12       #isOverFolder:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v4}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-float v9, v3

    .line 340
    .local v9, dx:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v4}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-float v10, v3

    .line 341
    .local v10, dy:F
    mul-float v3, v9, v9

    mul-float v4, v10, v10

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v13, v3

    .line 342
    .local v13, kDistance:F
    const v16, 0x3dcccccd

    .line 343
    .local v16, kFadeOutStartFactor:F
    const v3, 0x3dcccccd

    const/high16 v4, 0x428c

    div-float/2addr v4, v13

    add-float v15, v3, v4

    .line 344
    .local v15, kFadeOutEndFactor:F
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3dcccccd

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v15, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v18

    .line 345
    .local v18, moveAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x78

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 346
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v17, v0

    .line 349
    .local v17, l:Lcom/android/launcher2/AnimationLayer$Anim;
    move-object/from16 v0, v18

    invoke-static {v11, v0}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v8

    .line 350
    .local v8, animator:Landroid/animation/Animator;
    new-instance v3, Lcom/android/launcher2/HotseatSwapAnimator$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/HotseatSwapAnimator$2;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 327
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static create(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/HotseatSwapAnimator;
    .locals 1
    .parameter "hotseat"
    .parameter "layout"

    .prologue
    .line 30
    new-instance v0, Lcom/android/launcher2/HotseatSwapAnimator;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/HotseatSwapAnimator;-><init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)V

    .line 31
    .local v0, inst:Lcom/android/launcher2/HotseatSwapAnimator;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 32
    return-object v0
.end method

.method private displaySwapItemOverFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)V
    .locals 6
    .parameter "dragState"
    .parameter "underView"

    .prologue
    .line 456
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 457
    .local v2, item:Lcom/android/launcher2/BaseItem;
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 459
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 463
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 467
    .local v1, folderView:Landroid/view/View;
    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    .line 468
    const/high16 v4, 0x3f80

    invoke-direct {p0, v1, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 472
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 473
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 477
    invoke-virtual {v0, v2}, Lcom/android/launcher2/Folder;->beginHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V

    .line 478
    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    goto :goto_0
.end method

.method static fadeAnimate(Landroid/view/View;FI)V
    .locals 3
    .parameter "v"
    .parameter "endAlpha"
    .parameter "duration"

    .prologue
    .line 303
    if-eqz p0, :cond_0

    .line 304
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HotseatSwapAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HotseatSwapAnimator$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 313
    :cond_0
    return-void
.end method

.method private fadeOutAndRemoveOverlayIcon(Lcom/android/launcher2/DragState;)V
    .locals 3
    .parameter "dragState"

    .prologue
    const/high16 v1, 0x3f80

    .line 365
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HotseatSwapAnimator$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HotseatSwapAnimator$3;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 382
    :cond_0
    return-void
.end method

.method private getCellLayoutParent(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 578
    if-nez p1, :cond_0

    move-object v0, v1

    .line 586
    :goto_0
    return-object v0

    .line 580
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 581
    .local v0, p:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 582
    instance-of v2, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_1

    .line 583
    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 584
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 586
    goto :goto_0
.end method

.method private getWorkspaceParent(Landroid/view/View;)Lcom/android/launcher2/Workspace;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 566
    if-nez p1, :cond_0

    move-object v0, v1

    .line 574
    :goto_0
    return-object v0

    .line 568
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 569
    .local v0, p:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 570
    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1

    .line 571
    check-cast v0, Lcom/android/launcher2/Workspace;

    goto :goto_0

    .line 572
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 574
    goto :goto_0
.end method

.method private handleDragOverViewDrop(Lcom/android/launcher2/DragState;)Z
    .locals 6
    .parameter "dragState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 231
    iput-boolean v4, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    .line 232
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay(Lcom/android/launcher2/BaseItem;)V

    .line 237
    :cond_0
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    const/high16 v2, 0x3f80

    const/16 v3, 0xc8

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 239
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    .line 242
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 244
    return v5
.end method

.method private handleDragOverViewEnded(Lcom/android/launcher2/DragState;)V
    .locals 7
    .parameter "dragState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 248
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 251
    .local v1, overlay:Lcom/android/launcher2/AnimationLayer;
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-boolean v2, v2, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    if-nez v2, :cond_3

    .line 253
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 256
    :cond_0
    iget-object v2, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 258
    iget-object v2, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 262
    :cond_1
    if-eqz v1, :cond_2

    .line 263
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v2}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v2}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 269
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 270
    iput-object v5, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    .line 275
    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 276
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_4

    .line 277
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 279
    :cond_4
    iput-object v5, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragSourceFolder:Lcom/android/launcher2/Folder;

    .line 283
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_5

    .line 284
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v6, v2, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 285
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    const/16 v3, 0xc8

    invoke-static {v2, v4, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 286
    iput-object v5, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    .line 290
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 292
    iput-boolean v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    .line 293
    return-void
.end method

.method private handleDragOverViewExit(Lcom/android/launcher2/DragState;)V
    .locals 4
    .parameter "dragState"

    .prologue
    const/high16 v3, 0x3f80

    .line 217
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    const/16 v2, 0x1f4

    invoke-static {v1, v3, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 220
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    .line 221
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 222
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 227
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 228
    return-void
.end method

.method private handleDragOverViewMove(Lcom/android/launcher2/DragState;)V
    .locals 12
    .parameter "dragState"

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    const/16 v10, 0x1f4

    const/high16 v9, 0x3f80

    const/4 v4, 0x1

    .line 139
    iget-object v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v7, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v7, v7, v5

    iget-object v8, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v8, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 140
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 141
    :cond_0
    const/4 v3, 0x0

    .line 144
    :cond_1
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v7, :cond_7

    instance-of v6, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_7

    move v2, v4

    .line 148
    .local v2, ignoreFolder:Z
    :goto_0
    if-eqz v2, :cond_3

    move-object v0, v3

    .line 149
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .line 150
    .local v0, fiv:Lcom/android/launcher2/FolderIconView;
    iput-boolean v4, v0, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 151
    iget-object v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    if-eq v0, v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_2

    .line 152
    iget-object v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v5, v6, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 154
    :cond_2
    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    .line 155
    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 159
    .end local v0           #fiv:Lcom/android/launcher2/FolderIconView;
    :cond_3
    if-nez v3, :cond_8

    .line 160
    iget-object v5, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 162
    iget-object v5, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-static {v5, v9, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 163
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 164
    .local v1, folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_4

    .line 165
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v9}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 169
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 171
    .end local v1           #folder:Lcom/android/launcher2/Folder;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 213
    :cond_6
    :goto_1
    iput-object v3, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    .line 214
    return-void

    .end local v2           #ignoreFolder:Z
    :cond_7
    move v2, v5

    .line 144
    goto :goto_0

    .line 176
    .restart local v2       #ignoreFolder:Z
    :cond_8
    iget-object v5, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v5, :cond_a

    .line 178
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v2, :cond_9

    .line 179
    invoke-static {v3, v11, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 180
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->showHotseatSwapIcon(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    .line 182
    :cond_9
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 183
    .restart local v1       #folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_6

    .line 184
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->displaySwapItemOverFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    goto :goto_1

    .line 188
    .end local v1           #folder:Lcom/android/launcher2/Folder;
    :cond_a
    iget-object v5, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eq v5, v3, :cond_6

    .line 189
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v2, :cond_d

    .line 191
    invoke-static {v3, v11, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 192
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->showHotseatSwapIcon(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    .line 199
    :cond_b
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 209
    :cond_c
    :goto_3
    iget-object v4, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-static {v4, v9, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 210
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->displaySwapItemOverFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    goto :goto_1

    .line 194
    :cond_d
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_e

    instance-of v5, v3, Landroid/widget/ImageView;

    if-nez v5, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_b

    .line 195
    :cond_e
    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    goto :goto_2

    .line 202
    :cond_f
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 203
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 204
    .restart local v1       #folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_c

    .line 205
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v9}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    goto :goto_3
.end method

.method private hideHotseatSwapIcon(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    .line 541
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    if-nez v1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 543
    :cond_0
    if-eqz p1, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    .line 545
    .local v0, v:Landroid/view/View;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 546
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/HotseatSwapAnimator$5;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator$5;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 556
    .end local v0           #v:Landroid/view/View;
    :goto_1
    iput-object v4, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    goto :goto_0

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private isAppIcon(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 316
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFolderOverlay()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    if-nez v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->cancelHotseatSwapAnimation()V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    goto :goto_0
.end method

.method private removeFolderOverlay(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Folder;->finishHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    goto :goto_0
.end method

.method private scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .parameter "v"
    .parameter "endScale"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showHotseatSwapIcon(Lcom/android/launcher2/DragState;Landroid/view/View;)V
    .locals 10
    .parameter "dragState"
    .parameter "underView"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 498
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 538
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 500
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/BaseItem;

    .line 502
    .local v7, item:Lcom/android/launcher2/BaseItem;
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    if-eq v0, v7, :cond_0

    .line 506
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->hasHotSeatAncestor(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeItem;

    .line 510
    .local v6, homeItem:Lcom/android/launcher2/HomeItem;
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    .end local v7           #item:Lcom/android/launcher2/BaseItem;
    const v2, 0x7f03001c

    invoke-virtual {v0, v7, v2}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 517
    .local v1, imageView:Lcom/android/launcher2/AppIconView;
    check-cast p2, Lcom/android/launcher2/AppIconView;

    .end local p2
    invoke-virtual {p2}, Lcom/android/launcher2/AppIconView;->getTextVisible()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 522
    invoke-virtual {v1, v9}, Lcom/android/launcher2/AppIconView;->setTag(Ljava/lang/Object;)V

    .line 524
    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v0, v6, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, v6, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v6, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v8, v6, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-direct {v4, v0, v2, v5, v8}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 525
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 527
    iput-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    .line 529
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v9}, Lcom/android/launcher2/AppIconView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 530
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    .line 531
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/launcher2/HotseatSwapAnimator$4;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator$4;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0
.end method


# virtual methods
.method hasHotSeatAncestor(Lcom/android/launcher2/BaseItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 560
    instance-of v2, p1, Lcom/android/launcher2/HomeItem;

    if-nez v2, :cond_1

    .line 562
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 561
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 562
    .local v0, h:Lcom/android/launcher2/HomeItem;
    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 45
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDisabled:Z

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDisabled:Z

    if-eqz v0, :cond_3

    .line 124
    :cond_1
    :goto_1
    return v12

    :cond_2
    move v0, v12

    .line 46
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_1

    .line 52
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_4
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_5

    .line 57
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v11, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 58
    .local v11, mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-virtual {v11}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    if-eqz v0, :cond_5

    move v12, v4

    .line 59
    goto :goto_1

    .line 62
    .end local v11           #mHomeFragment:Lcom/android/launcher2/HomeFragment;
    :cond_5
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/DragState;

    .line 65
    .local v7, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    .line 66
    .local v6, dragItem:Lcom/android/launcher2/BaseItem;
    sget-object v0, Lcom/android/launcher2/HotseatSwapAnimator$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, v6, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v9, v0, v12

    .line 76
    .local v9, lastCellX:I
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v10, v0, v4

    .line 77
    .local v10, lastCellY:I
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 79
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v8

    .line 80
    .local v8, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 82
    :pswitch_1
    iput-object v8, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragSourceFolder:Lcom/android/launcher2/Folder;

    goto :goto_1

    .line 85
    :pswitch_2
    if-eqz v8, :cond_1

    .line 86
    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->ignoreShrinkingFolder()V

    .line 87
    invoke-virtual {v8, v12}, Lcom/android/launcher2/Folder;->close(Z)V

    goto :goto_1

    .line 91
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewMove(Lcom/android/launcher2/DragState;)V

    .line 92
    iget-object v0, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    .line 100
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v0, v0, v12

    if-ne v9, v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v0, v0, v4

    if-ne v10, v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v0, :cond_1

    .line 101
    :cond_6
    iget-object v0, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 102
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_1

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    goto :goto_2

    .line 105
    :cond_8
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateMoveFade(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_1

    .line 111
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewExit(Lcom/android/launcher2/DragState;)V

    .line 112
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_1

    .line 115
    :pswitch_5
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeOutAndRemoveOverlayIcon(Lcom/android/launcher2/DragState;)V

    .line 116
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewDrop(Lcom/android/launcher2/DragState;)Z

    move-result v12

    goto/16 :goto_1

    .line 118
    :pswitch_6
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewEnded(Lcom/android/launcher2/DragState;)V

    .line 119
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 80
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
