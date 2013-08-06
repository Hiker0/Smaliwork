.class public Lcom/android/launcher2/QuickLaunch;
.super Landroid/widget/FrameLayout;
.source "QuickLaunch.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;


# static fields
.field private static final ALLAPPS:I = 0x0

.field private static final BOTH:I = 0x2

.field private static final CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QuickLaunch"


# instance fields
.field private mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

.field private mAllappsLayout:Landroid/widget/LinearLayout;

.field private mBackground:Landroid/view/View;

.field private mCameraIcon:Lcom/android/launcher2/AllappsIcon;

.field private mCameraLayout:Landroid/widget/LinearLayout;

.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private mIconDestination:I

.field private mIsLandscape:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/QuickLaunch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickLaunch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->QuickLaunch:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/QuickLaunch;->mIsLandscape:Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/QuickLaunch;)Lcom/android/launcher2/HomeFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/QuickLaunch;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/QuickLaunch;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/QuickLaunch;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public collectPreWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    return-void
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v9, 0x7f05000c

    const v8, 0x7f05000b

    const v7, 0x7f050001

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 210
    .local v1, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 211
    .local v2, drag:Z
    const/4 v3, 0x0

    .line 212
    .local v3, shrink:Z
    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v6, :cond_5

    .line 213
    const/4 v3, 0x1

    .line 219
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_8

    .line 220
    :cond_1
    invoke-static {v1, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 221
    .local v0, animator:Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    .line 225
    invoke-static {v1, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 226
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 232
    const v6, 0x7f050002

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 235
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_4

    .line 240
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v4, v4}, Lcom/android/launcher2/AllappsIcon;->setDimmed(ZZ)V

    .line 241
    iget-object v4, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    .line 268
    :cond_4
    :goto_2
    invoke-static {v1, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    return-void

    .line 214
    .end local v0           #animator:Landroid/animation/Animator;
    :cond_5
    sget-object v6, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v6, :cond_0

    .line 215
    if-eqz p4, :cond_6

    move v2, v4

    :goto_3
    goto :goto_0

    :cond_6
    move v2, v5

    goto :goto_3

    .line 234
    .restart local v0       #animator:Landroid/animation/Animator;
    :cond_7
    invoke-static {v1, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_1

    .line 244
    .end local v0           #animator:Landroid/animation/Animator;
    :cond_8
    const/high16 v6, 0x7f05

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 245
    .restart local v0       #animator:Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_9

    .line 249
    invoke-static {v1, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 250
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_9
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_a

    .line 255
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 256
    const v6, 0x7f050003

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 259
    :goto_4
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_a
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_4

    .line 264
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v5, v4}, Lcom/android/launcher2/AllappsIcon;->setDimmed(ZZ)V

    .line 265
    iget-object v5, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    goto :goto_2

    .line 258
    :cond_b
    invoke-static {v1, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_4
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "aCanvas"

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 86
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 87
    return-void
.end method

.method getAllappsIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method public getIconDestination()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    return v0
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 281
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 291
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 293
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 302
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 311
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 312
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 314
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const v1, 0x7f070052

    .line 92
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 94
    iget v0, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    .line 110
    return-void

    .line 96
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method resetLayout()V
    .locals 10

    .prologue
    const v9, 0x7f0e00c5

    const v8, 0x7f0e002b

    const v7, 0x7f030039

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 117
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 122
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AllappsIcon;

    iput-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    .line 125
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v5, v5}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v2, v8}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 129
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AllappsIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v3, Lcom/android/launcher2/QuickLaunch$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickLaunch$1;-><init>(Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AllappsIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    :cond_0
    iget v2, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 157
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AllappsIcon;

    iput-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    .line 159
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v5, v5}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v2, v9}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 162
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AllappsIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v3, Lcom/android/launcher2/QuickLaunch$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickLaunch$2;-><init>(Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AllappsIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    :cond_1
    return-void
.end method

.method public setIconDestination(I)V
    .locals 0
    .parameter "destination"

    .prologue
    .line 187
    iput p1, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    .line 188
    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeFragment;)V
    .locals 2
    .parameter "homeFragment"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/launcher2/QuickLaunch;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/QuickLaunch;->mIsLandscape:Z

    .line 81
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
