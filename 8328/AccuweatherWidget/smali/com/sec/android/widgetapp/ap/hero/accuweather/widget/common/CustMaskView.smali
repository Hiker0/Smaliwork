.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;
.super Landroid/widget/ImageView;
.source "CustMaskView.java"


# instance fields
.field private mHeight:I

.field private mMaskImg:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mPaint:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mPaint:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mPaint:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02004d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mMaskImg:Landroid/graphics/Bitmap;

    .line 51
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mWidth:I

    .line 52
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mHeight:I

    .line 53
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mMaskImg:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mMaskImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 60
    .local v0, sc:Landroid/graphics/NinePatch;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mWidth:I

    iget v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/CustMaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 63
    return-void
.end method
