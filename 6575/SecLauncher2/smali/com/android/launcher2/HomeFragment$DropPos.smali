.class public Lcom/android/launcher2/HomeFragment$DropPos;
.super Ljava/lang/Object;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropPos"
.end annotation


# instance fields
.field mCellX:I

.field mCellY:I

.field mFoundInCurrentScreen:Z

.field mScreen:I

.field mTarget:Lcom/android/launcher2/CellLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3451
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment$DropPos;->mFoundInCurrentScreen:Z

    .line 3453
    return-void
.end method


# virtual methods
.method public assign(Lcom/android/launcher2/CellLayout;III)V
    .locals 0
    .parameter "target"
    .parameter "screen"
    .parameter "cellx"
    .parameter "celly"

    .prologue
    .line 3456
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$DropPos;->mTarget:Lcom/android/launcher2/CellLayout;

    .line 3457
    iput p2, p0, Lcom/android/launcher2/HomeFragment$DropPos;->mScreen:I

    .line 3458
    iput p3, p0, Lcom/android/launcher2/HomeFragment$DropPos;->mCellX:I

    .line 3459
    iput p4, p0, Lcom/android/launcher2/HomeFragment$DropPos;->mCellY:I

    .line 3460
    return-void
.end method
