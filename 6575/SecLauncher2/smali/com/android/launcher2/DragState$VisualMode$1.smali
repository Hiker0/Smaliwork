.class final enum Lcom/android/launcher2/DragState$VisualMode$1;
.super Lcom/android/launcher2/DragState$VisualMode;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragState$VisualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DragState$VisualMode;-><init>(Ljava/lang/String;ILcom/android/launcher2/DragState$1;)V

    return-void
.end method


# virtual methods
.method protected enter(Lcom/android/launcher2/UpdateableShadowBuilder;)V
    .locals 0
    .parameter "shadow"

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/android/launcher2/UpdateableShadowBuilder;->resetPaint()V

    .line 496
    invoke-virtual {p1}, Lcom/android/launcher2/UpdateableShadowBuilder;->draw()V

    .line 497
    return-void
.end method
