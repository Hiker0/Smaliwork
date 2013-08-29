.class public Lcom/android/launcher2/MenuTabHost;
.super Landroid/widget/TabHost;
.source "MenuTabHost.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;


# static fields
.field static final APPS_TAB_TAG:Ljava/lang/String; = "APPS"

.field static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"


# instance fields
.field mMenuContainer:Landroid/view/View;

.field mMenuOrMarket:Landroid/view/View;

.field mMenuTabHostDarken:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 37
    return-void
.end method

.method private collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 6
    .parameter
    .parameter "tabContentAnimator"
    .parameter "otherAnimator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/animation/Animator;",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x1020011

    .line 137
    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup;

    .line 139
    .local v1, container:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 140
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 141
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 145
    invoke-virtual {p2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 150
    .local v0, a:Landroid/animation/Animator;
    :goto_2
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 151
    new-instance v4, Lcom/android/launcher2/MenuTabHost$1;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher2/MenuTabHost$1;-><init>(Lcom/android/launcher2/MenuTabHost;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    .end local v0           #a:Landroid/animation/Animator;
    :cond_1
    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .restart local v0       #a:Landroid/animation/Animator;
    goto :goto_2

    .line 172
    .end local v0           #a:Landroid/animation/Animator;
    .end local v3           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private static removeButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 92
    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public collectExitAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10b0001

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuTabHost;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 116
    return-void
.end method

.method public collectShowAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050006

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10b

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuTabHost;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 111
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/high16 v0, 0x6

    .line 88
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getMenuOrMarketButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/launcher2/MenuTabHost;->mMenuOrMarket:Landroid/view/View;

    return-object v0
.end method

.method public isCurrentTabAppGrid()Z
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentTabWidgets()Z
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIDGETS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v9, 0x0

    .line 184
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 188
    .local v3, r:Landroid/content/res/Resources;
    const v7, 0x7f0c0034

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 189
    .local v1, lm:I
    const v7, 0x7f0c0035

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 190
    .local v4, rm:I
    const v7, 0x7f0c0033

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 195
    .local v0, height:I
    const v7, 0x7f070069

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 196
    .local v6, titleBar:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 197
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 198
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 199
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 200
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    const v7, 0x7f07006d

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 204
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 205
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 207
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 208
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 211
    const v7, 0x7f07006e

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 212
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 215
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 216
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 219
    const v7, 0x7f070070

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 220
    if-nez v6, :cond_0

    .line 221
    const v7, 0x7f07006f

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 222
    :cond_0
    if-eqz v6, :cond_1

    .line 223
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 224
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 226
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 227
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 231
    :cond_1
    const v7, 0x7f070072

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 232
    if-nez v6, :cond_2

    .line 233
    const v7, 0x7f070071

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 234
    :cond_2
    if-eqz v6, :cond_3

    .line 235
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 236
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 238
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 239
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 243
    :cond_3
    const v7, 0x7f070074

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 244
    if-nez v6, :cond_4

    .line 245
    const v7, 0x7f070073

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 246
    :cond_4
    if-eqz v6, :cond_5

    .line 247
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 250
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 251
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 256
    :cond_5
    const v7, 0x1020011

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 257
    .local v5, tabContentView:Landroid/view/View;
    if-eqz v5, :cond_6

    .line 258
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 259
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 260
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    :cond_6
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/TabHost;->onFinishInflate()V

    .line 50
    iget-object v2, p0, Lcom/android/launcher2/MenuTabHost;->mMenuOrMarket:Landroid/view/View;

    if-nez v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->setup()V

    .line 54
    const v2, 0x7f07006c

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 55
    .local v1, menuButton:Landroid/widget/ImageView;
    const v2, 0x7f07006a

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, downloadedButton:Landroid/view/View;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-static {v1}, Lcom/android/launcher2/MenuTabHost;->removeButton(Landroid/view/View;)V

    .line 59
    const v2, 0x7f07006b

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/MenuTabHost;->removeButton(Landroid/view/View;)V

    .line 60
    iput-object v0, p0, Lcom/android/launcher2/MenuTabHost;->mMenuOrMarket:Landroid/view/View;

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuTabHost;->mMenuOrMarket:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/launcher2/MenuTabHost;->mMenuOrMarket:Landroid/view/View;

    new-instance v3, Lcom/android/launcher2/DownloadedIconKeyEventListener;

    invoke-direct {v3}, Lcom/android/launcher2/DownloadedIconKeyEventListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 76
    .end local v0           #downloadedButton:Landroid/view/View;
    .end local v1           #menuButton:Landroid/widget/ImageView;
    :cond_0
    const v2, 0x7f070079

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    .line 77
    const v2, 0x7f070068

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuTabHost;->mMenuContainer:Landroid/view/View;

    .line 78
    return-void

    .line 62
    .restart local v0       #downloadedButton:Landroid/view/View;
    .restart local v1       #menuButton:Landroid/widget/ImageView;
    :cond_1
    iput-object v1, p0, Lcom/android/launcher2/MenuTabHost;->mMenuOrMarket:Landroid/view/View;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 120
    invoke-super/range {p0 .. p5}, Landroid/widget/TabHost;->onLayout(ZIIII)V

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getChildCount()I

    move-result v1

    .line 123
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuTabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 128
    .local v3, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v5, v3, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v6, v3, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 123
    .end local v3           #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 266
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 267
    return-void
.end method
