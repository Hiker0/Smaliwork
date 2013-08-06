.class public Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;
.implements Lcom/android/launcher2/MenuAppsGrid$StateObj$ResumableState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatePageEdit"
.end annotation


# instance fields
.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 1951
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 1951
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1951
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    return-void
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 5
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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2039
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 2041
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->getQuickView()Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    .line 2043
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const v3, 0x7f0e008c

    invoke-virtual {v0, v3}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    .line 2045
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setHideItems(Z)V

    .line 2046
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuAppsGrid;->hidePageIndicator(Z)V

    .line 2048
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    .line 2049
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 2050
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$5100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v0

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnly(Z)V

    .line 2051
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v0, :cond_3

    .line 2052
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawOpenAnimation()V

    .line 2053
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    .line 2058
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v1, v0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    .line 2059
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->open()V

    .line 2060
    return-void

    :cond_1
    move v0, v2

    .line 2046
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2050
    goto :goto_1

    .line 2055
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->openInstantly()V

    .line 2056
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setNormalTitleBarVisibility(I)V

    goto :goto_2
.end method

.method public bridge synthetic enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1951
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 2064
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 2065
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :goto_0
    return-void

    .line 2068
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setHideItems(Z)V

    .line 2069
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->setDirtyFlags()V

    .line 2070
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->exitWithoutAnimation()V

    .line 2071
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 2072
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v1, v0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    goto :goto_0
.end method

.method public bridge synthetic exitItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1951
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exitWithAnimaton()V
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2082
    :goto_0
    return-void

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 2080
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 2081
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public exitWithoutAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2085
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2099
    :goto_0
    return-void

    .line 2089
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 2090
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->close()V

    .line 2091
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 2092
    .local v0, curPage:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2093
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    .line 2095
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setVisibility(I)V

    .line 2096
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setNormalTitleBarVisibility(I)V

    .line 2097
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->showPageIndicator(Z)V

    .line 2098
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->updateVisiblePages()Z

    goto :goto_0
.end method

.method public bridge synthetic getAppsList()Ljava/util/List;
    .locals 1

    .prologue
    .line 1951
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPage(I)Landroid/view/View;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    .prologue
    .line 1984
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v1

    .line 1985
    .local v1, w:I
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1986
    .local v0, s:I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .parameter "location"

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getLocationOnScreen([I)V

    .line 1980
    return-void
.end method

.method public getPagesTop()I
    .locals 2

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getTitleBarHight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public movePage(II)V
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0, p1, p2}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    .line 1975
    return-void
.end method

.method public onAppModelUpdated()V
    .locals 1

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 2113
    :cond_0
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1959
    const/4 v0, 0x0

    return v0
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 2

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->exitWithoutAnimation()V

    .line 2022
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2024
    :cond_0
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2015
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    .line 2016
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->showPageIndicator(Z)V

    .line 2017
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 2

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5000(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 2034
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 2

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x1

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5000(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 2029
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 2104
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 2106
    :cond_0
    return-void
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1951
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1951
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restore(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1951
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveCurrentPageOrder()V
    .locals 5

    .prologue
    .line 2001
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2003
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v3

    .line 2004
    .local v3, numPages:I
    const/4 v0, 0x0

    .local v0, curPage:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 2005
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 2006
    .local v2, item:Lcom/android/launcher2/BaseItem;
    iput v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_1

    .line 2004
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2010
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2011
    return-void
.end method

.method updateQuickView()V
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->loadLayoutParameters()V

    .line 2118
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 2120
    :cond_0
    return-void
.end method
