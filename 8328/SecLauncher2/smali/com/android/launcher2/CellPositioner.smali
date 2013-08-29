.class public interface abstract Lcom/android/launcher2/CellPositioner;
.super Ljava/lang/Object;
.source "CellPositioner.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract findNearestVacantArea(IIII[I)[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDeltas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isOccupied(II)Z
.end method

.method public abstract updateDeltasForDrag(Lcom/android/launcher2/BaseItem;II[I[I)V
.end method

.method public abstract updateDeltasForSpace(Lcom/android/launcher2/BaseItem;IIII)Z
.end method
