.class Lcom/android/launcher2/PanelDrawer$PanelDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PanelDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PanelDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelDrawable"
.end annotation


# instance fields
.field private mAlpha:I

.field private mBackgroundDarken:F

.field private mBaseDarken:F

.field private mBlend:Z

.field private mBounds:Landroid/graphics/Rect;

.field private mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

.field final synthetic this$0:Lcom/android/launcher2/PanelDrawer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PanelDrawer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 417
    iput-object p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 418
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    .line 419
    iput v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    .line 420
    iput v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    .line 422
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 427
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 431
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 432
    .local v2, width:I
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 433
    .local v3, height:I
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float v4, v0, v1

    .line 435
    .local v4, alpha:F
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 438
    :cond_1
    new-instance v0, Lcom/android/launcher2/PanelDrawer$Functor;

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v5, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    iget v6, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    iget-boolean v7, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/PanelDrawer$Functor;-><init>(Lcom/android/launcher2/PanelDrawer;IIFFFZ)V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    .line 440
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {p1, v0}, Lcom/android/launcher2/DrawGLFunction;->call(Landroid/graphics/Canvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 442
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 489
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 490
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 492
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 447
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "padding"

    .prologue
    .line 497
    const/16 v0, 0x14

    .line 498
    .local v0, p:I
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 499
    const/4 v1, 0x1

    return v1
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 485
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 452
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 453
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    .line 454
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 456
    :cond_0
    return-void
.end method

.method public setBackgroundDarken(F)V
    .locals 1
    .parameter "d"

    .prologue
    .line 459
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 460
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    .line 461
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 463
    :cond_0
    return-void
.end method

.method public setBaseDarken(F)V
    .locals 1
    .parameter "d"

    .prologue
    .line 466
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 467
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    .line 468
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 470
    :cond_0
    return-void
.end method

.method public setBlend(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    if-eq v0, p1, :cond_0

    .line 474
    iput-boolean p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    .line 475
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 477
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 480
    return-void
.end method
