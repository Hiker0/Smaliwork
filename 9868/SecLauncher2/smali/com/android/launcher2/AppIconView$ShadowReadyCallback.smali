.class Lcom/android/launcher2/AppIconView$ShadowReadyCallback;
.super Ljava/lang/Object;
.source "AppIconView.java"

# interfaces
.implements Lcom/android/launcher2/ShadowGen$GeneratedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AppIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowReadyCallback"
.end annotation


# instance fields
.field private mItemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "v"
    .parameter "item"

    .prologue
    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 200
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;->mItemRef:Ljava/lang/ref/WeakReference;

    .line 201
    return-void
.end method


# virtual methods
.method public onShadowGenerated(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "shadow"

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;->mItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 205
    .local v0, item:Lcom/android/launcher2/BaseItem;
    iget-object v2, p0, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 206
    .local v1, view:Lcom/android/launcher2/AppIconView;
    if-eqz v0, :cond_0

    .line 207
    iput-object p1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 208
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->generateShadowIfNeeded()V

    .line 214
    :cond_0
    return-void
.end method
