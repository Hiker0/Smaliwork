.class public Lcom/android/launcher2/PositionDelta;
.super Ljava/lang/Object;
.source "PositionDelta.java"


# instance fields
.field final item:Lcom/android/launcher2/HomeItem;

.field private mChanged:Z

.field private final ospanX:I

.field private final ospanY:I

.field private final ox:I

.field private final oy:I

.field private spanX:I

.field private spanY:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    .line 19
    iput v1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    iput v1, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    .line 21
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "con_x"
    .parameter "con_y"
    .parameter "con_spanX"
    .parameter "con_spanY"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    .line 38
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iput p1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    .line 39
    iput p2, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iput p2, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 40
    iput p3, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput p3, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    .line 41
    iput p4, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput p4, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/HomeItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 10
    iput-object p1, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    .line 11
    iget v0, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    .line 12
    iget v0, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 13
    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getSpanX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    .line 14
    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getSpanY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/PositionDelta;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 24
    iget-object v0, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    iput-object v0, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/HomeItem;

    .line 25
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->x:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    .line 26
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->y:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    .line 27
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->ox:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    .line 28
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->oy:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 29
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    .line 30
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    .line 31
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->ospanX:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    .line 32
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->ospanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    .line 33
    iget-boolean v0, p1, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 34
    return-void
.end method

.method private updateChanged()V
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 58
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changed()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    return v0
.end method

.method public differentFrom(Lcom/android/launcher2/PositionDelta;)Z
    .locals 2
    .parameter "od"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->spanX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->spanY:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSpanX()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    return v0
.end method

.method getSpanY()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    return v0
.end method

.method getX()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    return v0
.end method

.method getY()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    return v0
.end method

.method overlaps(Lcom/android/launcher2/PositionDelta;)Z
    .locals 6
    .parameter "otherDelta"

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    .line 46
    .local v2, x_:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    .line 47
    .local v3, y_:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v0

    .line 48
    .local v0, spanX_:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v1

    .line 50
    .local v1, spanY_:I
    iget v4, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iget v5, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-lt v4, v2, :cond_0

    iget v4, p0, Lcom/android/launcher2/PositionDelta;->x:I

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_0

    iget v4, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iget v5, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-lt v4, v3, :cond_0

    iget v4, p0, Lcom/android/launcher2/PositionDelta;->y:I

    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_1

    .line 51
    :cond_0
    const/4 v4, 0x0

    .line 53
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method setSpanX(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method setSpanY(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method setX(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->x:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method setY(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->y:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PositionDelta(changed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ospanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ospanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
