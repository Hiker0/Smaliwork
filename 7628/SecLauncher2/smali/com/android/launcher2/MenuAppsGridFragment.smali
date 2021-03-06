.class public final Lcom/android/launcher2/MenuAppsGridFragment;
.super Landroid/app/Fragment;
.source "MenuAppsGridFragment.java"

# interfaces
.implements Lcom/android/launcher2/MenuFragment$AppModelNotifications;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/MenuFragment$NeedsTabHost;
.implements Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsGridFragment$2;
    }
.end annotation


# static fields
.field private static final APP_GRID_SAVED_STATE:Ljava/lang/String; = "MENU_APP_GRID_SAVED_STATE"

.field private static final FOLDER_STATE_BUNDLE:Ljava/lang/String; = "folderStateBundle"

.field private static final TAG:Ljava/lang/String; = "MenuAppsGridFragment"


# instance fields
.field private mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mFolderBundle:Landroid/os/Bundle;

.field private mIsPaused:Z

.field private mPendingModelUpdate:Z

.field private mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

.field private mState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mTabHost:Lcom/android/launcher2/MenuTabHost;

.field private mViewType:Lcom/android/launcher2/MenuFragment$ViewType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuFragment$ViewType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/MenuAppsGridFragment;Lcom/android/launcher2/MenuFragment$ViewType;)Lcom/android/launcher2/MenuFragment$ViewType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsGridFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/MenuAppsGridFragment;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method private closeDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_0

    .line 344
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 348
    .local v2, manager:Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 351
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-static {v1, v2}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "editCancelDialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 354
    .local v0, cancelDialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 356
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 359
    :cond_1
    invoke-virtual {v1, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 360
    return-void
.end method

.method private updatePinchListener(Lcom/android/launcher2/MenuFragment$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .parameter "viewType"
    .parameter "state"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne p1, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public appModelLoaded()V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->appModelUpdated()V

    .line 220
    return-void
.end method

.method public appModelUpdated()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 226
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    goto :goto_0
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 195
    .local v0, oldState:Lcom/android/launcher2/MenuAppsGrid$State;
    if-eq p1, v0, :cond_0

    .line 198
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 199
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/MenuAppsGridFragment;->updatePinchListener(Lcom/android/launcher2/MenuFragment$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 203
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 207
    :cond_0
    return-void
.end method

.method public closeFolders()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 510
    :cond_0
    return-void
.end method

.method public getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    return-object v0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 237
    const/4 v3, 0x1

    .line 239
    .local v3, rc:Z
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.launcher2.prefs"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 241
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "MenuFragment.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/MenuFragment$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v1

    .line 243
    .local v1, mViewType:Lcom/android/launcher2/MenuFragment$ViewType;
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v7}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 244
    :cond_0
    sget-object v4, Lcom/android/launcher2/MenuAppsGridFragment$2;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 305
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 308
    :cond_1
    :goto_0
    return v3

    .line 246
    :pswitch_0
    const/4 v3, 0x0

    .line 247
    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v4, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->returnToPreviousState()V

    goto :goto_0

    .line 254
    :pswitch_2
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 257
    :pswitch_3
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 260
    :pswitch_4
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->exitWithAnimaton()V

    goto :goto_0

    .line 265
    :pswitch_5
    sget-boolean v4, Lcom/android/launcher2/DragLayer;->sIsDragState:Z

    if-nez v4, :cond_1

    .line 268
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v4, :cond_2

    .line 269
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->saveEditChanges()V

    .line 273
    :cond_2
    :pswitch_6
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v4, :cond_3

    .line 274
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v7}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    .line 277
    :cond_3
    const-string v4, "WIDGET"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 278
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 279
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "WIDGET"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 280
    const-string v4, "GRID_WIDGET"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    goto/16 :goto_0

    .line 285
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v4, "LIST"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 286
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "LIST"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    goto/16 :goto_0

    .line 291
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    const-string v4, "WIDGET_LIST"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 292
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "WIDGET_LIST"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 294
    const-string v4, "LIST_WIDGET"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    goto/16 :goto_0

    .line 300
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_6
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 55
    const-string v3, "MenuAppsGridFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView. savedInstanceState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_5

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const v2, 0x7f030023

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/mainmenu/PinchLayerView;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    .line 59
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const v3, 0x7f07005b

    invoke-virtual {v2, v3}, Lcom/android/launcher2/mainmenu/PinchLayerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuAppsGrid;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    .line 60
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/MenuAppsGrid;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    .line 61
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/MenuAppsGrid;->setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V

    .line 62
    invoke-static {p0}, Lcom/android/launcher2/FolderIconView;->setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V

    .line 64
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 65
    if-eqz p3, :cond_1

    .line 66
    const-string v2, "MENU_APP_GRID_SAVED_STATE"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, appGridSavedState:I
    if-eq v5, v0, :cond_0

    .line 68
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid$State;->values()[Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restore(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    const-string v2, "folderStateBundle"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    .line 78
    .end local v0           #appGridSavedState:I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->setTabHost(Lcom/android/launcher2/MenuTabHost;)V

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    if-nez v2, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {v2, v3, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "MenuFragment.ViewType"

    sget-object v3, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment$ViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/MenuFragment$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 87
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 89
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v2, :cond_4

    .line 90
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 92
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->updatePinchListener(Lcom/android/launcher2/MenuFragment$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 93
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 95
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    return-object v2

    .line 55
    :cond_5
    const-string v2, "not null"

    goto/16 :goto_0

    .line 74
    .restart local v0       #appGridSavedState:I
    :cond_6
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    const-string v0, "MenuAppsGridFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 161
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->onHideTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 163
    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    .line 164
    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    .line 165
    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 166
    return-void
.end method

.method public onExitAllApps()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    .line 368
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->onExitAllApps()V

    .line 371
    :cond_1
    return-void
.end method

.method public onHideTab(Lcom/android/launcher2/MenuTabHost;)V
    .locals 2
    .parameter "tabHost"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    .line 501
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->saveOpenFolderState(Landroid/os/Bundle;)V

    .line 502
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->leaveCurrentState()V

    .line 503
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getComingPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    .line 505
    :cond_0
    return-void
.end method

.method public onHomePressed()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 315
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment$2;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 339
    :goto_0
    :pswitch_0
    return v4

    .line 318
    :pswitch_1
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 321
    :pswitch_2
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 322
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_0

    .line 326
    :pswitch_3
    const-string v2, "SHARE_SELECT"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 331
    :pswitch_4
    const-string v2, "DOWNLOADED_UNINSTALL"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 336
    :pswitch_5
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 2
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 386
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    .line 101
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 102
    return-void
.end method

.method public onPinch()Z
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0

    .line 377
    :cond_1
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 378
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 106
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 108
    const-string v3, "MenuAppsGridFragment"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 112
    .local v1, prefs:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v3, :cond_1

    .line 114
    const-string v3, "SHARE_SELECT"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 125
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    .line 126
    .local v2, stateObj:Lcom/android/launcher2/MenuAppsGrid$StateObj;
    instance-of v3, v2, Lcom/android/launcher2/MenuAppsGrid$StateObj$ResumableState;

    if-eqz v3, :cond_1

    .line 127
    check-cast v2, Lcom/android/launcher2/MenuAppsGrid$StateObj$ResumableState;

    .end local v2           #stateObj:Lcom/android/launcher2/MenuAppsGrid$StateObj;
    invoke-interface {v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj$ResumableState;->onResume()V

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 135
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    .line 137
    :cond_2
    return-void

    .line 117
    :cond_3
    const-string v3, "DOWNLOADED_UNINSTALL"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 118
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "DOWNLOADED_UNINSTALL"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 122
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v3, "LIST"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "WIDGET_LIST"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    :cond_5
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 394
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v1, :cond_0

    .line 395
    const-string v1, "MENU_APP_GRID_SAVED_STATE"

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->save(Landroid/os/Bundle;)V

    .line 398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 399
    .local v0, folderBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->saveOpenFolderState(Landroid/os/Bundle;)V

    .line 400
    const-string v1, "folderStateBundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 403
    .end local v0           #folderBundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onShowTab(Lcom/android/launcher2/MenuTabHost;)V
    .locals 2
    .parameter "tabHost"

    .prologue
    .line 407
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/MenuTabHost;->isCurrentTabAppGrid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showAllAppsCling([I)V

    .line 415
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->setDownloadIconEnabled()V

    .line 417
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuAppsGridFragment$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGridFragment$1;-><init>(Lcom/android/launcher2/MenuAppsGridFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 495
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 154
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->onStop()V

    .line 155
    :cond_0
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuTabHost;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    .line 171
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setTabHost(Lcom/android/launcher2/MenuTabHost;)V

    .line 174
    :cond_0
    return-void
.end method

.method public setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V
    .locals 1
    .parameter "viewType"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->updatePinchListener(Lcom/android/launcher2/MenuFragment$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 178
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 182
    return-void
.end method
