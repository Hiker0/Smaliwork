.class public Lcom/android/launcher2/CellLayoutMenu;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutMenu.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayoutMenu"


# instance fields
.field private mNumItemsPushedIn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 32
    return-void
.end method

.method private fillFromPageRightSnake()V
    .locals 5

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 179
    .local v2, screen:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    .line 180
    .local v1, p:Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 182
    .local v0, child:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 183
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getPageItemCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getScreen()I

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 185
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->getPageItemCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 195
    .end local v0           #child:Lcom/android/launcher2/BaseItem;
    .end local v1           #p:Lcom/android/launcher2/CellLayoutMenu;
    .end local v2           #screen:I
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local v0       #child:Lcom/android/launcher2/BaseItem;
    .restart local v1       #p:Lcom/android/launcher2/CellLayoutMenu;
    .restart local v2       #screen:I
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->invalidate()V

    goto :goto_0
.end method

.method private getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 271
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    .line 272
    check-cast v0, Lcom/android/launcher2/MenuAppsGrid;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 264
    const-wide/16 v0, -0x66

    return-wide v0
.end method

.method public handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .parameter "newState"
    .parameter "oldState"

    .prologue
    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 300
    return-void
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    .line 259
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->hide(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method

.method public isReOrderingEnabled()Z
    .locals 5

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v1

    .line 305
    .local v1, m:Lcom/android/launcher2/MenuFragment;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 306
    .local v0, isCustomGrid:Z
    :goto_0
    const/4 v2, 0x0

    .line 308
    .local v2, result:Z
    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 310
    const/4 v2, 0x1

    .line 313
    :cond_1
    return v2

    .line 305
    .end local v0           #isCustomGrid:Z
    .end local v2           #result:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->onAttachedToWindow()V

    .line 38
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v8, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/DragState;

    if-nez v5, :cond_1

    :cond_0
    move v5, v7

    .line 125
    :goto_0
    return v5

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    .line 61
    .local v1, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v5, v8, :cond_3

    move v2, v6

    .line 64
    .local v2, isCustomGrid:Z
    :goto_1
    if-nez v2, :cond_6

    .line 65
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    move v5, v6

    .line 103
    goto :goto_0

    .end local v2           #isCustomGrid:Z
    :cond_3
    move v2, v7

    .line 61
    goto :goto_1

    .line 69
    .restart local v2       #isCustomGrid:Z
    :pswitch_1
    iget-object v5, v1, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v5, p0, :cond_4

    .line 70
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    .line 71
    .local v3, item:Lcom/android/launcher2/BaseItem;
    instance-of v5, v3, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_4

    move-object v0, v3

    .line 72
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 73
    .local v0, appItem:Lcom/android/launcher2/AppItem;
    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_4

    .line 74
    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 75
    iput v9, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 76
    iput v9, v0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    .line 78
    .local v4, menuFragment:Lcom/android/launcher2/MenuFragment;
    if-eqz v4, :cond_2

    .line 79
    new-instance v5, Lcom/android/launcher2/CellLayoutMenu$1;

    invoke-direct {v5, p0, v4}, Lcom/android/launcher2/CellLayoutMenu$1;-><init>(Lcom/android/launcher2/CellLayoutMenu;Lcom/android/launcher2/MenuFragment;)V

    invoke-virtual {v1, v5}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 93
    .end local v0           #appItem:Lcom/android/launcher2/AppItem;
    .end local v3           #item:Lcom/android/launcher2/BaseItem;
    .end local v4           #menuFragment:Lcom/android/launcher2/MenuFragment;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0089

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 98
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v5, v7, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 100
    :cond_5
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    goto :goto_2

    .line 106
    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 125
    :goto_3
    :pswitch_3
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 108
    :pswitch_4
    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    goto :goto_3

    .line 111
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 112
    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    goto :goto_3

    .line 117
    :pswitch_6
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 122
    iput v7, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    goto :goto_3

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 106
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getBackgroundAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->setCrosshairsVisibility(F)V

    .line 139
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 3
    .parameter "event"
    .parameter "fiv"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragState;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 48
    .local v0, isCustomGrid:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    goto :goto_0

    .line 46
    .end local v0           #isCustomGrid:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 281
    .local v1, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 282
    .local v0, idx:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v2

    rem-int v2, v0, v2

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v2

    div-int v2, v0, v2

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 286
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 295
    .end local v0           #idx:I
    .end local v1           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onViewAddedToLayout(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method realTimeReorder()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->snake(Lcom/android/launcher2/AppItem;)V

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 133
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, rc:Z
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    .line 242
    .local v2, state:Lcom/android/launcher2/MenuAppsGrid$State;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    .line 243
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    .line 244
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 247
    .local v0, isAlphaGrid:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->fillFromPageRightSnake()V

    .line 252
    .end local v0           #isAlphaGrid:Z
    :cond_0
    return v1

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method snake(Lcom/android/launcher2/AppItem;)V
    .locals 8
    .parameter "pushIn"

    .prologue
    const/4 v7, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCellIgnoreHidden()Z

    move-result v4

    if-nez v4, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 146
    .local v1, moveOut:Lcom/android/launcher2/AppItem;
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, v4, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .end local v1           #moveOut:Lcom/android/launcher2/AppItem;
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 149
    .restart local v1       #moveOut:Lcom/android/launcher2/AppItem;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 152
    .local v3, screen:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v2

    .line 153
    .local v2, p:Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutMenu;->snake(Lcom/android/launcher2/AppItem;)V

    .line 156
    .end local v1           #moveOut:Lcom/android/launcher2/AppItem;
    .end local v2           #p:Lcom/android/launcher2/CellLayoutMenu;
    .end local v3           #screen:I
    :cond_1
    if-eqz p1, :cond_2

    .line 157
    iget v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 159
    iput v7, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 162
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 163
    .local v0, _h:Lcom/android/launcher2/BaseItem;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->realTimeReorder()V

    .line 165
    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getScreen()I

    move-result v4

    invoke-virtual {p0, p1, v7, v4}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 169
    .end local v0           #_h:Lcom/android/launcher2/BaseItem;
    :cond_2
    return-void
.end method

.method undoSnake(Z)Lcom/android/launcher2/AppItem;
    .locals 7
    .parameter "first"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 203
    if-nez p1, :cond_1

    iget v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    if-nez v4, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-object v1

    .line 206
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCellIgnoreHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    :cond_2
    const/4 v1, 0x0

    .line 209
    .local v1, moveOut:Lcom/android/launcher2/AppItem;
    if-nez p1, :cond_4

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .end local v1           #moveOut:Lcom/android/launcher2/AppItem;
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 213
    .restart local v1       #moveOut:Lcom/android/launcher2/AppItem;
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, v4, :cond_3

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .end local v1           #moveOut:Lcom/android/launcher2/AppItem;
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 216
    .restart local v1       #moveOut:Lcom/android/launcher2/AppItem;
    :cond_3
    if-eqz v1, :cond_4

    .line 217
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 219
    iget v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 224
    .local v3, screen:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    .line 225
    .local v2, p:Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 227
    .local v0, fromRight:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 231
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getPageItemCount()I

    move-result v4

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0
.end method
