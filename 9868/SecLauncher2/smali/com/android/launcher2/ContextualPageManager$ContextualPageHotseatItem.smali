.class public Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
.super Ljava/lang/Object;
.source "ContextualPageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ContextualPageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextualPageHotseatItem"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public cpType:I

.field public packageName:Ljava/lang/String;

.field public screen:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "packageName"
    .parameter "className"
    .parameter "screen"
    .parameter "cpType"

    .prologue
    .line 853
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->packageName:Ljava/lang/String;

    .line 855
    iput-object p2, p0, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    .line 856
    iput p3, p0, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->screen:I

    .line 857
    iput p4, p0, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->cpType:I

    .line 858
    return-void
.end method
