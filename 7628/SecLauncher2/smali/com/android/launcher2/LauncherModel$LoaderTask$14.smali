.class Lcom/android/launcher2/LauncherModel$LoaderTask$14;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$14;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1947
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$14;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #getter for: Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$2800(Lcom/android/launcher2/LauncherModel$LoaderTask;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1948
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->onModelRefreshed()V

    .line 1950
    const-string v1, "Launcher.Model"

    const-string v2, "MenuAppModel.onModelRefreshed called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$14;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #calls: Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$2700(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1952
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1953
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsLoaded()V

    .line 1955
    const-string v1, "Launcher.Model"

    const-string v2, "bindAppsLoaded called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    .end local v0           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    return-void
.end method
