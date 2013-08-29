.class Lcom/android/launcher2/DarkenView$Drawer;
.super Lcom/android/launcher2/DrawGLFunction$Callback;
.source "DarkenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DarkenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawer"
.end annotation


# instance fields
.field private mAlpha:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DarkenView$Drawer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/DarkenView$Drawer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    return p1
.end method


# virtual methods
.method public drawGL([F)V
    .locals 2
    .parameter "transform"

    .prologue
    const/4 v1, 0x0

    .line 52
    iget v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 53
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 54
    return-void
.end method
