.class public Lcom/android/launcher2/AppFolderRemoveDialog;
.super Landroid/app/DialogFragment;
.source "AppFolderRemoveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final sFragmentTag:Ljava/lang/String; = "AppFolderRemoveDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V
    .locals 6
    .parameter "a"
    .parameter "cellLayout"
    .parameter "delay"

    .prologue
    .line 121
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 122
    .local v1, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 123
    .local v2, v:Lcom/android/launcher2/AppIconView;
    if-nez v2, :cond_0

    .line 154
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 127
    .local v0, al:Lcom/android/launcher2/AnimationLayer;
    new-instance v3, Lcom/android/launcher2/AppFolderRemoveDialog$1;

    invoke-direct {v3, p0, v0, v2, p2}, Lcom/android/launcher2/AppFolderRemoveDialog$1;-><init>(Lcom/android/launcher2/AppFolderRemoveDialog;Lcom/android/launcher2/AnimationLayer;Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/CellLayout;)V

    int-to-long v4, p3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/AppIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private cancelDelete()V
    .locals 6

    .prologue
    .line 100
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v1

    .line 101
    .local v1, f:Lcom/android/launcher2/AppFolderItem;
    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 105
    .local v2, launcher:Lcom/android/launcher2/Launcher;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    .line 107
    .local v3, m:Lcom/android/launcher2/MenuAppsGrid;
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    .line 108
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    iget v4, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 110
    .local v0, cellLayout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 111
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v4

    iget v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v4, v5, :cond_0

    .line 112
    const/4 v4, 0x0

    invoke-direct {p0, v1, v0, v4}, Lcom/android/launcher2/AppFolderRemoveDialog;->animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V

    goto :goto_0

    .line 116
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    goto :goto_0
.end method

.method static createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "appFolderItem"
    .parameter "manager"

    .prologue
    .line 26
    invoke-static {p1}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    .line 29
    new-instance v0, Lcom/android/launcher2/AppFolderRemoveDialog;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;-><init>()V

    .line 30
    .local v0, df:Lcom/android/launcher2/AppFolderRemoveDialog;
    const-string v1, "AppFolderRemoveDialog"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "ft"
    .parameter "manager"

    .prologue
    .line 38
    const-string v1, "AppFolderRemoveDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 39
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 43
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .parameter "manager"

    .prologue
    .line 34
    const-string v0, "AppFolderRemoveDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 58
    const/4 v9, -0x1

    if-ne p2, v9, :cond_2

    .line 59
    sget-object v9, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v3

    .line 60
    .local v3, f:Lcom/android/launcher2/AppFolderItem;
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/MenuFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    .line 61
    .local v6, m:Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual {v3}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v5

    .line 63
    .local v5, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    sget-object v9, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->bindAppsUpdated()V

    .line 68
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 70
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v8

    .line 71
    .local v8, pageIndex:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v7

    .line 72
    .local v7, mode:Lcom/android/launcher2/MenuFragment$ViewType;
    sget-object v9, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v9, v7, :cond_1

    .line 73
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppItem;

    iget-wide v9, v9, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v6, v9, v10}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndexForItemId(J)I

    move-result v8

    .line 78
    :goto_0
    const/4 v2, 0x0

    .line 79
    .local v2, delay:I
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v9

    if-eq v9, v8, :cond_0

    .line 80
    invoke-virtual {v6, v8}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 81
    iget v9, v6, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    add-int/lit8 v2, v9, 0xa

    .line 84
    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 85
    .local v1, cellLayout:Lcom/android/launcher2/CellLayout;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 87
    .local v0, a:Lcom/android/launcher2/AppItem;
    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppFolderRemoveDialog;->animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V

    goto :goto_1

    .line 75
    .end local v0           #a:Lcom/android/launcher2/AppItem;
    .end local v1           #cellLayout:Lcom/android/launcher2/CellLayout;
    .end local v2           #delay:I
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    goto :goto_0

    .line 91
    .end local v3           #f:Lcom/android/launcher2/AppFolderItem;
    .end local v5           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v6           #m:Lcom/android/launcher2/MenuAppsGrid;
    .end local v7           #mode:Lcom/android/launcher2/MenuFragment$ViewType;
    .end local v8           #pageIndex:I
    :cond_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0011

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->cancelDelete()V

    .line 96
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 97
    return-void
.end method
