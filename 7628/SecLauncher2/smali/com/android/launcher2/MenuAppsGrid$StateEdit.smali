.class Lcom/android/launcher2/MenuAppsGrid$StateEdit;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateEdit"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 6
    .parameter
    .parameter "oldState"
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

    .prologue
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v4, 0x1

    .line 1126
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 1127
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v3, :cond_1

    move v1, v4

    .line 1128
    .local v1, immediate:Z
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v5

    #calls: Lcom/android/launcher2/MenuAppsGrid;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    invoke-static {v3, p1, v5, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2600(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Landroid/view/View;Z)V

    .line 1130
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    .line 1131
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-boolean v3, v3, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v3, :cond_0

    .line 1132
    if-eqz v1, :cond_2

    .line 1133
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0001

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 1134
    .local v0, darkenEditAmount:F
    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    .line 1141
    .end local v0           #darkenEditAmount:F
    :cond_0
    :goto_1
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v3, :cond_3

    .line 1148
    :goto_2
    return-void

    .line 1127
    .end local v1           #immediate:Z
    .end local v2           #workspace:Lcom/android/launcher2/Workspace;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1136
    .restart local v1       #immediate:Z
    .restart local v2       #workspace:Lcom/android/launcher2/Workspace;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$2900(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1137
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$2900(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1145
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #calls: Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V
    invoke-static {v3, p1, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V

    .line 1147
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    goto :goto_2
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 6
    .parameter
    .parameter "newState"
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

    .prologue
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v5, 0x0

    .line 1152
    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v1, :cond_1

    .line 1153
    const-string v1, "Launcher.MenuAppsGrid"

    const-string v2, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 1160
    .local v0, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v0, :cond_2

    .line 1161
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1162
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v1, :cond_0

    .line 1170
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3200()Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3300()Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    goto :goto_0
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 3
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1119
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1120
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1121
    const/4 v1, 0x1

    return v1
.end method

.method public preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 1
    .parameter "item"
    .parameter "folder"

    .prologue
    .line 1178
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateEdit;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/Folder;->setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    return-void
.end method
