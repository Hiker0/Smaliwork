.class Lcom/android/launcher2/Launcher$ProximitySensorListener;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/eminent/utility/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/launcher2/Launcher$ProximitySensorListener;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$9;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$ProximitySensorListener;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 0
    .parameter "runnable"
    .parameter "delayMillis"

    .prologue
    .line 68
    monitor-enter p0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized clearPendingRequests()V
    .locals 0

    .prologue
    .line 60
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onFar()V
    .locals 0

    .prologue
    .line 56
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onNear()V
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$ProximitySensorListener;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    #calls: Lcom/android/launcher2/Launcher;->simulateTouchEvent(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$300(Lcom/android/launcher2/Launcher;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
