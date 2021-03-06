.class abstract Lcom/android/launcher2/MenuAppsGrid$StateObj;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StateObj"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsGrid$StateObj$ResumableState;
    }
.end annotation


# instance fields
.field protected mHasEntered:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 921
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 956
    const/4 v0, 0x1

    return v0
.end method

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    return-void
.end method

.method public abstract enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p1, items:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    return-void
.end method

.method public abstract exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 947
    .local p1, items:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    .line 951
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 952
    .local v0, itemCount:I
    :goto_0
    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateObj::getAppsList() item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-object v1

    .line 951
    .end local v0           #itemCount:I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onAppModelUpdated()V
    .locals 0

    .prologue
    .line 979
    return-void
.end method

.method public abstract onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
.end method

.method public preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "folderItem"
    .parameter "folder"

    .prologue
    .line 962
    return-void
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "bundle"

    .prologue
    .line 977
    const/4 v0, 0x1

    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 970
    return-void
.end method
