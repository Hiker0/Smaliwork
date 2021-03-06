.class public Lcom/android/launcher2/PagedViewWidget;
.super Landroid/widget/LinearLayout;
.source "PagedViewWidget.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PagedViewWidgetLayout"

.field private static final sPreviewFadeInDuration:I = 0x50

.field private static final sPreviewFadeInStaggerDuration:I = 0x14


# instance fields
.field private mCheckedAlpha:F

.field private mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCheckedFadeInDuration:I

.field private mCheckedFadeOutDuration:I

.field private mDeleteRegion:Landroid/graphics/Rect;

.field private mDimensionsFormatString:Ljava/lang/String;

.field private mImage:Landroid/widget/ImageView;

.field private mIsChecked:Z

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

.field spanX:I

.field spanY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x7f0a0003

    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 55
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 76
    .local v0, alpha:I
    if-lez v0, :cond_0

    .line 77
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4380

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 78
    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeInDuration:I

    .line 80
    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeOutDuration:I

    .line 83
    :cond_0
    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setWillNotDraw(Z)V

    .line 86
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setClipToPadding(Z)V

    .line 87
    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getChildCount()I

    move-result v0

    .line 181
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public applyCellSpan(II)V
    .locals 5
    .parameter "cellSpanWidth"
    .parameter "cellSpanHeight"

    .prologue
    .line 108
    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, dims:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    iput p2, p0, Lcom/android/launcher2/PagedViewWidget;->spanY:I

    .line 114
    iput p1, p0, Lcom/android/launcher2/PagedViewWidget;->spanX:I

    .line 115
    return-void
.end method

.method public applyLabel(Ljava/lang/String;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 102
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, name:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V
    .locals 3
    .parameter "preview"
    .parameter "index"
    .parameter "scale"
    .parameter "animate"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    new-instance v0, Lcom/android/launcher2/DynamicShadowMixin;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/launcher2/DynamicShadowMixin;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    .line 122
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DynamicShadowMixin;->setViewToInvalidate(Landroid/view/View;)V

    .line 124
    if-eqz p4, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 126
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x14

    add-int/lit8 v1, v1, 0x50

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 132
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    .line 252
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 253
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 255
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 256
    .local v2, overlay:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    .line 257
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 259
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 260
    .local v6, overlayWd:I
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 261
    .local v3, overlayHt:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 262
    .local v5, overlayRect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 263
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 264
    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 267
    :cond_0
    div-int/lit8 v4, v3, 0x2

    .line 269
    .local v4, overlayHtHalf:I
    new-instance v0, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v0, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 270
    .local v0, imagePos:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v8, v0}, Lcom/android/launcher2/PagedViewWidget;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 271
    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v8, v4

    .line 272
    .local v7, top:I
    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, v8, v6

    .line 273
    .local v1, left:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getScrollX()I

    move-result v8

    add-int/2addr v1, v8

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    .line 275
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    add-int v9, v1, v6

    add-int v10, v7, v3

    invoke-virtual {v8, v1, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 277
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    .end local v0           #imagePos:Landroid/graphics/Rect;
    .end local v1           #left:I
    .end local v3           #overlayHt:I
    .end local v4           #overlayHtHalf:I
    .end local v5           #overlayRect:Landroid/graphics/Rect;
    .end local v6           #overlayWd:I
    .end local v7           #top:I
    :cond_1
    return-void
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 138
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/DynamicShadowMixin;->draw(Landroid/graphics/Canvas;)V

    .line 141
    .end local v0           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 145
    .local v0, ret:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 146
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    return v0
.end method

.method public isDeleteRequested(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 283
    .local v0, action:I
    const/4 v1, 0x0

    .line 285
    .local v1, res:Z
    iget-object v5, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    and-int/lit16 v5, v0, 0xff

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    :cond_0
    move v2, v1

    .line 292
    .end local v1           #res:Z
    .local v2, res:I
    :goto_0
    return v2

    .line 289
    .end local v2           #res:I
    .restart local v1       #res:Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 290
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 291
    .local v4, y:F
    iget-object v5, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    move v2, v1

    .line 292
    .restart local v2       #res:I
    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    .line 98
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 164
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handlePagedViewWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 170
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handlePagedViewWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;->setChecked(ZZ)V

    .line 219
    return-void
.end method

.method setChecked(ZZ)V
    .locals 6
    .parameter "checked"
    .parameter "animate"

    .prologue
    .line 187
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-eq v2, p1, :cond_1

    .line 188
    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    .line 192
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-eqz v2, :cond_2

    .line 193
    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 194
    .local v0, alpha:F
    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeInDuration:I

    .line 201
    .local v1, duration:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 204
    :cond_0
    if-eqz p2, :cond_3

    .line 205
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 206
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 212
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->invalidate()V

    .line 214
    .end local v0           #alpha:F
    .end local v1           #duration:I
    :cond_1
    return-void

    .line 196
    :cond_2
    const/high16 v0, 0x3f80

    .line 197
    .restart local v0       #alpha:F
    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeOutDuration:I

    .restart local v1       #duration:I
    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->setAlpha(F)V

    goto :goto_1
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 233
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 234
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->invalidate()V

    .line 236
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->setChecked(Z)V

    .line 229
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
