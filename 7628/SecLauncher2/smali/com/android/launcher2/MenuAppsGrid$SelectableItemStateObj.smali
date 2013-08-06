.class abstract Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SelectableItemStateObj"
.end annotation


# static fields
.field private static final CHECKED_APPS:Ljava/lang/String; = "CHECKED_APPS"


# instance fields
.field private mCheckedState:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneButton:Landroid/view/View;

.field private mNumSelected:Landroid/widget/TextView;

.field private mSelectedCnt:I

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>()V

    .line 1192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1191
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method protected abstract complete()V
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 9
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

    const/4 v5, 0x0

    .line 1230
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 1233
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1234
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    #setter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v6, v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3602(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 1235
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v6, 0x0

    #setter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;
    invoke-static {v3, v6}, Lcom/android/launcher2/MenuAppsGrid;->access$3702(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 1238
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1239
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v7

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v3, :cond_1

    move v3, v4

    :goto_0
    #calls: Lcom/android/launcher2/MenuAppsGrid;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    invoke-static {v6, p1, v7, v3}, Lcom/android/launcher2/MenuAppsGrid;->access$2600(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Landroid/view/View;Z)V

    .line 1241
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1242
    .local v2, selectedTitleBar:Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 1243
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1244
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lcom/android/launcher2/TitleBarKeyEventListener;

    invoke-direct {v6}, Lcom/android/launcher2/TitleBarKeyEventListener;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #selectedTitleBar:Landroid/view/ViewGroup;
    :cond_1
    move v3, v5

    .line 1239
    goto :goto_0

    .line 1250
    .restart local v2       #selectedTitleBar:Landroid/view/ViewGroup;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1252
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    const v6, 0x7f07007c

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    .line 1253
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGrid;->access$3800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e0053

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    const v6, 0x7f070054

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    .line 1257
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1263
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-eqz v6, :cond_4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1264
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;)V

    .line 1277
    .local v0, cancelListener:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f07007d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1279
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f07007b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    .end local v0           #cancelListener:Landroid/view/View$OnClickListener;
    .end local v2           #selectedTitleBar:Landroid/view/ViewGroup;
    :cond_3
    return-void

    .restart local v2       #selectedTitleBar:Landroid/view/ViewGroup;
    :cond_4
    move v4, v5

    .line 1263
    goto :goto_2
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 7
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
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    const/4 v6, 0x1

    .line 1302
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 1303
    .local v2, v:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1304
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    .line 1305
    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    .line 1306
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v4, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1307
    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    goto :goto_0

    .line 1311
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    .end local v2           #v:Lcom/android/launcher2/AppIconView;
    :cond_1
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
    .line 1287
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 1288
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    goto :goto_0
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 5
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
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    const/4 v4, 0x0

    .line 1315
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1318
    .local v1, v:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/launcher2/AppIconView;

    if-ne v2, v3, :cond_0

    .line 1319
    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    .line 1320
    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    goto :goto_0

    .line 1323
    .end local v1           #v:Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method protected getCheckedItems()Ljava/util/List;
    .locals 6
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
    .line 1326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1327
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1328
    .local v1, id:Ljava/lang/Long;
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1330
    .end local v1           #id:Ljava/lang/Long;
    :cond_0
    return-object v2
.end method

.method protected getCheckedViews()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1337
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1338
    .local v9, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 1339
    .local v0, count:I
    move v5, v0

    .line 1340
    .local v5, l:I
    const/4 v7, 0x0

    .line 1341
    .local v7, r:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-gt v4, v0, :cond_1

    .line 1342
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/MenuAppsGrid;->isPageConstructed(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1343
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1344
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1341
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1348
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getCheckedItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1349
    .local v2, i:Lcom/android/launcher2/AppItem;
    const/4 v1, 0x0

    .line 1350
    .local v1, found:Z
    move v4, v5

    :goto_2
    if-gt v4, v7, :cond_3

    .line 1351
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1352
    .local v6, page:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v8

    .line 1353
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_4

    .line 1354
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1355
    const/4 v1, 0x1

    .line 1359
    .end local v6           #page:Lcom/android/launcher2/CellLayout;
    .end local v8           #v:Landroid/view/View;
    :cond_3
    if-nez v1, :cond_2

    .line 1360
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$3900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/ItemViewBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v10, v12}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    invoke-interface {v11, v2, v10}, Lcom/android/launcher2/ItemViewBuilder;->buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1350
    .restart local v6       #page:Lcom/android/launcher2/CellLayout;
    .restart local v8       #v:Landroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1362
    .end local v1           #found:Z
    .end local v2           #i:Lcom/android/launcher2/AppItem;
    .end local v6           #page:Lcom/android/launcher2/CellLayout;
    .end local v8           #v:Landroid/view/View;
    :cond_5
    return-object v9
.end method

.method protected hasCheckedItems()Z
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 8
    .parameter "item"
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1203
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/android/launcher2/AppIconView;

    if-ne v2, v5, :cond_0

    move-object v1, p2

    .line 1204
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1205
    .local v1, chkable:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->toggle()V

    .line 1207
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1208
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1209
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v5, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1215
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1216
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0053

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f040002

    invoke-static {v2, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1222
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1223
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1225
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v1           #chkable:Lcom/android/launcher2/AppIconView;
    :cond_0
    return v3

    .line 1212
    .restart local v1       #chkable:Lcom/android/launcher2/AppIconView;
    :cond_1
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1213
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v5, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1215
    goto :goto_1
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "bundle"

    .prologue
    .line 1382
    if-eqz p1, :cond_0

    .line 1383
    const-string v2, "CHECKED_APPS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 1384
    .local v0, checkedAppIds:[J
    if-eqz v0, :cond_0

    .line 1385
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1386
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1387
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1391
    .end local v0           #checkedAppIds:[J
    .end local v1           #i:I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 1369
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [J

    .line 1372
    .local v0, checkedAppIds:[J
    const/4 v1, 0x0

    .line 1373
    .local v1, counter:I
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1374
    .local v4, id:Ljava/lang/Long;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #counter:I
    .local v2, counter:I
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v1

    move v1, v2

    .end local v2           #counter:I
    .restart local v1       #counter:I
    goto :goto_1

    .line 1377
    .end local v4           #id:Ljava/lang/Long;
    :cond_2
    const-string v5, "CHECKED_APPS"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0
.end method
