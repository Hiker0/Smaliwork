.class Lcom/android/launcher2/LauncherModel$13$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$13;

.field final synthetic val$appItems:Ljava/util/List;

.field final synthetic val$homeItems:Ljava/util/List;

.field final synthetic val$origCallbacks:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$13;Ljava/lang/ref/WeakReference;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2444
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$13$1;->this$1:Lcom/android/launcher2/LauncherModel$13;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$appItems:Ljava/util/List;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$homeItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2447
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$13$1;->this$1:Lcom/android/launcher2/LauncherModel$13;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$2600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 2448
    .local v0, cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2449
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$appItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$homeItems:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindBadgeUpdated(Ljava/util/List;Ljava/util/List;)V

    .line 2451
    :cond_0
    return-void
.end method