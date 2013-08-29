.class public Lcom/android/launcher2/AnimationLayer;
.super Landroid/widget/FrameLayout;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AnimationLayer$Anim;
    }
.end annotation


# instance fields
.field private final BLOCK_EVENTS_TIMEOUT:J

.field private mAnimPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockEvents:Z

.field final mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentOrientation:I

.field private mDragLastX:I

.field private mDragLastY:I

.field private mDragLocalState:Ljava/lang/Object;

.field private mDragStateDropped:Z

.field private mFirstDrawAfterConfigChange:Z

.field private mLastBlockTime:J

.field private mOnCancelCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field mRootLocationOnScreen:[I

.field private final mTmpFPos:[F

.field private final mTmpPos:[I

.field private mViewPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    .line 40
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 41
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 43
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mOnCancelCallbacks:Ljava/util/ArrayList;

    .line 172
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 174
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer;->BLOCK_EVENTS_TIMEOUT:J

    .line 206
    new-instance v0, Lcom/android/launcher2/AnimationLayer$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$2;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 337
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    .line 340
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    .line 363
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mPaint:Landroid/graphics/Paint;

    .line 405
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 406
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    .line 40
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 41
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 43
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mOnCancelCallbacks:Ljava/util/ArrayList;

    .line 172
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 174
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer;->BLOCK_EVENTS_TIMEOUT:J

    .line 206
    new-instance v0, Lcom/android/launcher2/AnimationLayer$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$2;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 337
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    .line 340
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    .line 363
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mPaint:Landroid/graphics/Paint;

    .line 405
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 406
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/AnimationLayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/AnimationLayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    return-wide p1
.end method

.method private cleanupFinishedAnimations()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 342
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v2, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AnimationLayer$Anim;>;"
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 344
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 349
    .restart local v0       #a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 350
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 351
    .local v3, v:Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 352
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 353
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 354
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 355
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->recycle()V

    .line 359
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 361
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v3           #v:Landroid/widget/ImageView;
    :cond_3
    return-void
.end method

.method public static createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 2
    .parameter "animator1"
    .parameter "animator2"

    .prologue
    .line 844
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 845
    .local v1, set:Landroid/animation/AnimatorSet;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 849
    return-object v1
.end method

.method public static createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 2
    .parameter "animator1"
    .parameter "animator2"

    .prologue
    .line 835
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 836
    .local v1, set:Landroid/animation/AnimatorSet;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 840
    return-object v1
.end method

.method private getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    .line 373
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method private getNewImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 366
    .local v0, v:Landroid/widget/ImageView;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 367
    return-object v0

    .line 365
    .end local v0           #v:Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addOnCancelCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mOnCancelCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method public animateDrop(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;Z)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 9
    .parameter "view"
    .parameter "shadow"
    .parameter "fadeOutDrop"

    .prologue
    const/4 v4, 0x0

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object v4

    .line 387
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 390
    const/4 v2, 0x0

    .line 391
    .local v2, b:Landroid/graphics/Bitmap;
    instance-of v0, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 392
    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 395
    :cond_2
    if-nez v2, :cond_3

    .line 396
    invoke-virtual {p2}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 399
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x140

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer;->animateIcon(Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v8

    .line 401
    .local v8, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iput-boolean p3, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mFadeOutDrop:Z

    move-object v4, v8

    .line 402
    goto :goto_0
.end method

.method public animateIcon(Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 8
    .parameter "view"
    .parameter "b"
    .parameter "from"
    .parameter "to"
    .parameter "fadeMove"
    .parameter "duration"
    .parameter "fadeInShadow"

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 264
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 265
    .local v3, a:Landroid/widget/ImageView;
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;II)V

    .line 268
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 269
    .local v0, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    if-eqz p5, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 270
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 276
    return-object v0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    move v7, p7

    .line 272
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V

    goto :goto_0
.end method

.method public areTouchEventsBlocked()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    if-eqz v1, :cond_0

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 192
    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public buildBasicAnim(Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 4
    .parameter "view"
    .parameter "b"
    .parameter "index"

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 282
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    .line 284
    .local v1, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    if-nez p2, :cond_0

    .line 285
    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 298
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-object v1

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 288
    .local v0, a:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 292
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 294
    invoke-virtual {p0, v0, p3, v2}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 295
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public cancelAnimationFor(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 329
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 334
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    return-void
.end method

.method public cancelAnimations()V
    .locals 6

    .prologue
    .line 303
    iget-object v5, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 304
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    goto :goto_0

    .line 307
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v4, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Ljava/lang/Runnable;>;>;"
    iget-object v5, p0, Lcom/android/launcher2/AnimationLayer;->mOnCancelCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 309
    .local v1, c:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Runnable;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 310
    .local v3, r:Ljava/lang/Runnable;
    if-eqz v3, :cond_1

    .line 311
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 313
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 316
    .end local v1           #c:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Runnable;>;"
    .end local v3           #r:Ljava/lang/Runnable;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 317
    .restart local v1       #c:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Runnable;>;"
    iget-object v5, p0, Lcom/android/launcher2/AnimationLayer;->mOnCancelCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 320
    .end local v1           #c:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Runnable;>;"
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 321
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 95
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 96
    .local v0, newOrientation:I
    iget v1, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v0, v1, :cond_0

    .line 97
    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 100
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 123
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 124
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, localState:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 127
    .local v2, rc:Z
    if-ne v0, v4, :cond_2

    .line 128
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 131
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 132
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    .line 133
    const/4 v2, 0x1

    .line 156
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 157
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 159
    :cond_1
    return v2

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-eq v3, v1, :cond_4

    .line 136
    :cond_3
    iput-object v6, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    goto :goto_0

    .line 137
    :cond_4
    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 139
    iput-object v6, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    .line 140
    const/4 v2, 0x1

    goto :goto_0

    .line 141
    :cond_5
    iget-boolean v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    if-nez v3, :cond_0

    .line 143
    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    if-ne v0, v5, :cond_7

    .line 145
    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 146
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 147
    if-ne v0, v5, :cond_7

    .line 150
    iput-boolean v4, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    .line 153
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 62
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    .line 64
    new-instance v0, Lcom/android/launcher2/AnimationLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$1;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AnimationLayer;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 231
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 244
    :goto_0
    return v1

    .line 234
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 235
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 237
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-boolean v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 241
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 242
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 244
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I
    .locals 6
    .parameter "shadow"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    invoke-virtual {p1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v0

    .line 379
    .local v0, offset:[I
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    aget v3, v0, v5

    sub-int/2addr v2, v3

    aput v2, v1, v5

    return-object v1
.end method

.method public getLocationFromCellPos(IILcom/android/launcher2/CellLayout;Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .locals 19
    .parameter "x"
    .parameter "y"
    .parameter "layout"
    .parameter "v"
    .parameter "b"

    .prologue
    .line 462
    const/4 v15, 0x2

    new-array v7, v15, [I

    .local v7, l1:[I
    const/4 v15, 0x2

    new-array v8, v15, [I

    .line 464
    .local v8, l2:[I
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 466
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v13

    .line 467
    .local v13, sx:F
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v14

    .line 468
    .local v14, sy:F
    const/high16 v15, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 469
    const/high16 v15, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 470
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->getLocationOnScreen([I)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v15

    int-to-float v11, v15

    .line 472
    .local v11, lw:F
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v15

    int-to-float v9, v15

    .line 474
    .local v9, lh:F
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 475
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 478
    const/4 v15, 0x0

    aget v16, v8, v15

    mul-float v17, v11, v13

    sub-float v17, v11, v17

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    aput v16, v8, v15

    .line 479
    const/4 v15, 0x1

    aget v16, v8, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    aput v16, v8, v15

    .line 480
    const/4 v15, 0x1

    aget v16, v8, v15

    mul-float v17, v9, v14

    sub-float v17, v9, v17

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    aput v16, v8, v15

    .line 482
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 483
    .local v12, pos:[F
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v7, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v13

    const/16 v17, 0x0

    aget v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v12, v15

    .line 484
    const/4 v15, 0x1

    const/16 v16, 0x1

    aget v16, v7, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v14

    const/16 v17, 0x1

    aget v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v12, v15

    .line 486
    if-eqz p5, :cond_2

    .line 487
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 488
    .local v10, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v15, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    const/high16 v16, 0x4000

    div-float v5, v15, v16

    .line 489
    .local v5, dx:F
    const/4 v6, 0x0

    .line 490
    .local v6, dy:F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 491
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    int-to-float v6, v15

    .line 494
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getScaleX()F

    move-result v13

    .line 495
    const/4 v15, 0x0

    aget v16, v12, v15

    mul-float v17, v5, v13

    add-float v16, v16, v17

    aput v16, v12, v15

    .line 496
    const/high16 v15, 0x3f80

    cmpl-float v15, v13, v15

    if-eqz v15, :cond_1

    .line 497
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v4, v15

    .line 498
    .local v4, bw:F
    const/4 v15, 0x0

    aget v16, v12, v15

    mul-float v17, v4, v13

    sub-float v17, v4, v17

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    sub-float v16, v16, v17

    aput v16, v12, v15

    .line 500
    .end local v4           #bw:F
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getScaleY()F

    move-result v14

    .line 501
    const/4 v15, 0x1

    aget v16, v12, v15

    mul-float v17, v6, v14

    add-float v16, v16, v17

    aput v16, v12, v15

    .line 503
    const/high16 v15, 0x3f80

    cmpl-float v15, v14, v15

    if-eqz v15, :cond_2

    .line 504
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v3, v15

    .line 505
    .local v3, bh:F
    const/4 v15, 0x1

    aget v16, v12, v15

    mul-float v17, v3, v14

    sub-float v17, v3, v17

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    sub-float v16, v16, v17

    aput v16, v12, v15

    .line 509
    .end local v3           #bh:F
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v10           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v12, v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    aput v16, v8, v15

    .line 510
    const/4 v15, 0x1

    const/16 v16, 0x1

    aget v16, v12, v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    aput v16, v8, v15

    .line 512
    return-object v8
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .locals 1
    .parameter "v"
    .parameter "b"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I
    .locals 12
    .parameter "v"
    .parameter "b"
    .parameter "l"

    .prologue
    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 416
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-nez p3, :cond_0

    .line 417
    const/4 v8, 0x2

    new-array p3, v8, [I

    .line 419
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v6

    .line 420
    .local v6, sx:F
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v7

    .line 421
    .local v7, sy:F
    const/high16 v8, 0x3f80

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 422
    const/high16 v8, 0x3f80

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 423
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 424
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 425
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 427
    iget-object v5, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 428
    .local v5, pos:[F
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, p3, v9

    int-to-float v9, v9

    aput v9, v5, v8

    .line 429
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, p3, v9

    int-to-float v9, v9

    aput v9, v5, v8

    .line 430
    const/4 v8, 0x1

    aget v9, v5, v8

    iget-object v10, p0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    sub-float/2addr v9, v10

    aput v9, v5, v8

    .line 432
    if-eqz p2, :cond_3

    .line 434
    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float v2, v8, v9

    .line 435
    .local v2, dx:F
    const/4 v3, 0x0

    .line 436
    .local v3, dy:F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v3, v8

    .line 440
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v6

    .line 441
    const/4 v8, 0x0

    aget v9, v5, v8

    mul-float v10, v2, v6

    add-float/2addr v9, v10

    aput v9, v5, v8

    .line 442
    const/high16 v8, 0x3f80

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_2

    .line 443
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 444
    .local v1, bw:F
    const/4 v8, 0x0

    aget v9, v5, v8

    mul-float v10, v1, v6

    sub-float v10, v1, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    aput v9, v5, v8

    .line 446
    .end local v1           #bw:F
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v7

    .line 447
    const/4 v8, 0x1

    aget v9, v5, v8

    mul-float v10, v3, v7

    add-float/2addr v9, v10

    aput v9, v5, v8

    .line 449
    const/high16 v8, 0x3f80

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_3

    .line 450
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .line 451
    .local v0, bh:F
    const/4 v8, 0x1

    aget v9, v5, v8

    mul-float v10, v0, v7

    sub-float v10, v0, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    aput v9, v5, v8

    .line 455
    .end local v0           #bh:F
    .end local v2           #dx:F
    .end local v3           #dy:F
    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v5, v9

    float-to-int v9, v9

    aput v9, p3, v8

    .line 456
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v5, v9

    float-to-int v9, v9

    aput v9, p3, v8

    .line 458
    return-object p3
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 165
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 167
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 168
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mOnCancelCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOnScreen([I)V

    .line 107
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 108
    return-void
.end method

.method public updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 3
    .parameter "view"
    .parameter "to"
    .parameter "duration"
    .parameter "clip"

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 220
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 221
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher2/AnimationLayer$Anim;->update([IIZ)V

    .line 226
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
