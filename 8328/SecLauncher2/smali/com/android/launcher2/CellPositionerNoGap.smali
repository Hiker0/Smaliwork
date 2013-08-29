.class public Lcom/android/launcher2/CellPositionerNoGap;
.super Ljava/lang/Object;
.source "CellPositionerNoGap.java"

# interfaces
.implements Lcom/android/launcher2/CellPositioner;


# instance fields
.field private final mLayout:Lcom/android/launcher2/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/launcher2/CellPositionerNoGap;->mLayout:Lcom/android/launcher2/CellLayout;

    .line 12
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 1
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 49
    if-eqz p5, :cond_0

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerNoGap;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 51
    return-object p5

    .line 49
    :cond_0
    const/4 v0, 0x2

    new-array p5, v0, [I

    goto :goto_0
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
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOccupied(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public updateDeltasForDrag(Lcom/android/launcher2/BaseItem;II[I[I)V
    .locals 3
    .parameter "item"
    .parameter "px"
    .parameter "py"
    .parameter "resXY"
    .parameter "resSpan"

    .prologue
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item passed to CellPositionerNoGap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    aput v1, p5, v0

    .line 22
    aput v1, p5, v1

    .line 23
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerNoGap;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 24
    return-void
.end method

.method public updateDeltasForSpace(Lcom/android/launcher2/BaseItem;IIII)Z
    .locals 1
    .parameter "ignoreItem"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
