.class public Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetStatePageEdit"
.end annotation


# instance fields
.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method private isQuickViewOpen()Z
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 2
    .parameter "oldState"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->getQuickView()Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 1204
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const v1, 0x7f0e008d

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    .line 1205
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnly(Z)V

    .line 1206
    if-eqz p1, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawOpenAnimation()V

    .line 1208
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->animateNormalTitleBarVisibility(Z)V

    .line 1213
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->open()V

    .line 1214
    return-void

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->openInstantly()V

    .line 1211
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setNormalTitleBarVisibility(I)V

    goto :goto_0
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->setDirtyFlags()V

    .line 1219
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1220
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithoutAnimation()V

    .line 1221
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->resetNormalTitleBar()V

    .line 1222
    return-void
.end method

.method public exitWithAnimation()V
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 1298
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 1299
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public exitWithoutAnimation()V
    .locals 3

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 1307
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->close()V

    .line 1308
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 1309
    .local v0, curPage:I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1310
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    .line 1312
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1313
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->updateVisiblePages()Z

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPage(I)Landroid/view/View;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .parameter "location"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->getLocationOnScreen([I)V

    .line 1247
    return-void
.end method

.method public getPagesTop()I
    .locals 2

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public movePage(II)V
    .locals 0
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 1242
    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 0
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1194
    return-void
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 1

    .prologue
    .line 1268
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->isQuickViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithoutAnimation()V

    .line 1270
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateNormal()V

    .line 1272
    :cond_0
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 2

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->animateNormalTitleBarVisibility(Z)V

    .line 1277
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 2

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x0

    #calls: Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuWidgets;->access$2100(Lcom/android/launcher2/MenuWidgets;Z)V

    .line 1287
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x1

    #calls: Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuWidgets;->access$2100(Lcom/android/launcher2/MenuWidgets;Z)V

    .line 1282
    return-void
.end method

.method public refreshModel()V
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 1320
    :cond_0
    return-void
.end method

.method public refreshView()V
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 1325
    return-void
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1188
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1188
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveCurrentPageOrder()V
    .locals 0

    .prologue
    .line 1264
    return-void
.end method

.method updateQuickView()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->loadLayoutParameters()V

    .line 1330
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 1332
    :cond_0
    return-void
.end method
