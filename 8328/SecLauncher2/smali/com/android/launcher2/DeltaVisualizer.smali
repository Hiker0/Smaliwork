.class public Lcom/android/launcher2/DeltaVisualizer;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBlockTransform:Z

.field private final mLastDeltas:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:Lcom/android/launcher2/CellLayout;

.field private final tmpRemove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    .line 32
    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeltaVisualizer;)Ljava/util/IdentityHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/DeltaVisualizer;)Lcom/android/launcher2/CellLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeltaVisualizer;->removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer;->bounceListner(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/DeltaVisualizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    return v0
.end method

.method private animateDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 12
    .parameter "d"

    .prologue
    const/4 v11, 0x0

    .line 81
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    iget-object v2, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    iget-object v2, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PositionDelta;

    .line 83
    .local v9, od:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v9, p1}, Lcom/android/launcher2/PositionDelta;->differentFrom(Lcom/android/launcher2/PositionDelta;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    .end local v9           #od:Lcom/android/launcher2/PositionDelta;
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 89
    .local v0, al:Lcom/android/launcher2/AnimationLayer;
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    .line 90
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 91
    iget-object v1, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0, v1, v4}, Lcom/android/launcher2/DeltaVisualizer;->getBitmapForAnim(Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 92
    .local v5, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer;->getLocationFromCellPos(IILcom/android/launcher2/CellLayout;Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v10

    .line 93
    .local v10, to:[I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    .line 94
    const/16 v1, 0x64

    invoke-virtual {v0, v4, v10, v1, v11}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v7

    .line 95
    .local v7, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    if-eqz v7, :cond_2

    .line 97
    invoke-direct {p0, v7}, Lcom/android/launcher2/DeltaVisualizer;->removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V

    .line 98
    iput-boolean v11, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    .line 99
    invoke-direct {p0, v7, v4}, Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    .line 100
    invoke-direct {p0, v7, v4}, Lcom/android/launcher2/DeltaVisualizer;->bounceOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    .line 124
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    iget-object v2, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v1, v2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v8

    .line 104
    .local v8, from:[I
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v6

    .line 106
    .local v6, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-direct {p0, v6, v4}, Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    .line 107
    invoke-direct {p0, v6, v4}, Lcom/android/launcher2/DeltaVisualizer;->bounceOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    .line 109
    invoke-virtual {v6, v10}, Lcom/android/launcher2/AnimationLayer$Anim;->setTo([I)V

    .line 110
    invoke-virtual {v6, v8}, Lcom/android/launcher2/AnimationLayer$Anim;->setFrom([I)V

    .line 111
    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 114
    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 116
    new-instance v1, Lcom/android/launcher2/DeltaVisualizer$1;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher2/DeltaVisualizer$1;-><init>(Lcom/android/launcher2/DeltaVisualizer;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->addOnCancelCallback(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private bounceListner(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 9
    .parameter "a"
    .parameter "v"

    .prologue
    .line 197
    const/high16 v8, 0x4100

    .line 198
    .local v8, shake_amount:F
    const v7, 0x3cf5c28f

    .line 200
    .local v7, scale_amount:F
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v6

    check-cast v6, Landroid/animation/ValueAnimator;

    .line 201
    .local v6, anim:Landroid/animation/ValueAnimator;
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v5

    .line 202
    .local v5, al:Lcom/android/launcher2/AnimationLayer;
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v3

    .line 203
    .local v3, from:[I
    new-instance v0, Lcom/android/launcher2/DeltaVisualizer$5;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/DeltaVisualizer$5;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;[ILandroid/view/View;Lcom/android/launcher2/AnimationLayer;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 233
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 234
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 235
    const-wide/16 v0, 0x1c2

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 237
    new-instance v0, Lcom/android/launcher2/DeltaVisualizer$6;

    invoke-direct {v0, p0, v6}, Lcom/android/launcher2/DeltaVisualizer$6;-><init>(Lcom/android/launcher2/DeltaVisualizer;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method private bounceOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 2
    .parameter "a"
    .parameter "v"

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 186
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DeltaVisualizer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer$4;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    return-void
.end method

.method private finishOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 2
    .parameter "a"
    .parameter "v"

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 174
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DeltaVisualizer$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher2/DeltaVisualizer$3;-><init>(Lcom/android/launcher2/DeltaVisualizer;Landroid/view/View;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    return-void
.end method

.method private getBitmapForAnim(Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "item"
    .parameter "child"

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->buildDrawingCache()V

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    :cond_0
    if-nez v0, :cond_1

    .line 134
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 138
    :goto_0
    return-object v1

    .line 136
    :cond_1
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    .local v1, res:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

.method private positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 2
    .parameter "a"
    .parameter "v"

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DeltaVisualizer$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer$2;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 169
    return-void
.end method

.method private removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 248
    .local v0, a:Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 249
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 251
    .end local v0           #a:Landroid/animation/ValueAnimator;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    .line 252
    return-void
.end method

.method private resetItem(Lcom/android/launcher2/BaseItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 66
    .local v1, al:Lcom/android/launcher2/AnimationLayer;
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, v:Landroid/view/View;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    .line 68
    const/4 v3, 0x0

    const/16 v4, 0x12c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 69
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, v0}, Lcom/android/launcher2/DeltaVisualizer;->removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V

    .line 71
    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    .line 72
    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/DeltaVisualizer;->finishOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    .line 73
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 74
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    .line 57
    iget-object v2, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 58
    .local v0, i:Lcom/android/launcher2/BaseItem;
    invoke-direct {p0, v0}, Lcom/android/launcher2/DeltaVisualizer;->resetItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    .line 60
    .end local v0           #i:Lcom/android/launcher2/BaseItem;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->clear()V

    .line 61
    return-void
.end method

.method public updateForDeltas(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    if-nez p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 40
    .local v0, al:Lcom/android/launcher2/AnimationLayer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PositionDelta;

    .line 41
    .local v1, d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v1}, Lcom/android/launcher2/PositionDelta;->changed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    invoke-direct {p0, v1}, Lcom/android/launcher2/DeltaVisualizer;->animateDelta(Lcom/android/launcher2/PositionDelta;)V

    goto :goto_1

    .line 43
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    iget-object v5, v1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    iget-object v4, v1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0, v4}, Lcom/android/launcher2/DeltaVisualizer;->resetItem(Lcom/android/launcher2/BaseItem;)V

    .line 46
    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    iget-object v5, v1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    .end local v1           #d:Lcom/android/launcher2/PositionDelta;
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 51
    .local v2, i:Lcom/android/launcher2/BaseItem;
    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 53
    .end local v2           #i:Lcom/android/launcher2/BaseItem;
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
