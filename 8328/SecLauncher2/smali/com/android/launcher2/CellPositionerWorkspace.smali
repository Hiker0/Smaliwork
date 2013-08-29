.class public Lcom/android/launcher2/CellPositionerWorkspace;
.super Ljava/lang/Object;
.source "CellPositionerWorkspace.java"

# interfaces
.implements Lcom/android/launcher2/CellPositioner;


# static fields
.field private static final TAG:Ljava/lang/String; = "CellPositionerWorkspace"


# instance fields
.field private final DEBUG:Z

.field private final directions:[[I

.field private final mDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mDragDelta:Lcom/android/launcher2/PositionDelta;

.field private final mLayout:Lcom/android/launcher2/CellLayout;

.field private mOccupied:[[Z

.field private final tmpExactXY:[I

.field private tmpForSort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpShiftDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpSortedDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpXY:[I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 4
    .parameter "layout"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->DEBUG:Z

    .line 16
    new-instance v0, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v0}, Lcom/android/launcher2/PositionDelta;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    .line 23
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    .line 179
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    .line 21
    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private calculateOccupiedCells(Ljava/util/List;)V
    .locals 4
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
    .line 252
    .local p1, deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 254
    .local v0, d:Lcom/android/launcher2/PositionDelta;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_0

    .line 256
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    :cond_0
    return-void
.end method

.method private findNearestArea(IIIIZ[I)Z
    .locals 21
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreOccupied"
    .parameter "result"

    .prologue
    .line 285
    move-object/from16 v4, p6

    .line 286
    .local v4, bestXY:[I
    if-eqz p5, :cond_0

    const/4 v15, 0x1

    move/from16 v0, p3

    if-ne v0, v15, :cond_0

    const/4 v15, 0x1

    move/from16 v0, p4

    if-ne v0, v15, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1, v4}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 288
    const/4 v15, 0x1

    .line 345
    :goto_0
    return v15

    .line 291
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int p1, p1, v15

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int p2, p2, v15

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v15

    sub-int p1, p1, v15

    .line 295
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v15

    sub-int p2, p2, v15

    .line 298
    const-wide v2, 0x7fefffffffffffffL

    .line 300
    .local v2, bestDistance2:D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v5

    .line 301
    .local v5, countX:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v6

    .line 303
    .local v6, countY:I
    const/4 v14, 0x0

    .local v14, y:I
    :goto_1
    add-int/lit8 v15, p4, -0x1

    sub-int v15, v6, v15

    if-ge v14, v15, :cond_9

    .line 305
    const/4 v13, 0x0

    .local v13, x:I
    :goto_2
    add-int/lit8 v15, p3, -0x1

    sub-int v15, v5, v15

    if-ge v13, v15, :cond_8

    .line 306
    if-nez p5, :cond_6

    .line 307
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move/from16 v0, p3

    if-ge v9, v0, :cond_6

    .line 308
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    move/from16 v0, p4

    if-ge v10, v0, :cond_5

    .line 309
    sget-boolean v15, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v15

    if-eqz v15, :cond_3

    .line 310
    add-int v15, v14, v10

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    add-int v16, v13, v9

    aget-object v15, v15, v16

    add-int v16, v14, v10

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_4

    .line 311
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    add-int v16, v13, v9

    aget-object v15, v15, v16

    add-int v16, v14, v10

    const/16 v17, 0x1

    aput-boolean v17, v15, v16

    .line 312
    add-int/2addr v13, v9

    .line 305
    .end local v9           #i:I
    .end local v10           #j:I
    :cond_2
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 316
    .restart local v9       #i:I
    .restart local v10       #j:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    add-int v16, v13, v9

    aget-object v15, v15, v16

    add-int v16, v14, v10

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_4

    .line 317
    add-int/2addr v13, v9

    .line 318
    goto :goto_5

    .line 308
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 307
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 325
    .end local v9           #i:I
    .end local v10           #j:I
    :cond_6
    sget-boolean v15, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v15

    if-eqz v15, :cond_7

    .line 326
    if-eqz p5, :cond_7

    if-eqz v14, :cond_2

    .line 330
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayout;->getGapX()I

    move-result v16

    add-int v15, v15, v16

    mul-int/2addr v15, v13

    int-to-float v11, v15

    .line 331
    .local v11, px:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayout;->getGapY()I

    move-result v16

    add-int v15, v15, v16

    mul-int/2addr v15, v14

    int-to-float v12, v15

    .line 333
    .local v12, py:F
    move/from16 v0, p1

    int-to-float v15, v0

    sub-float v15, v11, v15

    float-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v12, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v7, v15, v17

    .line 334
    .local v7, distance2:D
    cmpg-double v15, v7, v2

    if-gtz v15, :cond_2

    .line 335
    move-wide v2, v7

    .line 336
    const/4 v15, 0x0

    aput v13, v4, v15

    .line 337
    const/4 v15, 0x1

    aput v14, v4, v15

    goto/16 :goto_5

    .line 303
    .end local v7           #distance2:D
    .end local v11           #px:F
    .end local v12           #py:F
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 342
    .end local v13           #x:I
    :cond_9
    const-wide v15, 0x7fefffffffffffffL

    cmpl-double v15, v2, v15

    if-nez v15, :cond_a

    .line 343
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 345
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method private findOverlapping(Lcom/android/launcher2/PositionDelta;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .parameter "underPos"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PositionDelta;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, source:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    .local p3, res:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    const/4 v2, 0x1

    .line 229
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 231
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 232
    .local v0, d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/PositionDelta;->overlaps(Lcom/android/launcher2/PositionDelta;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 238
    .restart local v0       #d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-gt v3, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 239
    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 242
    .restart local v0       #d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 243
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 247
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_3
    return v2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V
    .locals 9
    .parameter "d"
    .parameter "mark"

    .prologue
    .line 260
    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 261
    .local v0, countX:I
    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v1

    .line 262
    .local v1, countY:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v5

    .line 263
    .local v5, x_:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v7

    .line 264
    .local v7, y_:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v2

    .line 265
    .local v2, spanX:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    .line 266
    .local v3, spanY:I
    move v4, v5

    .local v4, x:I
    :goto_0
    add-int v8, v5, v2

    if-ge v4, v8, :cond_1

    if-ge v4, v0, :cond_1

    .line 267
    move v6, v7

    .local v6, y:I
    :goto_1
    add-int v8, v7, v3

    if-ge v6, v8, :cond_0

    if-ge v6, v1, :cond_0

    .line 268
    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    aget-object v8, v8, v4

    aput-boolean p2, v8, v6

    .line 267
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 266
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    .end local v6           #y:I
    :cond_1
    return-void
.end method

.method private resetDeltas(Lcom/android/launcher2/BaseItem;)V
    .locals 7
    .parameter "toIgnore"

    .prologue
    const/4 v6, 0x0

    .line 167
    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 168
    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->allItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 169
    .local v0, i:Lcom/android/launcher2/BaseItem;
    if-eq v0, p1, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher2/PositionDelta;

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .end local v0           #i:Lcom/android/launcher2/BaseItem;
    invoke-direct {v3, v0}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/HomeItem;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher2/PositionDelta;

    iget-object v4, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, v6, v6, v4, v5}, Lcom/android/launcher2/PositionDelta;-><init>(IIII)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    .line 177
    return-void
.end method

.method private shiftDeltas(Lcom/android/launcher2/PositionDelta;)Z
    .locals 10
    .parameter "dragDelta"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 190
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PositionDelta;

    .line 192
    .local v7, d:Lcom/android/launcher2/PositionDelta;
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v1, v7}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/PositionDelta;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v7           #d:Lcom/android/launcher2/PositionDelta;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/CellPositionerWorkspace;->findOverlapping(Lcom/android/launcher2/PositionDelta;Ljava/util/List;Ljava/util/List;)Z

    .line 197
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    .line 198
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PositionDelta;

    .line 201
    .restart local v7       #d:Lcom/android/launcher2/PositionDelta;
    invoke-direct {p0, v7, v5}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_1

    .line 203
    .end local v7           #d:Lcom/android/launcher2/PositionDelta;
    :cond_1
    invoke-direct {p0, p1, v9}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    .line 206
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PositionDelta;

    .line 207
    .restart local v7       #d:Lcom/android/launcher2/PositionDelta;
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v1

    invoke-virtual {v7}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 208
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    aget v1, v0, v5

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    aget v2, v0, v9

    invoke-virtual {v7}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    invoke-virtual {v7}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v4

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    .end local v7           #d:Lcom/android/launcher2/PositionDelta;
    :goto_3
    return v5

    .line 211
    .restart local v7       #d:Lcom/android/launcher2/PositionDelta;
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    aget v0, v0, v5

    invoke-virtual {v7, v0}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 212
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    aget v0, v0, v9

    invoke-virtual {v7, v0}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 213
    invoke-direct {p0, v7, v9}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_2

    .line 216
    .end local v7           #d:Lcom/android/launcher2/PositionDelta;
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PositionDelta;

    .line 218
    .restart local v7       #d:Lcom/android/launcher2/PositionDelta;
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v7           #d:Lcom/android/launcher2/PositionDelta;
    :cond_4
    move v5, v9

    .line 220
    goto :goto_3
.end method

.method private tryRearrange()Z
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 85
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v13}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v7

    .line 86
    .local v7, spanX:I
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v13}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v8

    .line 87
    .local v8, spanY:I
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 88
    .local v0, countX:I
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v1

    .line 90
    .local v1, countY:I
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    aget v5, v13, v12

    .line 91
    .local v5, ox:I
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    aget v6, v13, v11

    .line 93
    .local v6, oy:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/16 v13, 0x9

    if-ge v4, v13, :cond_2

    .line 94
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v13, v13, v4

    aget v13, v13, v12

    add-int v9, v5, v13

    .line 95
    .local v9, x:I
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v13, v13, v4

    aget v13, v13, v11

    add-int v10, v6, v13

    .line 96
    .local v10, y:I
    if-ltz v9, :cond_0

    if-ltz v10, :cond_0

    add-int v13, v9, v7

    if-gt v13, v0, :cond_0

    add-int v13, v10, v8

    if-le v13, v1, :cond_1

    .line 93
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v13, v9}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 100
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v13, v10}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 101
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v13}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 123
    .end local v10           #y:I
    :goto_1
    return v11

    .line 109
    .end local v9           #x:I
    :cond_2
    const/4 v9, 0x0

    .restart local v9       #x:I
    :goto_2
    sub-int v13, v0, v7

    add-int/lit8 v13, v13, 0x1

    if-ge v9, v13, :cond_6

    .line 110
    const/4 v10, 0x0

    .restart local v10       #y:I
    :goto_3
    sub-int v13, v1, v8

    add-int/lit8 v13, v13, 0x1

    if-ge v10, v13, :cond_5

    .line 111
    sub-int v13, v5, v9

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 112
    .local v2, dx:I
    sub-int v13, v6, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 113
    .local v3, dy:I
    if-ge v2, v14, :cond_4

    if-ge v3, v14, :cond_4

    .line 110
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 115
    :cond_4
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v13, v9}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 116
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v13, v10}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 117
    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v13}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_1

    .line 109
    .end local v2           #dx:I
    .end local v3           #dy:I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v10           #y:I
    :cond_6
    move v11, v12

    .line 123
    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    return-void
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas(Lcom/android/launcher2/BaseItem;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 276
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    aput v7, p5, v5

    .line 278
    const/4 v0, 0x1

    aput v7, p5, v0

    .line 280
    :cond_0
    return-object p5
.end method

.method public getDeltas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isOccupied(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas(Lcom/android/launcher2/BaseItem;)V

    .line 152
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0
.end method

.method public updateDeltasForDrag(Lcom/android/launcher2/BaseItem;II[I[I)V
    .locals 8
    .parameter "item"
    .parameter "px"
    .parameter "py"
    .parameter "resXY"
    .parameter "resSpan"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas(Lcom/android/launcher2/BaseItem;)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    aput v3, p5, v0

    .line 42
    .local v3, spanX:I
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v4

    aput v4, p5, v0

    .line 45
    .local v4, spanY:I
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    .line 46
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p4, v0

    .line 48
    const/4 v0, 0x1

    const/4 v1, -0x1

    aput v1, p4, v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aget v1, p4, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x1

    aget v1, p4, v1

    if-ne v0, v1, :cond_2

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_5

    :cond_3
    const/4 v7, 0x1

    .line 58
    .local v7, isWidget:Z
    :goto_1
    if-nez v7, :cond_4

    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/FolderItem;

    if-nez v0, :cond_1

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    .line 66
    invoke-direct {p0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    invoke-direct {p0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange()Z

    .line 71
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v1

    aput v1, p4, v0

    .line 72
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v1

    aput v1, p4, v0

    goto :goto_0

    .line 56
    .end local v7           #isWidget:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 74
    .restart local v7       #isWidget:Z
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas(Lcom/android/launcher2/BaseItem;)V

    .line 75
    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p4, v0

    .line 76
    const/4 v0, 0x1

    const/4 v1, -0x1

    aput v1, p4, v0

    goto :goto_0
.end method

.method public updateDeltasForSpace(Lcom/android/launcher2/BaseItem;IIII)Z
    .locals 4
    .parameter "ignoreItem"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, backup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/PositionDelta;>;"
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas(Lcom/android/launcher2/BaseItem;)V

    .line 133
    new-instance v3, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v3}, Lcom/android/launcher2/PositionDelta;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    .line 134
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v3, p2}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 135
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v3, p3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 136
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v3, p4}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    .line 137
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v3, p5}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    .line 139
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    aput p2, v3, v1

    .line 140
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    aput p3, v3, v2

    .line 141
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 143
    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
