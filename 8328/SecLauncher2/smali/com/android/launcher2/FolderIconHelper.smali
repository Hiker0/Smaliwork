.class public Lcom/android/launcher2/FolderIconHelper;
.super Ljava/lang/Object;
.source "FolderIconHelper.java"


# static fields
.field private static APP_ICON_HORIZONTAL_OFFSET:F

.field private static APP_ICON_POS_A:[Landroid/graphics/RectF;

.field private static APP_ICON_POS_B:[Landroid/graphics/RectF;

.field static APP_ICON_SCALE_FACTOR:F

.field private static APP_ICON_SIZE:I

.field private static APP_ICON_TOP_PADDING:F

.field private static APP_ICON_VERTICAL_OFFSET:F

.field private static DEBUG:Z

.field static EMPTY_BITMAP:Landroid/graphics/Bitmap;

.field private static final FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

.field private static final FOLDER_ICON_PAINT:Landroid/graphics/Paint;

.field private static FOLDER_ICON_RECT:Landroid/graphics/Rect;

.field static NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

.field static OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

.field static OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

.field private static mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    sput-object v1, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    .line 39
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 41
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 43
    new-array v1, v5, [Landroid/graphics/RectF;

    sput-object v1, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    new-array v1, v4, [Landroid/graphics/RectF;

    sput-object v1, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_B:[Landroid/graphics/RectF;

    .line 47
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_B:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/launcher2/FolderIconHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 120
    sput-boolean v3, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateAppIconPositions()V
    .locals 15

    .prologue
    .line 232
    sget v12, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SIZE:I

    int-to-float v12, v12

    sget v13, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    mul-float v7, v12, v13

    .line 234
    .local v7, scaledIconSize:F
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v7

    const/high16 v13, 0x3f00

    mul-float v6, v12, v13

    .line 241
    .local v6, leftOffsetForCenter:F
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sget v13, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_TOP_PADDING:F

    add-float v11, v12, v13

    .line 242
    .local v11, top:F
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    add-float v13, v6, v7

    add-float v14, v11, v7

    invoke-virtual {v12, v6, v11, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 246
    sget v12, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_HORIZONTAL_OFFSET:F

    add-float v2, v6, v12

    .line 247
    .local v2, icon2Left:F
    sget v12, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_HORIZONTAL_OFFSET:F

    sub-float v3, v6, v12

    .line 248
    .local v3, icon3Left:F
    const/4 v12, 0x2

    new-array v10, v12, [F

    const/4 v12, 0x0

    aput v2, v10, v12

    const/4 v12, 0x1

    aput v3, v10, v12

    .line 250
    .local v10, tempLeft:[F
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    const/4 v12, 0x1

    if-lt v0, v12, :cond_0

    .line 251
    add-int/lit8 v12, v0, -0x1

    aget v8, v10, v12

    .line 252
    .local v8, tLeft:F
    int-to-float v12, v0

    sget v13, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_VERTICAL_OFFSET:F

    mul-float/2addr v12, v13

    sub-float v9, v11, v12

    .line 253
    .local v9, tTop:F
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v12, v12, v0

    add-float v13, v8, v7

    add-float v14, v9, v7

    invoke-virtual {v12, v8, v9, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 250
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 259
    .end local v8           #tLeft:F
    .end local v9           #tTop:F
    :cond_0
    const/high16 v5, 0x4160

    .line 260
    .local v5, icon4VerticalOffset:F
    const/high16 v12, 0x4160

    sub-float v4, v11, v12

    .line 262
    .local v4, icon4Top:F
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    add-float v13, v6, v7

    add-float v14, v4, v7

    invoke-virtual {v12, v6, v4, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 272
    move v1, v6

    .line 273
    .local v1, icon1Left:F
    move v2, v6

    .line 276
    sget v12, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_HORIZONTAL_OFFSET:F

    sub-float/2addr v1, v12

    .line 277
    sget v12, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_HORIZONTAL_OFFSET:F

    add-float/2addr v2, v12

    .line 279
    const/4 v12, 0x0

    aput v1, v10, v12

    .line 280
    const/4 v12, 0x1

    aput v2, v10, v12

    .line 282
    const/4 v0, 0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 283
    aget v8, v10, v0

    .line 284
    .restart local v8       #tLeft:F
    int-to-float v12, v0

    sget v13, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_VERTICAL_OFFSET:F

    mul-float/2addr v12, v13

    sub-float v9, v11, v12

    .line 285
    .restart local v9       #tTop:F
    sget-object v12, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_B:[Landroid/graphics/RectF;

    aget-object v12, v12, v0

    add-float v13, v8, v7

    add-float v14, v9, v7

    invoke-virtual {v12, v8, v9, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 282
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 288
    .end local v8           #tLeft:F
    .end local v9           #tTop:F
    :cond_1
    return-void
.end method

.method static createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "folderIcon"
    .parameter "info"

    .prologue
    .line 55
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "folderIcon"
    .parameter "info"
    .parameter "hiddenIconIndex"

    .prologue
    .line 70
#hq start <<
    #const-string v1, "zxf-l"
    #const-string v2, "createFolderIconNoPlate: "
    #invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
#hq end >>

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->sort()V

    .line 72
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    .line 77
    .local v1, childCount:I
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, tempBitmap:Landroid/graphics/Bitmap;
    if-ltz p2, :cond_0

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 81
    invoke-interface {p1, p2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-object v2, v3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 82
    invoke-interface {p1, p2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    iput-object v4, v3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    const/4 v3, 0x1

    if-ne v3, v1, :cond_3

    .line 86
    invoke-static {p1}, Lcom/android/launcher2/FolderIconHelper;->drawFirstIcon(Lcom/android/launcher2/FolderItem;)V

    .line 95
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 96
    invoke-interface {p1, p2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iput-object v2, v3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 99
    :cond_2
    return-object v0

    .line 87
    :cond_3
    const/4 v3, 0x2

    if-ne v3, v1, :cond_4

    .line 88
    invoke-static {p1}, Lcom/android/launcher2/FolderIconHelper;->drawSecondIcon(Lcom/android/launcher2/FolderItem;)V

    goto :goto_0

    .line 89
    :cond_4
    const/4 v3, 0x3

    if-ne v3, v1, :cond_5

    .line 90
    invoke-static {p1}, Lcom/android/launcher2/FolderIconHelper;->drawThirdIcon(Lcom/android/launcher2/FolderItem;)V

    goto :goto_0

    .line 91
    :cond_5
    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 92
    invoke-static {p1}, Lcom/android/launcher2/FolderIconHelper;->drawFourthIcon(Lcom/android/launcher2/FolderItem;)V

    goto :goto_0
.end method

.method static createFolderIconWithPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "folderIcon"
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    .line 104
    .local v1, childCount:I
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    #hq start <<

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFolderIconWithPlate: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6
    
    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2
    
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "zxf-l" 

    invoke-static {v2,v6} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0
    #hq end >>

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, b:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    if-nez v1, :cond_0

    .line 109
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    :goto_0
    invoke-static {p0, p1}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 114
    .local v2, miniIcons:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    return-object v0

    .line 111
    .end local v2           #miniIcons:Landroid/graphics/Bitmap;
    :cond_0
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static drawFirstIcon(Lcom/android/launcher2/FolderItem;)V
    .locals 9
    .parameter "folderItem"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 123
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 124
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sget v3, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 127
    const v6, -0xff01

    .line 129
    .local v6, debugColor:I
    invoke-static {v1}, Lcom/android/launcher2/FolderIconHelper;->setDarkenPaintMultiplier(F)V

    .line 130
    sget-boolean v0, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    const v2, -0xff01

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    sget v0, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sub-float v0, v5, v0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v0, v2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v8, v0

    .line 133
    .local v8, unScaledW:I
    sget v0, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sub-float v0, v5, v0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v0, v2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v7, v0

    .line 134
    .local v7, unScaledH:I
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 140
    .end local v7           #unScaledH:I
    .end local v8           #unScaledW:I
    :goto_0
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 141
    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-interface {p0, v4}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static drawFourthIcon(Lcom/android/launcher2/FolderItem;)V
    .locals 11
    .parameter "folderItem"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 194
    const v7, -0xff0001

    .line 196
    .local v7, debugColor:I
    const v6, 0x3e99999a

    .line 198
    .local v6, darkenMultiplier:F
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 199
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 200
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sget v3, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 202
    const v0, 0x3e99999a

    invoke-static {v0}, Lcom/android/launcher2/FolderIconHelper;->setDarkenPaintMultiplier(F)V

    .line 204
    sget-boolean v0, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    const v2, -0xff0001

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    sget v0, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sub-float v0, v10, v0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v0, v2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v9, v0

    .line 207
    .local v9, unScaledW:I
    sget v0, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sub-float v0, v10, v0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v0, v2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v8, v0

    .line 208
    .local v8, unScaledH:I
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    int-to-float v3, v9

    int-to-float v4, v8

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 212
    .end local v8           #unScaledH:I
    .end local v9           #unScaledW:I
    :goto_0
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 213
    invoke-static {p0}, Lcom/android/launcher2/FolderIconHelper;->drawThirdIcon(Lcom/android/launcher2/FolderItem;)V

    .line 214
    return-void

    .line 210
    :cond_0
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-interface {p0, v5}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static drawSecondIcon(Lcom/android/launcher2/FolderItem;)V
    .locals 12
    .parameter "folderItem"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 146
    .local v7, debugColors:[I
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 147
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 148
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_B:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_B:[Landroid/graphics/RectF;

    aget-object v3, v3, v8

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sget v3, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 151
    int-to-float v0, v8

    const v2, 0x3dcccccd

    mul-float v6, v0, v2

    .line 152
    .local v6, darkenMultiplier:F
    invoke-static {v6}, Lcom/android/launcher2/FolderIconHelper;->setDarkenPaintMultiplier(F)V

    .line 154
    sget-boolean v0, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    aget v2, v7, v8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    sget v0, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sub-float v0, v11, v0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_B:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v0, v2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_B:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v10, v0

    .line 157
    .local v10, unScaledW:I
    sget v0, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sub-float v0, v11, v0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_B:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v0, v2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_B:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v9, v0

    .line 158
    .local v9, unScaledH:I
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    int-to-float v3, v10

    int-to-float v4, v9

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 162
    .end local v9           #unScaledH:I
    .end local v10           #unScaledW:I
    :goto_1
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 146
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-interface {p0, v8}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 166
    .end local v6           #darkenMultiplier:F
    :cond_1
    return-void

    .line 144
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method public static drawThirdIcon(Lcom/android/launcher2/FolderItem;)V
    .locals 12
    .parameter "folderItem"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v1, 0x0

    .line 169
    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 171
    .local v7, debugColors:[I
    const/4 v8, 0x2

    .local v8, i:I
    :goto_0
    const/4 v0, 0x1

    if-lt v8, v0, :cond_1

    .line 172
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 173
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v3, v3, v8

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sget v3, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 176
    int-to-float v0, v8

    const v2, 0x3dcccccd

    mul-float v6, v0, v2

    .line 177
    .local v6, darkenMultiplier:F
    invoke-static {v6}, Lcom/android/launcher2/FolderIconHelper;->setDarkenPaintMultiplier(F)V

    .line 179
    sget-boolean v0, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    add-int/lit8 v2, v8, -0x1

    aget v2, v7, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    sget v0, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sub-float v0, v11, v0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v0, v2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v10, v0

    .line 182
    .local v10, unScaledW:I
    sget v0, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    sub-float v0, v11, v0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v0, v2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v9, v0

    .line 183
    .local v9, unScaledH:I
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    int-to-float v3, v10

    int-to-float v4, v9

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    .end local v9           #unScaledH:I
    .end local v10           #unScaledW:I
    :goto_1
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 171
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 185
    :cond_0
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-interface {p0, v8}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 189
    .end local v6           #darkenMultiplier:F
    :cond_1
    invoke-static {p0}, Lcom/android/launcher2/FolderIconHelper;->drawFirstIcon(Lcom/android/launcher2/FolderItem;)V

    .line 191
    return-void

    .line 169
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method public static getAppIconRect(II)Landroid/graphics/Rect;
    .locals 7
    .parameter "iconIndex"
    .parameter "iconCount"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 299
    if-ltz p0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 309
    :goto_0
    return-object v2

    .line 301
    :cond_1
    if-ne v2, p1, :cond_2

    if-ge p0, v2, :cond_2

    .line 302
    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_B:[Landroid/graphics/RectF;

    aget-object v0, v2, p0

    .line 303
    .local v0, iconR:Landroid/graphics/RectF;
    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 309
    :goto_1
    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->mTmpRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 305
    .end local v0           #iconR:Landroid/graphics/RectF;
    :cond_2
    if-le p0, v1, :cond_3

    .line 306
    .local v1, index:I
    :goto_2
    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_POS_A:[Landroid/graphics/RectF;

    aget-object v0, v2, v1

    .line 307
    .restart local v0       #iconR:Landroid/graphics/RectF;
    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .end local v0           #iconR:Landroid/graphics/RectF;
    .end local v1           #index:I
    :cond_3
    move v1, p0

    .line 305
    goto :goto_2
.end method

.method public static initFolderResources(Landroid/content/res/Resources;)V
    .locals 6
    .parameter "r"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 314
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 315
    const v1, 0x7f02006d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 316
    .local v0, d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    .line 319
    .end local v0           #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 320
    const v1, 0x7f02006c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 321
    .restart local v0       #d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

    .line 324
    .end local v0           #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 325
    const v1, 0x7f02006b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 326
    .restart local v0       #d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/FolderIconHelper;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    .line 329
    .end local v0           #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 330
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/FolderIconHelper;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    .line 333
    :cond_3
    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 336
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SIZE:I

    .line 337
    const v1, 0x7f0b0006

    invoke-virtual {p0, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    sput v1, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    .line 338
    const v1, 0x7f0c0092

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_TOP_PADDING:F

    .line 339
    const v1, 0x7f0c0093

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_VERTICAL_OFFSET:F

    .line 340
    const v1, 0x7f0c0094

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_HORIZONTAL_OFFSET:F

    .line 342
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->calculateAppIconPositions()V

    .line 343
    return-void
.end method

.method private static setDarkenPaintMultiplier(F)V
    .locals 1
    .parameter "mult"

    .prologue
    .line 224
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-static {p0, v0}, Lcom/android/launcher2/AppIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 225
    return-void
.end method
