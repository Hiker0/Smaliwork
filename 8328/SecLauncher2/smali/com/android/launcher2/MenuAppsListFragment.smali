.class public final Lcom/android/launcher2/MenuAppsListFragment;
.super Landroid/app/Fragment;
.source "MenuAppsListFragment.java"

# interfaces
.implements Lcom/android/launcher2/MenuFragment$AppModelNotifications;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/launcher2/MenuFragment$NeedsTabHost;


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuAppsListFragment"


# instance fields
.field private mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

.field private mNormalTitleBar:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsListFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public appModelLoaded()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->appModelUpdated()V

    .line 130
    return-void
.end method

.method public appModelUpdated()V
    .locals 3

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    if-eqz v2, :cond_0

    .line 135
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v1, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuAppsListAdapter;->setApps(Ljava/util/List;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, mainView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 140
    check-cast v0, Lcom/android/launcher2/AlphabeticalListContainer;

    .end local v0           #mainView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListContainer;->notifyDataChanged()V

    .line 144
    .end local v1           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_0
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, p3, p4}, Lcom/android/launcher2/MenuAppsListAdapter;->getChild(II)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 123
    .local v0, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 124
    const/4 v1, 0x1

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    const-string v1, "MenuAppsListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate. savedInstanceState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppsListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    .line 37
    return-void

    .line 34
    :cond_0
    const-string v0, "not null"

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 50
    const-string v3, "MenuAppsListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView. savedInstanceState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_2

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const v2, 0x7f030024

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AlphabeticalListContainer;

    .line 54
    .local v1, v:Lcom/android/launcher2/AlphabeticalListContainer;
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v0, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuAppsListAdapter;->setApps(Ljava/util/List;)V

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AlphabeticalListContainer;->setAdapter(Lcom/android/launcher2/MenuAppsListAdapter;)V

    .line 60
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AlphabeticalListContainer;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 61
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AlphabeticalListContainer;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 62
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AlphabeticalListContainer;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 66
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 70
    :cond_1
    return-object v1

    .line 50
    .end local v0           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v1           #v:Lcom/android/launcher2/AlphabeticalListContainer;
    :cond_2
    const-string v2, "not null"

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "MenuAppsListFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 86
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "MenuAppsListFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 113
    .local v0, item:Lcom/android/launcher2/AppItem;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    .line 117
    :goto_0
    return v3

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onHideTab(Lcom/android/launcher2/MenuTabHost;)V
    .locals 0
    .parameter "tabHost"

    .prologue
    .line 183
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 90
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 92
    .local v0, item:Lcom/android/launcher2/AppItem;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 107
    .end local v0           #item:Lcom/android/launcher2/AppItem;
    :goto_0
    return v1

    .line 95
    .restart local v0       #item:Lcom/android/launcher2/AppItem;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move v1, v2

    .line 96
    goto :goto_0

    .line 99
    .end local v0           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->exitAllApps(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspaceLoading()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    new-instance v1, Lcom/android/launcher2/ShadowBuilder;

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    sget v4, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-static {p2, v3, v4}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, p2, v3}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-static {p2, v1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move v1, v2

    .line 107
    goto :goto_0
.end method

.method public onShowTab(Lcom/android/launcher2/MenuTabHost;)V
    .locals 2
    .parameter "tabHost"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuAppsListFragment$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsListFragment$1;-><init>(Lcom/android/launcher2/MenuAppsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 178
    :cond_0
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuTabHost;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const v0, 0x7f070069

    invoke-virtual {p1, v0}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0
.end method
