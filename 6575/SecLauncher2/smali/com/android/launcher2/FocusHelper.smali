.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# static fields
.field private static sHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private static sIsLoopingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "i"
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 948
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 949
    .local v0, count:I
    add-int v1, p1, p2

    .line 950
    .local v1, newI:I
    :goto_0
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 951
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 952
    .local v2, newV:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    .line 957
    .end local v2           #newV:Landroid/view/View;
    :goto_1
    return-object v2

    .line 955
    .restart local v2       #newV:Landroid/view/View;
    :cond_0
    add-int/2addr v1, p2

    .line 956
    goto :goto_0

    .line 957
    .end local v2           #newV:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .parameter "v"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 126
    .local v0, p:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_0

    .line 127
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    check-cast v0, Landroid/widget/TabHost;

    .end local v0           #p:Landroid/view/ViewParent;
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;
    .locals 2
    .parameter "container"
    .parameter "i"

    .prologue
    .line 911
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 912
    .local v0, parent:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .parameter "layout"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 923
    .local v0, cellCountX:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 924
    .local v1, count:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v3, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 926
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 928
    :cond_0
    new-instance v4, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$1;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 938
    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 21
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "lineDelta"

    .prologue
    .line 977
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    .line 978
    .local v14, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 979
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    .line 980
    .local v2, cellCountY:I
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 981
    .local v10, row:I
    add-int v8, v10, p3

    .line 982
    .local v8, newRow:I
    if-ltz v8, :cond_7

    if-ge v8, v2, :cond_7

    .line 983
    const v3, 0x7f7fffff

    .line 984
    .local v3, closestDistance:F
    const/4 v4, -0x1

    .line 985
    .local v4, closestIndex:I
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 986
    .local v6, index:I
    if-gez p3, :cond_1

    const/4 v5, -0x1

    .line 987
    .local v5, endIndex:I
    :goto_0
    if-eq v6, v5, :cond_6

    .line 988
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 989
    .local v9, newV:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 990
    .local v13, tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-gez p3, :cond_3

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ge v15, v10, :cond_2

    const/4 v11, 0x1

    .line 991
    .local v11, satisfiesRow:Z
    :goto_1
    if-eqz v11, :cond_0

    instance-of v15, v9, Lcom/android/launcher2/AppIconView;

    if-eqz v15, :cond_0

    .line 993
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v17, v0

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v12, v15

    .line 995
    .local v12, tmpDistance:F
    cmpg-float v15, v12, v3

    if-gez v15, :cond_0

    .line 996
    move v4, v6

    .line 997
    move v3, v12

    .line 1000
    .end local v12           #tmpDistance:F
    :cond_0
    if-gt v6, v5, :cond_5

    .line 1001
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 986
    .end local v5           #endIndex:I
    .end local v9           #newV:Landroid/view/View;
    .end local v11           #satisfiesRow:Z
    .end local v13           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 990
    .restart local v5       #endIndex:I
    .restart local v9       #newV:Landroid/view/View;
    .restart local v13       #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-le v15, v10, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 1003
    .restart local v11       #satisfiesRow:Z
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1006
    .end local v9           #newV:Landroid/view/View;
    .end local v11           #satisfiesRow:Z
    .end local v13           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_6
    const/4 v15, -0x1

    if-le v4, v15, :cond_7

    .line 1007
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 1010
    .end local v3           #closestDistance:F
    .end local v4           #closestIndex:I
    .end local v5           #endIndex:I
    .end local v6           #index:I
    :goto_2
    return-object v15

    :cond_7
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 961
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 962
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "delta"

    .prologue
    .line 966
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 967
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;
    .locals 2
    .parameter "container"
    .parameter "index"

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 306
    .local v0, page:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v1, :cond_0

    .line 308
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 310
    .restart local v0       #page:Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 231
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 232
    .local v5, tabHost:Landroid/widget/TabHost;
    const v11, 0x1020011

    invoke-virtual {v5, v11}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, contents:Landroid/view/ViewGroup;
    move-object v11, v5

    .line 234
    check-cast v11, Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuTabHost;->getMenuOrMarketButton()Landroid/view/View;

    move-result-object v4

    .line 235
    .local v4, menuOrMarket:Landroid/view/View;
    const v11, 0x7f070069

    invoke-virtual {v5, v11}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 236
    .local v6, tabs:Landroid/view/ViewGroup;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 237
    .local v8, tabs_child:Landroid/view/ViewGroup;
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 238
    .local v9, tabs_widgets:Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 239
    .local v7, tabs_apps:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    .line 240
    .local v3, menuFragment:Lcom/android/launcher2/MenuFragment;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 241
    .local v0, action:I
    const/4 v11, 0x1

    if-eq v0, v11, :cond_1

    const/4 v2, 0x1

    .line 242
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v10, 0x0

    .line 243
    .local v10, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 298
    :cond_0
    :goto_1
    return v10

    .line 241
    .end local v2           #handleKeyEvent:Z
    .end local v10           #wasHandled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 245
    .restart local v2       #handleKeyEvent:Z
    .restart local v10       #wasHandled:Z
    :sswitch_0
    if-eqz v2, :cond_2

    .line 246
    if-ne p0, v9, :cond_2

    .line 247
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 248
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->playSoundEffect(I)V

    .line 251
    :cond_2
    const/4 v10, 0x1

    .line 252
    goto :goto_1

    .line 254
    :sswitch_1
    if-eqz v2, :cond_3

    .line 256
    if-ne p0, v7, :cond_4

    .line 257
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 258
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->playSoundEffect(I)V

    .line 264
    :cond_3
    :goto_2
    const/4 v10, 0x1

    .line 265
    goto :goto_1

    .line 259
    :cond_4
    if-ne p0, v9, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 260
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 261
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 267
    :sswitch_2
    if-eqz v2, :cond_0

    .line 269
    if-ne p0, v4, :cond_0

    .line 270
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 271
    const/4 v10, 0x1

    goto :goto_1

    .line 278
    :sswitch_3
    if-eqz v2, :cond_7

    .line 279
    if-ne p0, v7, :cond_6

    .line 280
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/view/View;->setPressed(Z)V

    .line 294
    :cond_5
    :goto_3
    const/4 v10, 0x1

    .line 295
    goto :goto_1

    .line 281
    :cond_6
    if-ne p0, v9, :cond_5

    .line 282
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/view/View;->setPressed(Z)V

    goto :goto_3

    .line 284
    :cond_7
    if-ne p0, v7, :cond_8

    .line 285
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setPressed(Z)V

    .line 286
    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 287
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 288
    :cond_8
    if-ne p0, v9, :cond_5

    .line 289
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setPressed(Z)V

    .line 290
    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    .line 291
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_3
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method static handleDownloadedIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 137
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v3

    .line 138
    .local v3, tabHost:Landroid/widget/TabHost;
    const v9, 0x1020011

    invoke-virtual {v3, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 140
    .local v1, contents:Landroid/view/ViewGroup;
    const v9, 0x7f070069

    invoke-virtual {v3, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 141
    .local v4, tabs:Landroid/view/ViewGroup;
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 142
    .local v5, tabs_child:Landroid/view/ViewGroup;
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 143
    .local v6, tabs_widgets:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 144
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 145
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v7, 0x0

    .line 146
    .local v7, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 169
    :cond_0
    :goto_1
    return v7

    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_1
    move v2, v8

    .line 144
    goto :goto_0

    .line 148
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :pswitch_0
    if-eqz v2, :cond_2

    .line 150
    if-eq p0, v3, :cond_2

    .line 151
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 152
    invoke-virtual {v6, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 155
    :cond_2
    const/4 v7, 0x1

    .line 156
    goto :goto_1

    .line 158
    :pswitch_1
    const/4 v7, 0x1

    .line 159
    goto :goto_1

    .line 161
    :pswitch_2
    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 163
    const/4 v7, 0x1

    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleFolderAddItemKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1254
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 1255
    .local v3, parent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 1256
    .local v4, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 1257
    .local v1, folder:Lcom/android/launcher2/Folder;
    iget-object v5, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 1259
    .local v5, title:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1260
    .local v0, action:I
    if-eq v0, v2, :cond_0

    .line 1262
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v6, 0x0

    .line 1263
    .local v6, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 1275
    :goto_1
    :pswitch_0
    return v6

    .line 1260
    .end local v2           #handleKeyEvent:Z
    .end local v6           #wasHandled:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1267
    .restart local v2       #handleKeyEvent:Z
    .restart local v6       #wasHandled:Z
    :pswitch_1
    if-eqz v2, :cond_1

    .line 1268
    invoke-virtual {v5}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 1270
    :cond_1
    const/4 v6, 0x1

    .line 1271
    goto :goto_1

    .line 1263
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    .line 1157
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    .line 1158
    .local v6, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 1159
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    .line 1160
    .local v7, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v7}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 1161
    .local v1, folder:Lcom/android/launcher2/Folder;
    iget-object v8, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 1162
    .local v8, title:Landroid/view/View;
    const v11, 0x7f070030

    invoke-virtual {v1, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1164
    .local v2, folderAddButton:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1165
    .local v0, action:I
    if-eq v0, v10, :cond_0

    move v3, v10

    .line 1166
    .local v3, handleKeyEvent:Z
    :goto_0
    const/4 v9, 0x0

    .line 1167
    .local v9, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1250
    :goto_1
    return v9

    .line 1165
    .end local v3           #handleKeyEvent:Z
    .end local v9           #wasHandled:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1169
    .restart local v3       #handleKeyEvent:Z
    .restart local v9       #wasHandled:Z
    :sswitch_0
    if-eqz v3, :cond_1

    .line 1171
    invoke-static {v4, v6, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1172
    .local v5, newIcon:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 1173
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1176
    .end local v5           #newIcon:Landroid/view/View;
    :cond_1
    const/4 v9, 0x1

    .line 1177
    goto :goto_1

    .line 1179
    :sswitch_1
    if-eqz v3, :cond_2

    .line 1182
    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1183
    invoke-static {v4, v6, p0, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1184
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_3

    .line 1185
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1201
    .end local v5           #newIcon:Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v9, 0x1

    .line 1202
    goto :goto_1

    .line 1187
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_3
    if-eqz v2, :cond_4

    .line 1188
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 1190
    :cond_4
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    goto :goto_2

    .line 1194
    .end local v5           #newIcon:Landroid/view/View;
    :cond_5
    invoke-static {v4, v6, v12, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 1195
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1196
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 1204
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_2
    if-eqz v3, :cond_6

    .line 1206
    invoke-static {v4, v6, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1207
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_7

    .line 1208
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1213
    .end local v5           #newIcon:Landroid/view/View;
    :cond_6
    :goto_3
    const/4 v9, 0x1

    .line 1214
    goto :goto_1

    .line 1210
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_7
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    goto :goto_3

    .line 1216
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_3
    if-eqz v3, :cond_8

    .line 1218
    invoke-static {v4, v6, p0, v10}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1219
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_9

    .line 1220
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1225
    .end local v5           #newIcon:Landroid/view/View;
    :cond_8
    :goto_4
    const/4 v9, 0x1

    .line 1226
    goto :goto_1

    .line 1222
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_9
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    goto :goto_4

    .line 1228
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_4
    if-eqz v3, :cond_a

    .line 1230
    invoke-static {v4, v6, v12, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 1231
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_a

    .line 1232
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1235
    .end local v5           #newIcon:Landroid/view/View;
    :cond_a
    const/4 v9, 0x1

    .line 1236
    goto :goto_1

    .line 1238
    :sswitch_5
    if-eqz v3, :cond_b

    .line 1240
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    invoke-static {v4, v6, v10, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 1242
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_b

    .line 1243
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1246
    .end local v5           #newIcon:Landroid/view/View;
    :cond_b
    const/4 v9, 0x1

    .line 1247
    goto :goto_1

    .line 1167
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 29
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 715
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 716
    .local v23, parent:Landroid/view/ViewGroup;
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 717
    .local v13, launcher:Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v27

    const v28, 0x7f07003e

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/Workspace;

    .line 718
    .local v26, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 719
    .local v22, pageIndex:I
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v21

    .line 722
    .local v21, pageCount:I
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 723
    .local v7, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 724
    .local v3, cc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v17

    .line 730
    .local v17, newIcon_left:Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 731
    .local v2, action:I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v2, v0, :cond_0

    const/4 v12, 0x1

    .line 732
    .local v12, handleKeyEvent:Z
    :goto_0
    const/16 v25, 0x0

    .line 733
    .local v25, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 904
    :goto_1
    return v25

    .line 731
    .end local v12           #handleKeyEvent:Z
    .end local v25           #wasHandled:Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 735
    .restart local v12       #handleKeyEvent:Z
    .restart local v25       #wasHandled:Z
    :pswitch_0
    if-eqz v12, :cond_2

    .line 736
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_1

    .line 737
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 738
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 739
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 741
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 742
    .restart local v7       #cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 743
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v17

    .line 746
    :cond_1
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 747
    if-eqz v17, :cond_3

    .line 748
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    .line 796
    :cond_2
    :goto_2
    const/16 v25, 0x1

    .line 797
    goto :goto_1

    .line 750
    :cond_3
    if-lez v22, :cond_4

    .line 751
    add-int/lit8 v24, v22, -0x1

    .line 757
    .local v24, prevPage:I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 758
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 759
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 760
    .local v9, cl_left:Lcom/android/launcher2/CellLayout;
    if-eqz v9, :cond_2

    .line 761
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 762
    .local v4, cc_left:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    .line 763
    .local v19, newIcon_prevpage:Landroid/view/View;
    if-eqz v19, :cond_2

    .line 764
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 752
    .end local v4           #cc_left:Lcom/android/launcher2/CellLayoutChildren;
    .end local v9           #cl_left:Lcom/android/launcher2/CellLayout;
    .end local v19           #newIcon_prevpage:Landroid/view/View;
    .end local v24           #prevPage:I
    :cond_4
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_5

    .line 753
    add-int/lit8 v24, v21, -0x1

    .restart local v24       #prevPage:I
    goto :goto_3

    .line 755
    .end local v24           #prevPage:I
    :cond_5
    move/from16 v24, v22

    .restart local v24       #prevPage:I
    goto :goto_3

    .line 769
    .end local v24           #prevPage:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 770
    .local v11, clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 771
    .local v8, cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 773
    .local v16, newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_7

    .line 774
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 776
    :cond_7
    if-lez v22, :cond_8

    .line 777
    add-int/lit8 v24, v22, -0x1

    .line 783
    .restart local v24       #prevPage:I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 784
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 785
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 786
    .restart local v9       #cl_left:Lcom/android/launcher2/CellLayout;
    if-eqz v9, :cond_2

    .line 787
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 788
    .restart local v4       #cc_left:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    .line 789
    .restart local v19       #newIcon_prevpage:Landroid/view/View;
    if-eqz v19, :cond_2

    .line 790
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_2

    .line 778
    .end local v4           #cc_left:Lcom/android/launcher2/CellLayoutChildren;
    .end local v9           #cl_left:Lcom/android/launcher2/CellLayout;
    .end local v19           #newIcon_prevpage:Landroid/view/View;
    .end local v24           #prevPage:I
    :cond_8
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_9

    .line 779
    add-int/lit8 v24, v21, -0x1

    .restart local v24       #prevPage:I
    goto :goto_4

    .line 781
    .end local v24           #prevPage:I
    :cond_9
    move/from16 v24, v22

    .restart local v24       #prevPage:I
    goto :goto_4

    .line 799
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    .end local v24           #prevPage:I
    :pswitch_1
    if-eqz v12, :cond_b

    .line 800
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_a

    .line 801
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 802
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 803
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 806
    :cond_a
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 807
    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 808
    add-int/lit8 v20, v22, 0x1

    .line 814
    .local v20, nextPage:I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 815
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 816
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 817
    .local v10, cl_right:Lcom/android/launcher2/CellLayout;
    if-eqz v10, :cond_b

    .line 818
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 819
    .local v5, cc_right:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    .line 820
    .local v18, newIcon_nextpage:Landroid/view/View;
    if-eqz v18, :cond_b

    .line 821
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 852
    .end local v5           #cc_right:Lcom/android/launcher2/CellLayoutChildren;
    .end local v10           #cl_right:Lcom/android/launcher2/CellLayout;
    .end local v18           #newIcon_nextpage:Landroid/view/View;
    .end local v20           #nextPage:I
    :cond_b
    :goto_6
    const/16 v25, 0x1

    .line 853
    goto/16 :goto_1

    .line 809
    :cond_c
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_d

    .line 810
    const/16 v20, 0x0

    .restart local v20       #nextPage:I
    goto :goto_5

    .line 812
    .end local v20           #nextPage:I
    :cond_d
    move/from16 v20, v22

    .restart local v20       #nextPage:I
    goto :goto_5

    .line 825
    .end local v20           #nextPage:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 826
    .restart local v11       #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 827
    .restart local v8       #cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 829
    .restart local v16       #newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_f

    .line 830
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 832
    :cond_f
    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 833
    add-int/lit8 v20, v22, 0x1

    .line 839
    .restart local v20       #nextPage:I
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 840
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 841
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 842
    .restart local v10       #cl_right:Lcom/android/launcher2/CellLayout;
    if-eqz v10, :cond_b

    .line 843
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 844
    .restart local v5       #cc_right:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    .line 845
    .restart local v18       #newIcon_nextpage:Landroid/view/View;
    if-eqz v18, :cond_b

    .line 846
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 834
    .end local v5           #cc_right:Lcom/android/launcher2/CellLayoutChildren;
    .end local v10           #cl_right:Lcom/android/launcher2/CellLayout;
    .end local v18           #newIcon_nextpage:Landroid/view/View;
    .end local v20           #nextPage:I
    :cond_10
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_11

    .line 835
    const/16 v20, 0x0

    .restart local v20       #nextPage:I
    goto :goto_7

    .line 837
    .end local v20           #nextPage:I
    :cond_11
    move/from16 v20, v22

    .restart local v20       #nextPage:I
    goto :goto_7

    .line 855
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    .end local v20           #nextPage:I
    :pswitch_2
    if-eqz v12, :cond_13

    .line 856
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_12

    .line 857
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 858
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 859
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 862
    :cond_12
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 863
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 864
    .restart local v11       #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 865
    .restart local v8       #cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 867
    .restart local v16       #newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_13

    .line 868
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 881
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    :cond_13
    :goto_8
    const/16 v25, 0x1

    .line 882
    goto/16 :goto_1

    .line 871
    :cond_14
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout;

    .line 872
    .local v14, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    .line 873
    .local v6, children:Lcom/android/launcher2/CellLayoutChildren;
    const/16 v27, -0x1

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v14, v6, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v15

    .line 874
    .local v15, newIcon:Landroid/view/View;
    if-eqz v15, :cond_15

    .line 875
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    .line 877
    :cond_15
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_8

    .line 884
    .end local v6           #children:Lcom/android/launcher2/CellLayoutChildren;
    .end local v14           #layout:Lcom/android/launcher2/CellLayout;
    .end local v15           #newIcon:Landroid/view/View;
    :pswitch_3
    if-eqz v12, :cond_17

    .line 885
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_16

    .line 886
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 887
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 888
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 890
    :cond_16
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 891
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 892
    .restart local v11       #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 893
    .restart local v8       #cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 895
    .restart local v16       #newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_17

    .line 896
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 900
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    :cond_17
    const/16 v25, 0x1

    .line 901
    goto/16 :goto_1

    .line 733
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleMenuAppGridIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 25
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayoutChildren;

    .line 485
    .local v18, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayoutMenu;

    .line 486
    .local v9, grandparent:Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v7

    .line 487
    .local v7, countX:I
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v8

    .line 489
    .local v8, countY:I
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/MenuAppsGrid;

    .line 490
    .local v13, menuGrid:Lcom/android/launcher2/MenuAppsGrid;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 491
    .local v11, iconIndex:I
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    .line 492
    .local v12, itemCount:I
    invoke-virtual {v13, v9}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/launcher2/MenuAppsGrid;->indexToPage(I)I

    move-result v17

    .line 493
    .local v17, pageIndex:I
    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v16

    .line 495
    .local v16, pageCount:I
    rem-int v20, v11, v7

    .line 496
    .local v20, x:I
    div-int v21, v11, v7

    .line 498
    .local v21, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 499
    .local v3, action:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v3, v0, :cond_1

    const/4 v10, 0x1

    .line 500
    .local v10, handleKeyEvent:Z
    :goto_0
    const/4 v14, 0x0

    .line 503
    .local v14, newParent:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 504
    .local v5, child:Landroid/view/View;
    const/16 v19, 0x0

    .line 505
    .local v19, wasHandled:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 507
    .local v6, configuration:Landroid/content/res/Configuration;
    sparse-switch p1, :sswitch_data_0

    .line 650
    :cond_0
    :goto_1
    return v19

    .line 499
    .end local v5           #child:Landroid/view/View;
    .end local v6           #configuration:Landroid/content/res/Configuration;
    .end local v10           #handleKeyEvent:Z
    .end local v14           #newParent:Landroid/view/ViewGroup;
    .end local v19           #wasHandled:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 509
    .restart local v5       #child:Landroid/view/View;
    .restart local v6       #configuration:Landroid/content/res/Configuration;
    .restart local v10       #handleKeyEvent:Z
    .restart local v14       #newParent:Landroid/view/ViewGroup;
    .restart local v19       #wasHandled:Z
    :sswitch_0
    if-eqz v10, :cond_2

    .line 511
    if-lez v11, :cond_3

    .line 512
    add-int/lit8 v22, v11, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 531
    :cond_2
    :goto_2
    const/16 v19, 0x1

    .line 532
    goto :goto_1

    .line 514
    :cond_3
    if-lez v17, :cond_4

    .line 515
    add-int/lit8 v22, v17, -0x1

    move/from16 v0, v22

    invoke-static {v13, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    .line 516
    if-eqz v14, :cond_2

    .line 517
    add-int/lit8 v22, v16, -0x1

    const/16 v23, 0x2

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(IIZ)V

    .line 518
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 519
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 521
    :cond_4
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v22, :cond_2

    .line 522
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v22

    invoke-static {v13, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    .line 523
    if-eqz v14, :cond_2

    .line 524
    add-int/lit8 v22, v16, -0x1

    const/16 v23, 0x2

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(IIZ)V

    .line 525
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 526
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 534
    :sswitch_1
    if-eqz v10, :cond_5

    .line 536
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    if-ge v11, v0, :cond_6

    .line 537
    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 556
    :cond_5
    :goto_3
    const/16 v19, 0x1

    .line 557
    goto/16 :goto_1

    .line 539
    :cond_6
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 540
    add-int/lit8 v22, v17, 0x1

    move/from16 v0, v22

    invoke-static {v13, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    .line 541
    if-eqz v14, :cond_5

    .line 542
    add-int/lit8 v22, v17, 0x1

    const/16 v23, 0x3

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(IIZ)V

    .line 543
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 544
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 546
    :cond_7
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v22, :cond_5

    .line 547
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v13, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    .line 548
    if-eqz v14, :cond_5

    .line 549
    const/16 v22, 0x0

    const/16 v23, 0x3

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(IIZ)V

    .line 550
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 551
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 559
    :sswitch_2
    if-eqz v10, :cond_8

    .line 561
    if-lez v21, :cond_9

    .line 562
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v7

    add-int v15, v22, v20

    .line 563
    .local v15, newiconIndex:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 572
    .end local v15           #newiconIndex:I
    :cond_8
    :goto_4
    const/16 v19, 0x1

    .line 573
    goto/16 :goto_1

    .line 565
    :cond_9
    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v4

    .line 567
    .local v4, activeTitleBar:Landroid/view/ViewGroup;
    if-eqz v4, :cond_8

    .line 568
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_4

    .line 575
    .end local v4           #activeTitleBar:Landroid/view/ViewGroup;
    :sswitch_3
    if-eqz v10, :cond_a

    .line 577
    add-int/lit8 v22, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 578
    add-int/lit8 v22, v12, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v7

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 579
    .restart local v15       #newiconIndex:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 582
    .end local v15           #newiconIndex:I
    :cond_a
    const/16 v19, 0x1

    .line 583
    goto/16 :goto_1

    .line 587
    :sswitch_4
    iget v0, v6, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    iget v0, v6, Landroid/content/res/Configuration;->navigation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 591
    :cond_b
    if-nez v10, :cond_d

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v22

    sget-object v23, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_d

    .line 593
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    .line 598
    :cond_c
    :goto_5
    const/16 v19, 0x1

    .line 599
    goto/16 :goto_1

    .line 594
    :cond_d
    if-eqz v10, :cond_c

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v22

    sget-object v23, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 596
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    goto :goto_5

    .line 601
    :sswitch_5
    if-eqz v10, :cond_e

    .line 604
    if-lez v17, :cond_f

    .line 605
    add-int/lit8 v22, v17, -0x1

    move/from16 v0, v22

    invoke-static {v13, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    .line 606
    if-eqz v14, :cond_e

    .line 607
    add-int/lit8 v22, v17, -0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 608
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 609
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 615
    :cond_e
    :goto_6
    const/16 v19, 0x1

    .line 616
    goto/16 :goto_1

    .line 612
    :cond_f
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 618
    :sswitch_6
    if-eqz v10, :cond_10

    .line 621
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    .line 622
    add-int/lit8 v22, v17, 0x1

    move/from16 v0, v22

    invoke-static {v13, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    .line 623
    if-eqz v14, :cond_10

    .line 624
    add-int/lit8 v22, v17, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 625
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 626
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 632
    :cond_10
    :goto_7
    const/16 v19, 0x1

    .line 633
    goto/16 :goto_1

    .line 629
    :cond_11
    add-int/lit8 v22, v12, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 635
    :sswitch_7
    if-eqz v10, :cond_12

    .line 637
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 639
    :cond_12
    const/16 v19, 0x1

    .line 640
    goto/16 :goto_1

    .line 642
    :sswitch_8
    if-eqz v10, :cond_13

    .line 644
    add-int/lit8 v22, v12, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 646
    :cond_13
    const/16 v19, 0x1

    .line 647
    goto/16 :goto_1

    .line 507
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handlePagedViewWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 24
    .parameter "w"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/PagedViewGridLayout;

    .line 320
    .local v14, parent:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/MenuWidgets;

    .line 321
    .local v9, menuWidgets:Lcom/android/launcher2/PagedView;
    invoke-static {v9}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v15

    .line 322
    .local v15, tabHost:Landroid/widget/TabHost;
    const v22, 0x1020013

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TabWidget;

    .line 323
    .local v16, tabs:Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v19

    .line 324
    .local v19, widgetIndex:I
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v18

    .line 325
    .local v18, widgetCount:I
    invoke-virtual {v9, v14}, Lcom/android/launcher2/MenuWidgets;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/MenuWidgets;->indexToPage(I)I

    move-result v13

    .line 326
    .local v13, pageIndex:I
    invoke-virtual {v9}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v12

    .line 327
    .local v12, pageCount:I
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v3

    .line 328
    .local v3, cellCountX:I
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v4

    .line 329
    .local v4, cellCountY:I
    rem-int v20, v19, v3

    .line 330
    .local v20, x:I
    div-int v21, v19, v3

    .line 332
    .local v21, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 333
    .local v2, action:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_0

    const/4 v7, 0x1

    .line 334
    .local v7, handleKeyEvent:Z
    :goto_0
    const/4 v10, 0x0

    .line 337
    .local v10, newParent:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 338
    .local v5, child:Landroid/view/View;
    const/16 v17, 0x0

    .line 339
    .local v17, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 477
    :goto_1
    return v17

    .line 333
    .end local v5           #child:Landroid/view/View;
    .end local v7           #handleKeyEvent:Z
    .end local v10           #newParent:Landroid/view/ViewGroup;
    .end local v17           #wasHandled:Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 341
    .restart local v5       #child:Landroid/view/View;
    .restart local v7       #handleKeyEvent:Z
    .restart local v10       #newParent:Landroid/view/ViewGroup;
    .restart local v17       #wasHandled:Z
    :sswitch_0
    if-eqz v7, :cond_1

    .line 343
    if-lez v19, :cond_2

    .line 344
    add-int/lit8 v22, v19, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 363
    :cond_1
    :goto_2
    const/16 v17, 0x1

    .line 364
    goto :goto_1

    .line 346
    :cond_2
    if-lez v13, :cond_3

    .line 347
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 348
    if-eqz v10, :cond_1

    .line 349
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 350
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 351
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 353
    :cond_3
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v22, :cond_1

    .line 354
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 355
    if-eqz v10, :cond_1

    .line 356
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 357
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 358
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 366
    :sswitch_1
    if-eqz v7, :cond_4

    .line 368
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 369
    add-int/lit8 v22, v19, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 388
    :cond_4
    :goto_3
    const/16 v17, 0x1

    .line 389
    goto :goto_1

    .line 371
    :cond_5
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    if-ge v13, v0, :cond_6

    .line 372
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 373
    if-eqz v10, :cond_4

    .line 374
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 375
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 376
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 378
    :cond_6
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v22, :cond_4

    .line 379
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 380
    if-eqz v10, :cond_4

    .line 381
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 382
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 383
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 391
    :sswitch_2
    if-eqz v7, :cond_7

    .line 393
    if-lez v21, :cond_8

    .line 394
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v3

    add-int v11, v22, v20

    .line 395
    .local v11, newWidgetIndex:I
    invoke-virtual {v14, v11}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 396
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 406
    .end local v11           #newWidgetIndex:I
    :cond_7
    :goto_4
    const/16 v17, 0x1

    .line 407
    goto/16 :goto_1

    .line 398
    :cond_8
    const v22, 0x7f070072

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 399
    .local v8, mSearchTitleBar:Landroid/view/ViewGroup;
    if-eqz v8, :cond_9

    .line 400
    const/16 v17, 0x0

    .line 401
    goto/16 :goto_1

    .line 403
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_4

    .line 409
    .end local v8           #mSearchTitleBar:Landroid/view/ViewGroup;
    :sswitch_3
    if-eqz v7, :cond_a

    .line 411
    add-int/lit8 v22, v4, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 412
    add-int/lit8 v22, v18, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v3

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 413
    .restart local v11       #newWidgetIndex:I
    invoke-virtual {v14, v11}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 414
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 417
    .end local v11           #newWidgetIndex:I
    :cond_a
    const/16 v17, 0x1

    .line 418
    goto/16 :goto_1

    .line 421
    :sswitch_4
    if-eqz v7, :cond_b

    move-object v6, v9

    .line 423
    check-cast v6, Landroid/view/View$OnClickListener;

    .line 424
    .local v6, clickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 426
    .end local v6           #clickListener:Landroid/view/View$OnClickListener;
    :cond_b
    const/16 v17, 0x1

    .line 427
    goto/16 :goto_1

    .line 429
    :sswitch_5
    if-eqz v7, :cond_d

    .line 432
    if-lez v13, :cond_e

    .line 433
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 434
    if-eqz v10, :cond_c

    .line 435
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 440
    :cond_c
    :goto_5
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 442
    :cond_d
    const/16 v17, 0x1

    .line 443
    goto/16 :goto_1

    .line 438
    :cond_e
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    .line 445
    :sswitch_6
    if-eqz v7, :cond_10

    .line 448
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    if-ge v13, v0, :cond_11

    .line 449
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 450
    if-eqz v10, :cond_f

    .line 451
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 456
    :cond_f
    :goto_6
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 458
    :cond_10
    const/16 v17, 0x1

    .line 459
    goto/16 :goto_1

    .line 454
    :cond_11
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_6

    .line 461
    :sswitch_7
    if-eqz v7, :cond_12

    .line 463
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 464
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 466
    :cond_12
    const/16 v17, 0x1

    .line 467
    goto/16 :goto_1

    .line 469
    :sswitch_8
    if-eqz v7, :cond_13

    .line 471
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 473
    :cond_13
    const/16 v17, 0x1

    .line 474
    goto/16 :goto_1

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 657
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v8

    if-nez v8, :cond_0

    .line 708
    :goto_0
    return v7

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 660
    .local v3, parent:Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 661
    .local v5, tabHost:Landroid/widget/TabHost;
    const v8, 0x1020011

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 663
    .local v1, contents:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    .line 664
    .local v4, tabCount:I
    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 666
    .local v6, tabIndex:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 667
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 668
    .local v2, handleKeyEvent:Z
    :goto_1
    const/4 v7, 0x0

    .line 669
    .local v7, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 694
    :sswitch_0
    const/4 v7, 0x1

    .line 695
    goto :goto_0

    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_1
    move v2, v7

    .line 667
    goto :goto_1

    .line 671
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :sswitch_1
    if-eqz v2, :cond_2

    .line 673
    if-lez v6, :cond_2

    .line 674
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 677
    :cond_2
    const/4 v7, 0x1

    .line 678
    goto :goto_0

    .line 680
    :sswitch_2
    if-eqz v2, :cond_3

    .line 682
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    .line 683
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 690
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 691
    goto :goto_0

    .line 685
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 686
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 697
    :sswitch_3
    if-eqz v2, :cond_5

    .line 699
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 701
    :cond_5
    const/4 v7, 0x1

    .line 702
    goto :goto_0

    .line 704
    :sswitch_4
    const/4 v7, 0x1

    .line 705
    goto :goto_0

    .line 669
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method static handleTitleBarKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f07005b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    .line 174
    .local v6, menuGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 175
    .local v0, action:I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    const/4 v5, 0x1

    .line 176
    .local v5, handleKeyEvent:Z
    :goto_0
    const/4 v7, 0x0

    .line 177
    .local v7, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_1
    return v7

    .line 175
    .end local v5           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 179
    .restart local v5       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :pswitch_0
    if-eqz v5, :cond_1

    .line 180
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 181
    .local v1, activeTitleBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_2

    .line 185
    const v8, 0x7f070066

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 188
    .local v2, backButton:Landroid/view/View;
    :goto_2
    const v8, 0x7f070054

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 189
    .local v4, doneButton:Landroid/view/View;
    const v8, 0x7f07007d

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 191
    .local v3, cancelButton:Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v4, :cond_3

    if-eqz v3, :cond_3

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 198
    .end local v1           #activeTitleBar:Landroid/view/ViewGroup;
    .end local v2           #backButton:Landroid/view/View;
    .end local v3           #cancelButton:Landroid/view/View;
    .end local v4           #doneButton:Landroid/view/View;
    :cond_1
    :goto_3
    const/4 v7, 0x1

    .line 199
    goto :goto_1

    .line 187
    .restart local v1       #activeTitleBar:Landroid/view/ViewGroup;
    :cond_2
    const v8, 0x7f07007b

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .restart local v2       #backButton:Landroid/view/View;
    goto :goto_2

    .line 193
    .restart local v3       #cancelButton:Landroid/view/View;
    .restart local v4       #doneButton:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v3, :cond_1

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 201
    .end local v1           #activeTitleBar:Landroid/view/ViewGroup;
    .end local v2           #backButton:Landroid/view/View;
    .end local v3           #cancelButton:Landroid/view/View;
    .end local v4           #doneButton:Landroid/view/View;
    :pswitch_1
    if-eqz v5, :cond_4

    .line 202
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 203
    .restart local v1       #activeTitleBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    .line 206
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_5

    .line 207
    const v8, 0x7f070066

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 210
    .restart local v2       #backButton:Landroid/view/View;
    :goto_4
    const v8, 0x7f070054

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 211
    .restart local v4       #doneButton:Landroid/view/View;
    const v8, 0x7f07007d

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 213
    .restart local v3       #cancelButton:Landroid/view/View;
    if-eqz v3, :cond_6

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v3, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 214
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 220
    .end local v1           #activeTitleBar:Landroid/view/ViewGroup;
    .end local v2           #backButton:Landroid/view/View;
    .end local v3           #cancelButton:Landroid/view/View;
    .end local v4           #doneButton:Landroid/view/View;
    :cond_4
    :goto_5
    const/4 v7, 0x1

    .line 221
    goto/16 :goto_1

    .line 209
    .restart local v1       #activeTitleBar:Landroid/view/ViewGroup;
    :cond_5
    const v8, 0x7f07007b

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .restart local v2       #backButton:Landroid/view/View;
    goto :goto_4

    .line 215
    .restart local v3       #cancelButton:Landroid/view/View;
    .restart local v4       #doneButton:Landroid/view/View;
    :cond_6
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v2, :cond_4

    if-eqz v3, :cond_4

    .line 216
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleWorkspaceAllAppsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 1279
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1280
    .local v10, parent:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1281
    .local v5, launcher:Landroid/view/ViewGroup;
    const v14, 0x7f07003e

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Workspace;

    .line 1282
    .local v13, workspace:Lcom/android/launcher2/Workspace;
    const v14, 0x7f07004f

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1284
    .local v0, AllAppsButton:Landroid/view/View;
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1285
    .local v9, pageIndex:I
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .line 1287
    .local v8, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 1288
    .local v1, action:I
    const/4 v14, 0x1

    if-eq v1, v14, :cond_0

    const/4 v4, 0x1

    .line 1289
    .local v4, handleKeyEvent:Z
    :goto_0
    const/4 v11, 0x0

    .line 1291
    .local v11, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1382
    :goto_1
    return v11

    .line 1288
    .end local v4           #handleKeyEvent:Z
    .end local v11           #wasHandled:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1294
    .restart local v4       #handleKeyEvent:Z
    .restart local v11       #wasHandled:Z
    :sswitch_0
    if-eqz v4, :cond_2

    .line 1296
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1297
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1298
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1299
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1301
    :cond_1
    if-lez v9, :cond_3

    .line 1302
    add-int/lit8 v14, v9, -0x1

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1308
    .local v12, whichPage:I
    :goto_2
    if-eq v12, v9, :cond_2

    .line 1309
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1311
    .local v6, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1312
    invoke-static {v13, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    .line 1313
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v6, v10, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1315
    .local v7, newIcon:Landroid/view/View;
    if-eqz v7, :cond_5

    .line 1316
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1322
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :cond_2
    :goto_3
    const/4 v11, 0x1

    .line 1323
    goto :goto_1

    .line 1303
    :cond_3
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_4

    .line 1304
    move v12, v8

    .restart local v12       #whichPage:I
    goto :goto_2

    .line 1306
    .end local v12           #whichPage:I
    :cond_4
    move v12, v9

    .restart local v12       #whichPage:I
    goto :goto_2

    .line 1318
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 1326
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :sswitch_1
    if-eqz v4, :cond_7

    .line 1327
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_6

    .line 1328
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1329
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1330
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1332
    :cond_6
    if-ge v9, v8, :cond_8

    .line 1333
    add-int/lit8 v14, v9, 0x1

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1339
    .restart local v12       #whichPage:I
    :goto_4
    if-eq v12, v9, :cond_7

    .line 1340
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1342
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1343
    invoke-static {v13, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    .line 1344
    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-static {v6, v10, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1346
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_a

    .line 1347
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1353
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :cond_7
    :goto_5
    const/4 v11, 0x1

    .line 1354
    goto/16 :goto_1

    .line 1334
    :cond_8
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_9

    .line 1335
    const/4 v12, 0x0

    .restart local v12       #whichPage:I
    goto :goto_4

    .line 1337
    .end local v12           #whichPage:I
    :cond_9
    move v12, v9

    .restart local v12       #whichPage:I
    goto :goto_4

    .line 1349
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 1356
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :sswitch_2
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1357
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->launchAllAppsIcon()V

    .line 1360
    :cond_b
    :sswitch_3
    const/4 v11, 0x1

    .line 1361
    goto/16 :goto_1

    .line 1363
    :sswitch_4
    if-eqz v4, :cond_d

    .line 1364
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_c

    .line 1365
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1366
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1367
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1369
    :cond_c
    invoke-virtual {v13, v9}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 1370
    .local v3, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v3, :cond_d

    .line 1371
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 1372
    .local v2, cc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v3, v2, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1373
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_d

    .line 1374
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1377
    .end local v2           #cc:Lcom/android/launcher2/CellLayoutChildren;
    .end local v3           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    :cond_d
    const/4 v11, 0x1

    .line 1378
    goto/16 :goto_1

    .line 1291
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_2
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method static handleWorkspaceIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 17
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 1017
    if-nez p0, :cond_0

    const/4 v13, 0x1

    .line 1150
    :goto_0
    return v13

    .line 1018
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 1019
    .local v11, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1020
    .local v6, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/Workspace;

    .line 1021
    .local v14, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1022
    .local v5, launcher:Landroid/view/ViewGroup;
    const v15, 0x7f07004f

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1023
    .local v1, AllAppsButton:Landroid/view/View;
    const v15, 0x7f070041

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1025
    .local v4, hotseat:Landroid/view/ViewGroup;
    if-nez v4, :cond_1

    .line 1026
    sget-object v15, Lcom/android/launcher2/FocusHelper;->sHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v15}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    .line 1028
    :cond_1
    invoke-virtual {v14, v6}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v10

    .line 1029
    .local v10, pageIndex:I
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v9

    .line 1032
    .local v9, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1033
    .local v2, action:I
    const/4 v15, 0x1

    if-eq v2, v15, :cond_4

    const/4 v3, 0x1

    .line 1034
    .local v3, handleKeyEvent:Z
    :goto_1
    const/4 v13, 0x0

    .line 1035
    .local v13, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1109
    :pswitch_0
    if-eqz v3, :cond_3

    .line 1110
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1111
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1112
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1113
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v10

    .line 1115
    :cond_2
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-static {v6, v11, v0, v15}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 1116
    .local v7, newIcon:Landroid/view/View;
    if-eqz v7, :cond_13

    .line 1117
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1127
    .end local v7           #newIcon:Landroid/view/View;
    :cond_3
    :goto_2
    const/4 v13, 0x1

    .line 1128
    goto :goto_0

    .line 1033
    .end local v3           #handleKeyEvent:Z
    .end local v13           #wasHandled:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1037
    .restart local v3       #handleKeyEvent:Z
    .restart local v13       #wasHandled:Z
    :pswitch_1
    if-eqz v3, :cond_6

    .line 1038
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_5

    .line 1039
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1040
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1041
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v10

    .line 1043
    :cond_5
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-static {v6, v11, v0, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 1044
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_7

    .line 1045
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1071
    .end local v7           #newIcon:Landroid/view/View;
    :cond_6
    :goto_3
    const/4 v13, 0x1

    .line 1072
    goto/16 :goto_0

    .line 1047
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_7
    if-lez v10, :cond_8

    .line 1048
    add-int/lit8 v12, v10, -0x1

    .line 1054
    .local v12, prevPage:I
    :goto_4
    if-eq v12, v10, :cond_6

    .line 1055
    invoke-static {v14, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    .line 1056
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-static {v6, v11, v15, v0}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1058
    if-eqz v7, :cond_a

    .line 1059
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 1049
    .end local v12           #prevPage:I
    :cond_8
    sget-boolean v15, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v15, :cond_9

    .line 1050
    add-int/lit8 v12, v9, -0x1

    .restart local v12       #prevPage:I
    goto :goto_4

    .line 1052
    .end local v12           #prevPage:I
    :cond_9
    move v12, v10

    .restart local v12       #prevPage:I
    goto :goto_4

    .line 1062
    :cond_a
    invoke-virtual {v14, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1063
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1064
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 1066
    :cond_b
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_3

    .line 1074
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #prevPage:I
    :pswitch_2
    if-eqz v3, :cond_d

    .line 1075
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_c

    .line 1076
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1077
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1078
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v10

    .line 1080
    :cond_c
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v6, v11, v0, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 1081
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_e

    .line 1082
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1106
    .end local v7           #newIcon:Landroid/view/View;
    :cond_d
    :goto_5
    const/4 v13, 0x1

    .line 1107
    goto/16 :goto_0

    .line 1084
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_e
    add-int/lit8 v15, v9, -0x1

    if-ge v10, v15, :cond_f

    .line 1085
    add-int/lit8 v8, v10, 0x1

    .line 1090
    .local v8, nextPage:I
    :goto_6
    if-eq v8, v10, :cond_d

    .line 1091
    invoke-static {v14, v8}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    .line 1092
    const/4 v15, -0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v11, v15, v0}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1093
    if-eqz v7, :cond_11

    .line 1094
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 1086
    .end local v8           #nextPage:I
    :cond_f
    sget-boolean v15, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v15, :cond_10

    .line 1087
    const/4 v8, 0x0

    .restart local v8       #nextPage:I
    goto :goto_6

    .line 1089
    .end local v8           #nextPage:I
    :cond_10
    move v8, v10

    .restart local v8       #nextPage:I
    goto :goto_6

    .line 1097
    :cond_11
    invoke-virtual {v14, v8}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1098
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1099
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 1101
    :cond_12
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_5

    .line 1119
    .end local v8           #nextPage:I
    :cond_13
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1120
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_2

    .line 1122
    :cond_14
    const/4 v15, 0x2

    move/from16 v0, p3

    if-ne v0, v15, :cond_3

    .line 1123
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto/16 :goto_2

    .line 1130
    .end local v7           #newIcon:Landroid/view/View;
    :pswitch_3
    if-eqz v3, :cond_16

    .line 1131
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_15

    .line 1132
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1133
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1134
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v10

    .line 1136
    :cond_15
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v6, v11, v0, v15}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 1137
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_17

    .line 1138
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1146
    .end local v7           #newIcon:Landroid/view/View;
    :cond_16
    :goto_7
    const/4 v13, 0x1

    .line 1147
    goto/16 :goto_0

    .line 1140
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_17
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 1141
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 1143
    :cond_18
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_7

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setup(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter "home"

    .prologue
    .line 133
    sput-object p0, Lcom/android/launcher2/FocusHelper;->sHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 134
    return-void
.end method
