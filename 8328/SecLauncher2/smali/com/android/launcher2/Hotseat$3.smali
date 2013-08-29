.class final Lcom/android/launcher2/Hotseat$3;
.super Ljava/lang/Object;
.source "Hotseat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Hotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/HomeItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, -0x1

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, ret:I
    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v2, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v1, v2, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 542
    :goto_0
    return v0

    .line 533
    :cond_0
    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v1, v3, :cond_1

    .line 534
    const/4 v0, 0x1

    goto :goto_0

    .line 535
    :cond_1
    iget v1, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v1, v3, :cond_2

    .line 536
    const/4 v0, -0x1

    goto :goto_0

    .line 537
    :cond_2
    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v2, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ge v1, v2, :cond_3

    .line 538
    const/4 v0, -0x1

    goto :goto_0

    .line 540
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    check-cast p1, Lcom/android/launcher2/HomeItem;

    .end local p1
    check-cast p2, Lcom/android/launcher2/HomeItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Hotseat$3;->compare(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)I

    move-result v0

    return v0
.end method
