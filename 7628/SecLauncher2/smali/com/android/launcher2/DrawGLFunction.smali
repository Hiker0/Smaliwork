.class public Lcom/android/launcher2/DrawGLFunction;
.super Ljava/lang/Object;
.source "DrawGLFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DrawGLFunction$Callback;
    }
.end annotation


# static fields
.field private static mCallDrawGLFunction:Ljava/lang/reflect/Method;

.field static sICSCompat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "4.0.9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/DrawGLFunction;->sICSCompat:Z

    .line 29
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static call(Landroid/graphics/Canvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V
    .locals 6
    .parameter "canvas"
    .parameter "callback"

    .prologue
    .line 48
    #getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v2

    if-nez v2, :cond_0

    .line 49
    sget-boolean v2, Lcom/android/launcher2/DrawGLFunction;->sICSCompat:Z

    if-eqz v2, :cond_2

    .line 50
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction;->createICS(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v2

    #setter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p1, v2}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$002(Lcom/android/launcher2/DrawGLFunction$Callback;I)I

    .line 56
    :cond_0
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/launcher2/DrawGLFunction;->mCallDrawGLFunction:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 57
    const-string v2, "android.view.HardwareCanvas"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    .local v0, c:Ljava/lang/Class;
    const-string v2, "callDrawGLFunction"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/DrawGLFunction;->mCallDrawGLFunction:Ljava/lang/reflect/Method;

    .line 59
    sget-object v2, Lcom/android/launcher2/DrawGLFunction;->mCallDrawGLFunction:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 61
    .end local v0           #c:Ljava/lang/Class;
    :cond_1
    sget-object v2, Lcom/android/launcher2/DrawGLFunction;->mCallDrawGLFunction:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    #getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    return-void

    .line 52
    :cond_2
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction;->createJB(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v2

    #setter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p1, v2}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$002(Lcom/android/launcher2/DrawGLFunction$Callback;I)I

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/Throwable;
    const-string v2, "DrawGLFunction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static native createICS(Lcom/android/launcher2/DrawGLFunction$Callback;)I
.end method

.method private static native createJB(Lcom/android/launcher2/DrawGLFunction$Callback;)I
.end method

.method public static destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 81
    #getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-boolean v0, Lcom/android/launcher2/DrawGLFunction;->sICSCompat:Z

    if-eqz v0, :cond_1

    .line 83
    #getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroyICS(I)V

    .line 88
    :cond_0
    :goto_0
    const/4 v0, 0x0

    #setter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p0, v0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$002(Lcom/android/launcher2/DrawGLFunction$Callback;I)I

    .line 89
    return-void

    .line 85
    :cond_1
    #getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroyJB(I)V

    goto :goto_0
.end method

.method private static native destroyICS(I)V
.end method

.method private static native destroyJB(I)V
.end method
