.class public Lcom/android/launcher2/AppIconView;
.super Landroid/widget/TextView;
.source "AppIconView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppIconView$ShadowReadyCallback;
    }
.end annotation


# static fields
.field private static final HOME:I = 0x0

.field private static final MENU:I = 0x1

.field static final PADDING_V:F = 3.0f

.field static final SHADOW_LARGE_COLOUR:I = -0x23000000

.field static final SHADOW_LARGE_RADIUS:F = 4.0f

.field static final SHADOW_SMALL_COLOUR:I = -0x34000000

.field static final SHADOW_SMALL_RADIUS:F = 1.75f

.field static final SHADOW_Y_OFFSET:F = 2.0f

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field static sIconTopToTopOffset:I


# instance fields
.field private mBoundsRect:Landroid/graphics/Rect;

.field private mCheckedOverlay:Landroid/graphics/drawable/Drawable;

.field private mDimAmount:F

.field protected mDrawIcon:Z

.field protected mDrawShadow:Z

.field protected mDrawText:Z

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconDestination:I

.field private mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsChecked:Z

.field private mIsCheckingEnabled:Z

.field private mIsDimmed:Z

.field private final mLastTouch:[I

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field final mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

.field final mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

.field protected mTextVisible:Z

.field private mUncheckedOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v7, 0x64

    const/high16 v5, 0x3f80

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    .line 59
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    .line 63
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    .line 70
    iput v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    .line 73
    const v2, 0x3f0ccccd

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    .line 74
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    .line 85
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v2, v7, v8, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    .line 86
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v2, v7, v8, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    .line 263
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawText:Z

    .line 264
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 265
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 471
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    .line 99
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->AppIconView:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v2, v4, :cond_0

    .line 107
    new-instance v2, Ljava/util/MissingResourceException;

    const-string v3, "AppIconView must have the attribute launcher:destination set to either \'home\' or \'menu\' set"

    const-string v4, "launcher:destination"

    const-string v5, "value of either \'home\' or \'menu\'"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    const v2, 0x7f0c008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sIconCenterXOffset:I

    .line 115
    const v2, 0x7f0c008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    .line 117
    const v2, 0x7f0c008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    .line 118
    const v2, 0x7f0c008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    .line 119
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    .line 120
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 125
    const/high16 v2, 0x4080

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    const/high16 v5, -0x2300

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher2/AppIconView;->setShadowLayer(FFFI)V

    return-void
.end method

.method static createDarkenColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 4
    .parameter "mult"

    .prologue
    .line 578
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 580
    const/high16 v2, 0x437f

    mul-float/2addr v2, p0

    float-to-int v0, v2

    .line 581
    .local v0, alpha:I
    rsub-int v0, v0, 0xff

    .line 582
    const/16 v2, 0xff

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 583
    .local v1, color:I
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v2
.end method

.method private drawIconShadow(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x4080

    const/high16 v2, 0x4000

    const/high16 v3, -0x2300

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 372
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 374
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 376
    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 378
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x3fe0

    const/high16 v2, -0x3400

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 380
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 382
    return-void
.end method

.method static setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V
    .locals 1
    .parameter "mult"
    .parameter "paint"

    .prologue
    .line 573
    invoke-static {p0}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 574
    .local v0, filter:Landroid/graphics/ColorFilter;
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 575
    return-void
.end method

.method private setIconShadow(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 235
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 236
    return-void
.end method

.method private updateCheckingOverlay()V
    .locals 2

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 451
    :goto_0
    return-void

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 449
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 130
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V

    .line 131
    return-void
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "item"
    .parameter "icon"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eq p1, v3, :cond_7

    .line 135
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_4

    .line 139
    :cond_0
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, newFolderTitle:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    .end local v1           #newFolderTitle:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->setTag(Ljava/lang/Object;)V

    .line 155
    if-nez p2, :cond_6

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/android/launcher2/FolderIconView;

    if-ne v3, v4, :cond_5

    const/4 v0, 0x1

    .line 157
    .local v0, isFolder:Z
    :goto_1
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to create a FastBitmapDrawable with a null bitmap. See attached item info: isFolder= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    .end local v0           #isFolder:Z
    :cond_3
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 146
    .local v2, newTitle:Ljava/lang/String;
    const-string v3, "Folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 151
    .end local v2           #newTitle:Ljava/lang/String;
    :cond_4
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 160
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->resetShadow()V

    .line 164
    :cond_7
    return-void
.end method

.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 24
    .parameter "badgeCount"

    .prologue
    .line 478
    if-nez p1, :cond_0

    const/16 v20, 0x0

    .line 528
    :goto_0
    return-object v20

    .line 480
    :cond_0
    const/16 v19, 0x0

    .line 481
    .local v19, width:I
    const/4 v12, 0x0

    .line 483
    .local v12, height:I
    const/16 v20, 0x64

    move/from16 v0, p1

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget v21, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 489
    :goto_1
    sget-object v20, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 490
    .local v14, iwidth:I
    sget-object v20, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 491
    .local v13, iheight:I
    sget-object v20, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 493
    .local v16, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    .line 494
    .local v18, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 495
    .local v15, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .line 496
    .local v17, paddingRight:I
    sub-int v20, v14, v16

    sub-int v11, v20, v17

    .line 497
    .local v11, defaultContentsWidth:I
    sub-int v20, v13, v18

    sub-int v10, v20, v15

    .line 500
    .local v10, defaultContentsHeight:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    .line 502
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 504
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 505
    .local v9, contentsWidth:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 506
    .local v8, contentsHeight:I
    if-ge v9, v10, :cond_3

    .line 507
    move v9, v11

    .line 512
    :goto_2
    if-ge v8, v10, :cond_1

    .line 513
    move v8, v10

    .line 516
    :cond_1
    add-int v20, v9, v16

    add-int v19, v20, v17

    .line 517
    add-int v20, v8, v18

    add-int v12, v20, v15

    .line 519
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 520
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 522
    .local v7, c:Landroid/graphics/Canvas;
    sget-object v20, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 523
    sget-object v20, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 525
    div-int/lit8 v20, v19, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-int/lit8 v21, v12, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->descent()F

    move-result v23

    add-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    sub-float v21, v21, v22

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 528
    new-instance v20, Lcom/android/launcher2/FastBitmapDrawable;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 486
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v5           #badgeText:Ljava/lang/String;
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #c:Landroid/graphics/Canvas;
    .end local v8           #contentsHeight:I
    .end local v9           #contentsWidth:I
    .end local v10           #defaultContentsHeight:I
    .end local v11           #defaultContentsWidth:I
    .end local v13           #iheight:I
    .end local v14           #iwidth:I
    .end local v15           #paddingBottom:I
    .end local v16           #paddingLeft:I
    .end local v17           #paddingRight:I
    .end local v18           #paddingTop:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget v21, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1

    .line 509
    .restart local v5       #badgeText:Ljava/lang/String;
    .restart local v6       #bounds:Landroid/graphics/Rect;
    .restart local v8       #contentsHeight:I
    .restart local v9       #contentsWidth:I
    .restart local v10       #defaultContentsHeight:I
    .restart local v11       #defaultContentsWidth:I
    .restart local v13       #iheight:I
    .restart local v14       #iwidth:I
    .restart local v15       #paddingBottom:I
    .restart local v16       #paddingLeft:I
    .restart local v17       #paddingRight:I
    .restart local v18       #paddingTop:I
    :cond_3
    add-int/lit8 v9, v9, 0xa

    goto/16 :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 299
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->drawShadow(Landroid/graphics/Canvas;)V

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->drawIconAndText(Landroid/graphics/Canvas;)V

    .line 303
    return-void
.end method

.method public drawIconAndText(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v0

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 308
    .local v6, alpha:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCurrentTextColor()I

    move-result v7

    .line 309
    .local v7, color:I
    const v0, 0xffffff

    and-int/2addr v7, v0

    .line 310
    shl-int/lit8 v0, v6, 0x18

    or-int/2addr v7, v0

    .line 311
    invoke-virtual {p0, v7}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    .line 313
    const/4 v11, 0x0

    .line 314
    .local v11, shadow_color:I
    shl-int/lit8 v0, v6, 0x18

    or-int/2addr v11, v0

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x4080

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 317
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawText:Z

    if-eqz v0, :cond_6

    .line 318
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 321
    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 324
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 346
    .end local v6           #alpha:I
    .end local v7           #color:I
    .end local v11           #shadow_color:I
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 347
    .local v9, overlay:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-eqz v0, :cond_5

    .line 348
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v0

    sget v1, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    add-int v12, v0, v1

    .line 350
    .local v12, top:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v13

    .line 351
    .local v13, viewWidth:I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 352
    .local v10, overlayWidth:I
    div-int/lit8 v0, v13, 0x2

    sget v1, Lcom/android/launcher2/AppIconView;->sIconCenterXOffset:I

    add-int v8, v0, v1

    .line 353
    .local v8, left:I
    add-int v0, v8, v10

    if-le v0, v13, :cond_4

    .line 354
    add-int v0, v8, v10

    sub-int/2addr v0, v13

    sub-int/2addr v8, v0

    .line 357
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v0

    add-int/2addr v8, v0

    .line 358
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, v12

    invoke-virtual {v9, v8, v12, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 362
    .end local v8           #left:I
    .end local v10           #overlayWidth:I
    .end local v12           #top:I
    .end local v13           #viewWidth:I
    :cond_5
    return-void

    .line 326
    .end local v9           #overlay:Landroid/graphics/drawable/Drawable;
    .restart local v6       #alpha:I
    .restart local v7       #color:I
    .restart local v11       #shadow_color:I
    :cond_6
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-eqz v0, :cond_2

    .line 327
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 333
    .end local v6           #alpha:I
    .end local v7           #color:I
    .end local v11           #shadow_color:I
    :cond_7
    iget v0, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-nez v0, :cond_8

    .line 334
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    if-eqz v0, :cond_3

    .line 335
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppIconView;->drawIconShadow(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 337
    :cond_8
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    if-eqz v0, :cond_3

    .line 338
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 282
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    if-eqz v3, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 284
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 285
    .local v2, dw:I
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v1, v3, v4

    .line 286
    .local v1, dh:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 287
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 288
    .local v0, alpha:I
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 289
    const/16 v3, 0xff

    if-ge v0, v3, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 292
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    .end local v0           #alpha:I
    .end local v1           #dh:I
    .end local v2           #dw:I
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 394
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 395
    .local v0, overlay:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 397
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 399
    :cond_0
    return-void
.end method

.method public generateShadowIfNeeded()V
    .locals 5

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->shouldHaveIconShadow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 180
    .local v0, item:Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/Bitmap;)V

    .line 189
    .end local v0           #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local v0       #item:Lcom/android/launcher2/BaseItem;
    :cond_1
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;-><init>(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher2/ShadowGen;->queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public getDimAmount()F
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    return v0
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getTextVisible()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    return v0
.end method

.method public hideBadge()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 545
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDimmed()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    return v0
.end method

.method public onDrop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 276
    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 277
    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawText:Z

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 279
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 248
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 260
    :goto_0
    return v0

    .line 252
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 253
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "vis"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 169
    if-eqz p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->generateShadowIfNeeded()V

    goto :goto_0
.end method

.method public refreshBadge()V
    .locals 0

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 549
    return-void
.end method

.method public resetShadow()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->generateShadowIfNeeded()V

    .line 176
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    .line 461
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->updateCheckingOverlay()V

    .line 462
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 463
    return-void
.end method

.method public setCheckingEnabled(Z)V
    .locals 0
    .parameter "checkingEnabled"

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    .line 429
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->updateCheckingOverlay()V

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 431
    return-void
.end method

.method public setDimAmount(F)V
    .locals 1
    .parameter "dimAmount"

    .prologue
    .line 589
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iput p1, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    goto :goto_0
.end method

.method public setDimmed(ZZ)V
    .locals 6
    .parameter "isDim"
    .parameter "invalidate"

    .prologue
    .line 554
    iget-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    if-ne v5, p1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    .line 557
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    .line 558
    .local v0, dimValue:F
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 559
    .local v4, p:Landroid/graphics/Paint;
    invoke-static {v0, v4}, Lcom/android/launcher2/AppIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 560
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 561
    .local v1, drawables:[Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 562
    .local v2, filter:Landroid/graphics/ColorFilter;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_4

    .line 563
    aget-object v5, v1, v3

    if-eqz v5, :cond_2

    .line 564
    aget-object v5, v1, v3

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 562
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 557
    .end local v0           #dimValue:F
    .end local v1           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v2           #filter:Landroid/graphics/ColorFilter;
    .end local v3           #i:I
    .end local v4           #p:Landroid/graphics/Paint;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 567
    .restart local v0       #dimValue:F
    .restart local v1       #drawables:[Landroid/graphics/drawable/Drawable;
    .restart local v2       #filter:Landroid/graphics/ColorFilter;
    .restart local v3       #i:I
    .restart local v4       #p:Landroid/graphics/Paint;
    :cond_4
    if-eqz p2, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 218
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 219
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 220
    .local v0, iconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->destroyDrawingCache()V

    .line 224
    return-void
.end method

.method setIconShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 239
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 240
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 386
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 387
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 389
    :cond_0
    return-void
.end method

.method public setTextAlpha(I)V
    .locals 1
    .parameter "a"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 595
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 411
    if-eqz p1, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 413
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    if-nez v1, :cond_0

    .line 414
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .end local v0           #tag:Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    goto :goto_0
.end method

.method protected shouldHaveIconShadow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 192
    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBadge()V
    .locals 3

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 535
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-nez v2, :cond_1

    .line 536
    :cond_0
    const/4 v0, 0x0

    .line 540
    .end local v1           #tag:Ljava/lang/Object;
    .local v0, badge:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 541
    return-void

    .line 538
    .end local v0           #badge:Landroid/graphics/drawable/Drawable;
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_1
    check-cast v1, Lcom/android/launcher2/BaseItem;

    .end local v1           #tag:Ljava/lang/Object;
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #badge:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public startFadeShadow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 268
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 270
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 271
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawText:Z

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 273
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    .line 468
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
