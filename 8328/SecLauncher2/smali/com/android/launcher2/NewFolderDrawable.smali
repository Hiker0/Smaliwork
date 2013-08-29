.class public Lcom/android/launcher2/NewFolderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NewFolderDrawable.java"


# static fields
.field public static final OPEN_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/NewFolderDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/NewFolderDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBack:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mCamera:Landroid/graphics/Camera;

.field private mFront:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOpenAnimator:Landroid/animation/Animator;

.field private mOpenFactor:F

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mScaleAnimator:Landroid/animation/Animator;

.field private mScaleFactor:F

.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-class v0, Lcom/android/launcher2/NewFolderDrawable;

    const-class v1, Ljava/lang/Float;

    const-string v2, "openFactor"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    .line 49
    const-class v0, Lcom/android/launcher2/NewFolderDrawable;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/NewFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 23
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    .line 26
    iput-boolean v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    .line 28
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    .line 53
    iput-object p1, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, 0x999999

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 56
    return-void
.end method

.method private drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V
    .locals 7
    .parameter "canvas"
    .parameter "d"
    .parameter "openAngle"

    .prologue
    const/4 v6, 0x0

    .line 65
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 66
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 67
    .local v1, focalX:F
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    .line 71
    .local v2, focalY:F
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f451eb8

    mul-float/2addr v3, v4

    sub-float v0, v3, v2

    .line 73
    .local v0, bottomOfFolder:F
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    const/high16 v4, -0x3e10

    iget v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 74
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    const/high16 v4, -0x3ee0

    iget v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 75
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    neg-float v4, v0

    invoke-virtual {v3, v6, v4, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 76
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    iget v4, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    mul-float/2addr v4, p3

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 77
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v6, v0, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    iget-object v4, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 81
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 82
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 83
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 84
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 87
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 89
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x41a0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/NewFolderDrawable;->drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 61
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    const/high16 v1, -0x3e10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/NewFolderDrawable;->drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 62
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, -0x3

    return v0
.end method

.method public getOpenFactor()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "bounds"

    .prologue
    .line 179
    const-string v0, "XXX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 183
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 185
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 189
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 99
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 13
    .parameter "state"

    .prologue
    const/high16 v12, 0x3f80

    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 110
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 111
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, selected:Z
    const/4 v0, 0x0

    .line 115
    .local v0, enabled:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_2

    .line 116
    aget v6, p1, v1

    const v7, 0x10100a1

    if-ne v6, v7, :cond_0

    .line 117
    const/4 v3, 0x1

    .line 118
    :cond_0
    aget v6, p1, v1

    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    .line 119
    const/4 v0, 0x1

    .line 115
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v3, v4

    .line 124
    :goto_1
    iget-boolean v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    if-ne v3, v6, :cond_4

    .line 163
    :goto_2
    return v4

    :cond_3
    move v3, v5

    .line 121
    goto :goto_1

    .line 125
    :cond_4
    iput-boolean v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    .line 127
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_5

    .line 128
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 131
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_6

    .line 132
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 135
    :cond_6
    if-eqz v3, :cond_7

    .line 137
    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    aput v8, v7, v5

    const v8, 0x3fa66666

    aput v8, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    .line 138
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 139
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v7, 0x43

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 141
    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    aput v8, v7, v5

    aput v12, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    .line 142
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    const-wide/16 v6, 0x43

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 143
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 157
    :goto_3
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 160
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 147
    :cond_7
    const/16 v2, 0xa7

    .line 148
    .local v2, kDuration:I
    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    aput v8, v7, v5

    const/4 v8, 0x0

    aput v8, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    .line 149
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 150
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    const-wide/16 v7, 0xa7

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 152
    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    aput v8, v7, v5

    aput v12, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    .line 153
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v5, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 154
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v6, 0xa7

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_3
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 167
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 170
    return-void
.end method

.method public setOpenFactor(F)V
    .locals 0
    .parameter "factor"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    .line 33
    invoke-virtual {p0}, Lcom/android/launcher2/NewFolderDrawable;->invalidateSelf()V

    .line 34
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 2
    .parameter "factor"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    iput p1, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    .line 41
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 42
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 43
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/NewFolderDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher2/NewFolderDrawable;->invalidateSelf()V

    goto :goto_0
.end method
