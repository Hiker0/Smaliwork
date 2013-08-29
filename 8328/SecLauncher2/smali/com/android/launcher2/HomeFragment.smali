.class public final Lcom/android/launcher2/HomeFragment;
.super Landroid/app/Fragment;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;
.implements Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeFragment$13;,
        Lcom/android/launcher2/HomeFragment$DropPos;,
        Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;,
        Lcom/android/launcher2/HomeFragment$AppWidgetResetObserver;,
        Lcom/android/launcher2/HomeFragment$PendingAddArguments;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field public static final CHOOSER_MODE:Ljava/lang/String; = "mode"

.field static final DEBUG_WIDGETS:Z = false

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final FOLDER_DARKEN_LAYER_VISIBILITY:Ljava/lang/String; = "launcher.workspace_folder_darken_layer_visibility"

.field private static final FOLDER_STATE_BUNDLE:Ljava/lang/String; = "launcher.workspace_folder_bundle"

.field static final LOGD:Z = false

.field static final MENU_GROUP_WALLPAPER:I = 0x1

.field static final MENU_HELP:I = 0x5

.field static final MENU_MANAGE_APPS:I = 0x3

.field static final MENU_SYSTEM_SETTINGS:I = 0x4

.field static final MENU_WALLPAPER_SETTINGS:I = 0x2

.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "launcher.workspace_open_folder_id"

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_start"

.field static final PROFILE_STARTUP:Z = false

.field private static final QUICKVIEW_DELETE_INDEX:Ljava/lang/String; = "launcher.workspace_quickview_delete_index"

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field static final REQUEST_CREATE_NEW_FOLDER_WITH_SHORTCUT_ITEM:I = 0x2

.field static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field static final REQUEST_PICK_APPLICATION:I = 0x6

.field static final REQUEST_PICK_APPWIDGET:I = 0x9

.field static final REQUEST_PICK_SHORTCUT:I = 0x7

.field static final REQUEST_PICK_WALLPAPER:I = 0xa

.field public static final RESPONSE_CODE_SHOW_WIDGETS:I = -0x2710

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_STATE_PENDING_ADD_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final TAG:Ljava/lang/String; = "Launcher.HomeFragment"

.field static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field private static final WAS_IN_QUICKVIEW:Ljava/lang/String; = "launcher.workspace_was_in_quickview"

.field static final sDumpLogs:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sFolders:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field static sPanelDrawer:Lcom/android/launcher2/PanelDrawer; = null

.field private static sPendingAddList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeFragment$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionInDuration:I = 0xc8

.field private static final sTransitionOutDuration:I = 0xaf


# instance fields
.field private final ADVANCE_MSG:I

.field private final REMOVE_MARKETSAMPLE:I

.field private final SHOW_MARKETSAMPLE:I

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAfterSavedInstanceState:Z

.field private mAllAppsIcon:Landroid/view/View;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mCPMgr:Lcom/android/launcher2/ContextualPageManager;

.field private mContextualPageMarker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDragItem:Lcom/android/launcher2/BaseItem;

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDarkenView:Landroid/view/View;

.field private mDeleteDropLayout:Landroid/widget/LinearLayout;

.field private mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mDraggedItemScreen:I

.field private mDraggedItemX:I

.field private mDraggedItemY:I

.field private mEditBar:Lcom/android/launcher2/HomeEditBar;

.field private mEditIcon:Landroid/view/View;

.field private mEditIconDivider:Landroid/view/View;

.field private mFavoritesModeIsNormal:Z

.field private mFolderBundle:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeContainer:Landroid/view/View;

.field private mHomeDarkenLayer:Landroid/view/View;

.field private mHomeEditButtonListener:Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;

.field private mHomeEditTitleBar:Landroid/view/ViewGroup;

.field private mHomeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mHomeKeyPress:Z

.field private mHomeSearchBtn:Landroid/view/View;

.field private mHomeTopBar:Landroid/view/View;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDeletePopup:Z

.field private mMarketSample:Landroid/view/View;

.field private mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPendingAddInfo:Lcom/android/launcher2/HomeItem;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field mPrevPageIndex:I

.field private mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

.field private mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

.field private mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

.field private mRestoring:Z

.field private mSavedState:Landroid/os/Bundle;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mTmpAddItemCellCoordinates:[I

.field public mViewRoot:Landroid/view/View;

.field mWaitingForResult:Z

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z

.field top4AnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFragment;->sDumpLogs:Ljava/util/ArrayList;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFragment;->sPendingAddList:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Lcom/android/launcher2/PanelDrawer;

    invoke-direct {v0}, Lcom/android/launcher2/PanelDrawer;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 157
    new-instance v0, Lcom/android/launcher2/HomeFragment$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeFragment$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/HomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 170
    new-instance v0, Lcom/android/launcher2/HomeItem;

    invoke-direct {v0}, Lcom/android/launcher2/HomeItem;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    .line 171
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    .line 185
    new-instance v0, Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;-><init>(Lcom/android/launcher2/HomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditButtonListener:Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;

    .line 191
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceRunning:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    .line 209
    iput v1, p0, Lcom/android/launcher2/HomeFragment;->ADVANCE_MSG:I

    .line 210
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher2/HomeFragment;->mAdvanceInterval:I

    .line 211
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher2/HomeFragment;->mAdvanceStagger:I

    .line 212
    iput v4, p0, Lcom/android/launcher2/HomeFragment;->SHOW_MARKETSAMPLE:I

    .line 213
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/HomeFragment;->REMOVE_MARKETSAMPLE:I

    .line 215
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceTimeLeft:J

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 223
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    .line 239
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mIsDeletePopup:Z

    .line 258
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeKeyPress:Z

    .line 262
    iput v3, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    .line 263
    iput v3, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    .line 264
    iput v3, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    .line 271
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    .line 804
    new-instance v0, Lcom/android/launcher2/HomeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeFragment$3;-><init>(Lcom/android/launcher2/HomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1189
    new-instance v0, Lcom/android/launcher2/HomeFragment$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeFragment$6;-><init>(Lcom/android/launcher2/HomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    .line 1224
    new-instance v0, Lcom/android/launcher2/HomeFragment$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeFragment$7;-><init>(Lcom/android/launcher2/HomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    .line 2734
    iput v2, p0, Lcom/android/launcher2/HomeFragment;->mPrevPageIndex:I

    .line 3444
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Hotseat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/QuickLaunch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/QuickLaunch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/HomeFragment;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/DeleteDropTarget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/HomeFragment;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/HomeFragment;->changeTop4IconContainer(IZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->performOnHomePressed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/HomeFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeFragment;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mMarketSample:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/HomeFragment;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    return-object v0
.end method

.method private changeTop4Icon(Landroid/view/View;I)V
    .locals 19
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    .line 2901
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v15

    move/from16 v0, p2

    if-eq v15, v0, :cond_2

    .line 2902
    :cond_0
    const-string v15, "Launcher.HomeFragment"

    const-string v16, "[CP] changeTop4Icon but newPage == null or newPageIndex miss match"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    :cond_1
    :goto_0
    return-void

    .line 2907
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v16, 0x258

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    move-object/from16 v6, p1

    .line 2913
    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 2914
    .local v6, cl:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeFragment;->mPrevPageIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    .line 2915
    .local v12, prevcl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    .line 2916
    .local v2, CurCPType:I
    if-nez v12, :cond_9

    const/4 v3, 0x0

    .line 2917
    .local v3, PrevCPType:I
    :goto_1
    if-eqz v2, :cond_a

    const/4 v9, 0x1

    .line 2918
    .local v9, isCurCP:Z
    :goto_2
    if-eqz v3, :cond_b

    const/4 v10, 0x1

    .line 2920
    .local v10, isPrvCP:Z
    :goto_3
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/HomeFragment;->mPrevPageIndex:I

    .line 2921
    const/4 v11, 0x0

    .line 2922
    .local v11, needToChange:Z
    if-nez v9, :cond_4

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    if-nez v15, :cond_4

    :cond_3
    if-nez v12, :cond_5

    .line 2923
    :cond_4
    const/4 v11, 0x1

    .line 2926
    :cond_5
    if-eqz v11, :cond_1

    .line 2927
    const-string v15, "Launcher.HomeFragment"

    const-string v16, "[CP] needToChange && State.NORMAL"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2929
    .local v13, top4Animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2930
    .local v7, hotseatView:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x0

    .line 2932
    .local v5, addListener:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    const/4 v15, 0x4

    if-ge v8, v15, :cond_c

    .line 2933
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v15, v15, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v15

    add-int/lit8 v16, v8, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2934
    .local v14, v:Landroid/view/View;
    if-eqz v14, :cond_7

    .line 2935
    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2936
    const/4 v15, 0x2

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    sget-object v17, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2940
    .local v4, a:Landroid/animation/ObjectAnimator;
    if-nez v5, :cond_6

    .line 2941
    const/4 v5, 0x1

    .line 2942
    new-instance v15, Lcom/android/launcher2/HomeFragment$12;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2, v9, v7}, Lcom/android/launcher2/HomeFragment$12;-><init>(Lcom/android/launcher2/HomeFragment;IZLjava/util/ArrayList;)V

    invoke-virtual {v4, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2953
    :cond_6
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2954
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2932
    .end local v4           #a:Landroid/animation/ObjectAnimator;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2909
    .end local v2           #CurCPType:I
    .end local v3           #PrevCPType:I
    .end local v5           #addListener:Z
    .end local v6           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #hotseatView:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8           #i:I
    .end local v9           #isCurCP:Z
    .end local v10           #isPrvCP:Z
    .end local v11           #needToChange:Z
    .end local v12           #prevcl:Lcom/android/launcher2/CellLayout;
    .end local v13           #top4Animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v14           #v:Landroid/view/View;
    :cond_8
    const-string v15, "Launcher.HomeFragment"

    const-string v16, "[CP] tablet not support"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2916
    .restart local v2       #CurCPType:I
    .restart local v6       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v12       #prevcl:Lcom/android/launcher2/CellLayout;
    :cond_9
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v3

    goto/16 :goto_1

    .line 2917
    .restart local v3       #PrevCPType:I
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 2918
    .restart local v9       #isCurCP:Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 2958
    .restart local v5       #addListener:Z
    .restart local v7       #hotseatView:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v8       #i:I
    .restart local v10       #isPrvCP:Z
    .restart local v11       #needToChange:Z
    .restart local v13       #top4Animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_d

    .line 2959
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    .line 2960
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v13}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2961
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v16, 0x64

    invoke-virtual/range {v15 .. v17}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2962
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    .line 2965
    :cond_d
    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 2966
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v15}, Lcom/android/launcher2/HomeFragment;->changeTop4IconContainer(IZZ)V

    goto/16 :goto_0

    .line 2936
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x70t 0x41t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private changeTop4IconContainer(IZZ)V
    .locals 14
    .parameter "CPType"
    .parameter "isToCP"
    .parameter "withAni"

    .prologue
    .line 2820
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2821
    .local v8, top4Animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2822
    .local v3, hotseatView:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 2824
    .local v1, hotseatCellIdx:I
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/Hotseat;->removeAllItemsWithoutAllApps()V

    .line 2826
    if-eqz p2, :cond_9

    .line 2827
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/launcher2/CellLayoutHotseat;->setContextualAwareHotset(Z)V

    .line 2828
    const-string v10, "Launcher.HomeFragment"

    const-string v11, "[CP] changeTop4Icon : not CP -> CP"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v10, p1}, Lcom/android/launcher2/ContextualPageManager;->getHotseatAwareItems(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2830
    .local v2, hotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeShortcutItem;>;"
    if-eqz v2, :cond_5

    .line 2831
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    .line 2832
    .local v4, hs:Lcom/android/launcher2/HomeShortcutItem;
    if-eqz v4, :cond_1

    iget-object v10, v4, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_3

    .line 2833
    :cond_1
    const-string v11, "Launcher.HomeFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CP] changeTop4IconContainer - mIcon is null. Item : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", Title : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_2

    const-string v10, "???"

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v10, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 2835
    :cond_3
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    .line 2836
    if-eqz p3, :cond_0

    .line 2837
    add-int/lit8 v1, v1, 0x1

    .line 2838
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2839
    .local v9, v:Landroid/view/View;
    const/4 v10, 0x1

    if-ne v1, v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-direct {p0, v8, v3, v9, v10}, Lcom/android/launcher2/HomeFragment;->setupHotseatAnimator(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;Z)V

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 2845
    .end local v4           #hs:Lcom/android/launcher2/HomeShortcutItem;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #v:Landroid/view/View;
    :cond_5
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v10, v11, :cond_6

    .line 2846
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(ZZ)V

    .line 2848
    :cond_6
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/android/launcher2/HomeFragment;->setOnlyOneVisibleCPMarker(IZ)V

    .line 2849
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/HomeFragment;->setDarkenViewIfneed(Z)V

    .line 2880
    .end local v2           #hotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeShortcutItem;>;"
    :goto_3
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 2881
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    .line 2883
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v10, v11, :cond_7

    .line 2884
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 2887
    :cond_7
    if-eqz p3, :cond_8

    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 2888
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2889
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v11, 0xc8

    invoke-virtual {v10, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2890
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2896
    :cond_8
    :goto_4
    return-void

    .line 2852
    :cond_9
    const-string v10, "Launcher.HomeFragment"

    const-string v11, "[CP] changeTop4Icon : CP -> not CP"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher2/CellLayoutHotseat;->setContextualAwareHotset(Z)V

    .line 2854
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    if-eqz v10, :cond_c

    .line 2855
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeItem;

    .line 2856
    .local v6, item:Lcom/android/launcher2/HomeItem;
    if-eqz v6, :cond_a

    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    if-eq v10, v6, :cond_a

    .line 2857
    iget-wide v10, v6, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, -0x65

    cmp-long v10, v10, v12

    if-nez v10, :cond_a

    .line 2858
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v10, v6}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    .line 2859
    if-eqz p3, :cond_a

    .line 2860
    add-int/lit8 v1, v1, 0x1

    .line 2861
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2862
    .restart local v9       #v:Landroid/view/View;
    const/4 v10, 0x1

    if-ne v1, v10, :cond_b

    const/4 v10, 0x1

    :goto_6
    invoke-direct {p0, v8, v3, v9, v10}, Lcom/android/launcher2/HomeFragment;->setupHotseatAnimator(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;Z)V

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    .line 2869
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #item:Lcom/android/launcher2/HomeItem;
    .end local v9           #v:Landroid/view/View;
    :cond_c
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v10, v11, :cond_e

    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v10, :cond_e

    .line 2870
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    iget-object v10, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v10, v11, :cond_d

    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    iget-object v10, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v10, v11, :cond_f

    :cond_d
    const/4 v7, 0x1

    .line 2872
    .local v7, itemFromApps:Z
    :goto_7
    if-eqz v7, :cond_e

    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2873
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(ZZ)V

    .line 2876
    .end local v7           #itemFromApps:Z
    :cond_e
    const/4 v10, 0x1

    invoke-direct {p0, p1, v10}, Lcom/android/launcher2/HomeFragment;->setOnlyOneVisibleCPMarker(IZ)V

    .line 2877
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/launcher2/HomeFragment;->setDarkenViewIfneed(Z)V

    goto/16 :goto_3

    .line 2870
    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    .line 2892
    :catch_0
    move-exception v0

    .line 2893
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v10, "Launcher.HomeFragment"

    const-string v11, "Top4 view removed problem during Top4 Animation."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method private completeAdd(Lcom/android/launcher2/HomeFragment$PendingAddArguments;)Z
    .locals 10
    .parameter "args"

    .prologue
    .line 391
    const/4 v9, 0x0

    .line 392
    .local v9, result:Z
    iget v0, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    .line 424
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 425
    return v9

    .line 394
    :pswitch_1
    iget-object v1, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HomeFragment;->completeAddApplication(Landroid/content/Intent;JIII)V

    goto :goto_0

    .line 398
    :pswitch_2
    iget-object v0, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 401
    :pswitch_3
    iget-object v1, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/HomeFragment;->completeAddShortcut(Landroid/content/Intent;JIII)V

    .line 403
    const/4 v9, 0x1

    .line 404
    goto :goto_0

    .line 406
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .line 407
    .local v1, item:Lcom/android/launcher2/HomeShortcutItem;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x64

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZ)V

    goto :goto_0

    .line 411
    .end local v1           #item:Lcom/android/launcher2/HomeShortcutItem;
    :pswitch_5
    iget-object v0, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->addAppWidgetFromPick(Landroid/content/Intent;)V

    goto :goto_0

    .line 414
    :pswitch_6
    iget-object v0, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v2, "appWidgetId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 415
    .local v8, appWidgetId:I
    iget-wide v2, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->container:J

    iget v0, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->screen:I

    invoke-direct {p0, v8, v2, v3, v0}, Lcom/android/launcher2/HomeFragment;->completeAddAppWidget(IJI)V

    .line 416
    const/4 v9, 0x1

    .line 417
    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private completeAddAppWidget(IJI)V
    .locals 29
    .parameter "appWidgetId"
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 1050
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v21

    .line 1052
    .local v21, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v21, :cond_1

    .line 1056
    const-string v5, "Launcher.HomeFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App widget info is null. AppWidgetID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 1063
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v26

    .line 1068
    .local v26, spanXY:[I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    .line 1069
    .local v9, cellXY:[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v0, v5, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v27, v0

    .line 1070
    .local v27, touchXY:[I
    const/16 v22, 0x0

    .line 1071
    .local v22, foundCellSpan:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v5, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ltz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v5, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ltz v5, :cond_4

    .line 1072
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v6, v6, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v6, v9, v5

    .line 1073
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v6, v6, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v6, v9, v5

    .line 1074
    const/16 v22, 0x1

    .line 1082
    :cond_2
    :goto_1
    if-nez v22, :cond_6

    .line 1083
    new-instance v12, Lcom/android/launcher2/HomeFragment$DropPos;

    invoke-direct {v12}, Lcom/android/launcher2/HomeFragment$DropPos;-><init>()V

    .line 1084
    .local v12, dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v5, 0x0

    aget v13, v26, v5

    const/4 v5, 0x1

    aget v14, v26, v5

    const/4 v15, 0x0

    move/from16 v10, p4

    invoke-static/range {v9 .. v15}, Lcom/android/launcher2/HomeFragment;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeFragment$DropPos;IIZ)Z

    move-result v22

    .line 1085
    iget v0, v12, Lcom/android/launcher2/HomeFragment$DropPos;->mScreen:I

    move/from16 p4, v0

    .line 1086
    const/4 v5, 0x0

    iget v6, v12, Lcom/android/launcher2/HomeFragment$DropPos;->mCellX:I

    aput v6, v9, v5

    .line 1087
    const/4 v5, 0x1

    iget v6, v12, Lcom/android/launcher2/HomeFragment$DropPos;->mCellY:I

    aput v6, v9, v5

    .line 1088
    iget-boolean v5, v12, Lcom/android/launcher2/HomeFragment$DropPos;->mFoundInCurrentScreen:Z

    if-nez v5, :cond_3

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    .line 1091
    :cond_3
    if-nez v22, :cond_6

    .line 1092
    const/4 v5, -0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    .line 1095
    new-instance v5, Lcom/android/launcher2/HomeFragment$4;

    const-string v6, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v6, v1}, Lcom/android/launcher2/HomeFragment$4;-><init>(Lcom/android/launcher2/HomeFragment;Ljava/lang/String;I)V

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment$4;->start()V

    goto/16 :goto_0

    .line 1075
    .end local v12           #dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    :cond_4
    if-eqz v27, :cond_2

    .line 1077
    const/4 v5, 0x0

    aget v5, v27, v5

    const/4 v6, 0x1

    aget v6, v27, v6

    const/4 v7, 0x0

    aget v7, v26, v7

    const/4 v8, 0x1

    aget v8, v26, v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v25

    .line 1079
    .local v25, result:[I
    if-eqz v25, :cond_5

    const/16 v22, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/16 v22, 0x0

    goto :goto_2

    .line 1108
    .end local v25           #result:[I
    :cond_6
    new-instance v14, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move/from16 v0, p1

    invoke-direct {v14, v5, v0}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    .line 1109
    .local v14, launcherInfo:Lcom/android/launcher2/HomeWidgetItem;
    const/4 v5, 0x0

    aget v5, v26, v5

    iput v5, v14, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1110
    const/4 v5, 0x1

    aget v5, v26, v5

    iput v5, v14, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v5, 0x0

    aget v18, v9, v5

    const/4 v5, 0x1

    aget v19, v9, v5

    const/16 v20, 0x0

    move-wide/from16 v15, p2

    move/from16 v17, p4

    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1115
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    if-nez v5, :cond_0

    .line 1117
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    move/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, v14, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1119
    iget-object v5, v14, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1120
    iget-object v5, v14, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v14}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v23

    .line 1122
    .local v23, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget-object v5, v14, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move-object/from16 v0, v23

    iget v10, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v10}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 1125
    iget-object v5, v14, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v6, Lcom/android/launcher2/HomeFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14, v4}, Lcom/android/launcher2/HomeFragment$5;-><init>(Lcom/android/launcher2/HomeFragment;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHostView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    move/from16 v0, p4

    if-eq v0, v5, :cond_7

    .line 1144
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x1

    move/from16 v0, p4

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher2/Workspace;->snapToPageAfterLayout(II)V

    .line 1147
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/launcher2/CellLayout;

    .line 1148
    .local v24, page:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v5, v5, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_9

    const/16 v28, 0x1

    .line 1150
    .local v28, wasPageEmpty:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v14}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 1153
    if-eqz v28, :cond_8

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v5, v5, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_8

    .line 1154
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    .line 1156
    :cond_8
    iget-object v5, v14, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/HomeFragment;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_0

    .line 1148
    .end local v28           #wasPageEmpty:Z
    :cond_9
    const/16 v28, 0x0

    goto :goto_3
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 29
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 982
    const-string v5, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0, v7}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v25

    .line 986
    .local v25, info:Lcom/android/launcher2/HomeShortcutItem;
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-gez v5, :cond_8

    .line 987
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    .line 988
    .local v9, cellXY:[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v0, v5, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v28, v0

    .line 989
    .local v28, touchXY:[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 991
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    const/16 v22, 0x0

    .line 994
    .local v22, foundCellSpan:Z
    if-ltz p5, :cond_6

    if-ltz p6, :cond_6

    .line 995
    const/4 v5, 0x0

    aput p5, v9, v5

    .line 996
    const/4 v5, 0x1

    aput p6, v9, v5

    .line 997
    const/16 v22, 0x1

    .line 1004
    :cond_2
    :goto_1
    if-nez v22, :cond_4

    .line 1005
    new-instance v12, Lcom/android/launcher2/HomeFragment$DropPos;

    invoke-direct {v12}, Lcom/android/launcher2/HomeFragment$DropPos;-><init>()V

    .line 1006
    .local v12, dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move/from16 v10, p4

    invoke-static/range {v9 .. v15}, Lcom/android/launcher2/HomeFragment;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeFragment$DropPos;IIZ)Z

    move-result v22

    .line 1007
    iget v0, v12, Lcom/android/launcher2/HomeFragment$DropPos;->mScreen:I

    move/from16 p4, v0

    .line 1008
    const/4 v5, 0x0

    iget v6, v12, Lcom/android/launcher2/HomeFragment$DropPos;->mCellX:I

    aput v6, v9, v5

    .line 1009
    const/4 v5, 0x1

    iget v6, v12, Lcom/android/launcher2/HomeFragment$DropPos;->mCellY:I

    aput v6, v9, v5

    .line 1010
    iget-boolean v5, v12, Lcom/android/launcher2/HomeFragment$DropPos;->mFoundInCurrentScreen:Z

    if-nez v5, :cond_3

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    .line 1013
    :cond_3
    if-eqz v22, :cond_0

    .line 1017
    .end local v12           #dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v5, 0x0

    aget v18, v9, v5

    const/4 v5, 0x1

    aget v19, v9, v5

    const/16 v20, 0x0

    move-object/from16 v14, v25

    move-wide/from16 v15, p2

    move/from16 v17, p4

    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1018
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    if-nez v5, :cond_0

    .line 1019
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    move/from16 v0, p4

    if-eq v0, v5, :cond_5

    .line 1020
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x1

    move/from16 v0, p4

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher2/Workspace;->snapToPageAfterLayout(II)V

    .line 1022
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0

    .line 998
    :cond_6
    if-eqz v28, :cond_2

    .line 1000
    const/4 v5, 0x0

    aget v5, v28, v5

    const/4 v6, 0x1

    aget v6, v28, v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v27

    .line 1001
    .local v27, result:[I
    if-eqz v27, :cond_7

    const/16 v22, 0x1

    :goto_2
    goto :goto_1

    :cond_7
    const/16 v22, 0x0

    goto :goto_2

    .line 1026
    .end local v4           #layout:Lcom/android/launcher2/CellLayout;
    .end local v9           #cellXY:[I
    .end local v22           #foundCellSpan:Z
    .end local v27           #result:[I
    .end local v28           #touchXY:[I
    :cond_8
    const/16 v23, 0x0

    .local v23, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move/from16 v0, v23

    if-ge v0, v5, :cond_0

    .line 1027
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v21

    .line 1028
    .local v21, clc:Lcom/android/launcher2/CellLayoutChildren;
    move-object/from16 v0, v21

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->findFolderItem(J)Lcom/android/launcher2/BaseItem;

    move-result-object v26

    .line 1029
    .local v26, item:Lcom/android/launcher2/BaseItem;
    if-eqz v26, :cond_a

    move-object/from16 v0, v26

    instance-of v5, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v5, :cond_a

    move-object/from16 v5, v26

    .line 1030
    check-cast v5, Lcom/android/launcher2/HomeFolderItem;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 1031
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v24

    .line 1032
    .local v24, icon:Landroid/view/View;
    if-eqz v24, :cond_9

    move-object/from16 v5, v24

    .line 1033
    check-cast v5, Lcom/android/launcher2/FolderIconView;

    check-cast v26, Lcom/android/launcher2/HomeFolderItem;

    .end local v26           #item:Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/launcher2/FolderIconView;->setFolderIcon(Lcom/android/launcher2/FolderItem;)Z

    .line 1034
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->invalidate()V

    .line 1036
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/16 v20, 0x0

    move-object/from16 v14, v25

    move-wide/from16 v15, p2

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p5

    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1026
    .end local v24           #icon:Landroid/view/View;
    :cond_a
    add-int/lit8 v23, v23, 0x1

    goto :goto_3
.end method

.method private createWorkspaceChildren()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 782
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    .line 783
    .local v4, screenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 784
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f030045

    iget-object v8, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 787
    .local v0, cell:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 788
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 789
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v3, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 792
    .restart local v3       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v0, v3}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->determineEmptyPageMsgVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setEmptyMessageVisibility(I)V

    .line 783
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 793
    :cond_1
    const/16 v5, 0x8

    goto :goto_1

    .line 796
    .end local v0           #cell:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    .line 797
    .local v1, homeScreenIndex:I
    if-ltz v1, :cond_3

    if-lt v1, v4, :cond_4

    .line 798
    :cond_3
    if-gez v1, :cond_5

    move v1, v6

    .line 799
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 801
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 802
    return-void

    .line 798
    :cond_5
    add-int/lit8 v1, v4, -0x1

    goto :goto_2
.end method

.method public static findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeFragment$DropPos;IIZ)Z
    .locals 10
    .parameter "pos"
    .parameter "screen"
    .parameter "context"
    .parameter "dropPos"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "showFullToast"

    .prologue
    .line 3478
    if-nez p3, :cond_1

    .line 3479
    const/4 v5, 0x0

    .line 3528
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v8, p2

    .line 3481
    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 3483
    .local v7, ws:Lcom/android/launcher2/Workspace;
    const/4 v8, -0x1

    if-ne p1, v8, :cond_2

    .line 3484
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result p1

    .line 3486
    :cond_2
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 3488
    .local v1, count:I
    const/4 v5, 0x0

    .line 3490
    .local v5, rc:Z
    const/4 v6, 0x0

    .line 3492
    .local v6, reachedEnd:Z
    if-eqz p0, :cond_3

    array-length v8, p0

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    .line 3493
    :cond_3
    const/4 v8, 0x2

    new-array p0, v8, [I

    .line 3495
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p3, Lcom/android/launcher2/HomeFragment$DropPos;->mFoundInCurrentScreen:Z

    .line 3496
    move v3, p1

    .line 3497
    .local v3, i:I
    :goto_1
    if-lt v3, v1, :cond_5

    .line 3498
    const/4 v3, 0x0

    .line 3499
    const/4 v6, 0x1

    .line 3501
    :cond_5
    if-eqz v6, :cond_7

    if-lt v3, p1, :cond_7

    .line 3515
    :goto_2
    if-nez v5, :cond_6

    .line 3516
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->newPage(Z)I

    move-result v4

    .line 3517
    .local v4, newPage:I
    const/high16 v8, -0x8000

    if-eq v4, v8, :cond_6

    .line 3518
    invoke-virtual {v7, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3519
    .local v2, currentPage:Lcom/android/launcher2/CellLayout;
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v2, p0, v8, v9}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3520
    const/4 v8, 0x0

    aget v8, p0, v8

    const/4 v9, 0x1

    aget v9, p0, v9

    invoke-virtual {p3, v2, v4, v8, v9}, Lcom/android/launcher2/HomeFragment$DropPos;->assign(Lcom/android/launcher2/CellLayout;III)V

    .line 3521
    const/4 v5, 0x1

    .line 3525
    .end local v2           #currentPage:Lcom/android/launcher2/CellLayout;
    .end local v4           #newPage:I
    :cond_6
    iget-boolean v8, p3, Lcom/android/launcher2/HomeFragment$DropPos;->mFoundInCurrentScreen:Z

    if-nez v8, :cond_0

    if-eqz p6, :cond_0

    .line 3526
    invoke-static {p2}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage(Landroid/content/Context;)V

    goto :goto_0

    .line 3504
    :cond_7
    invoke-virtual {v7, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3505
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_9

    instance-of v8, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v8, :cond_9

    move-object v2, v0

    .line 3506
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3507
    .restart local v2       #currentPage:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2, p0, p4, p5}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3508
    const/4 v8, 0x0

    aget v8, p0, v8

    const/4 v9, 0x1

    aget v9, p0, v9

    invoke-virtual {p3, v2, v3, v8, v9}, Lcom/android/launcher2/HomeFragment$DropPos;->assign(Lcom/android/launcher2/CellLayout;III)V

    .line 3509
    const/4 v5, 0x1

    .line 3510
    if-ne v3, p1, :cond_8

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p3, Lcom/android/launcher2/HomeFragment$DropPos;->mFoundInCurrentScreen:Z

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 3496
    .end local v2           #currentPage:Lcom/android/launcher2/CellLayout;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "activityName"

    .prologue
    .line 2067
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2069
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2071
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 2072
    const-string v6, "com.android.launcher.toolbar_icon"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2073
    .local v1, iconResId:I
    if-eqz v1, :cond_0

    .line 2074
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    .line 2075
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 2087
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v5           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v6

    .line 2078
    :catch_0
    move-exception v0

    .line 2080
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher.HomeFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2087
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2082
    :catch_1
    move-exception v3

    .line 2084
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "Launcher.HomeFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFolderById(J)Lcom/android/launcher2/HomeFolderItem;
    .locals 2
    .parameter "id"

    .prologue
    .line 3329
    sget-object v0, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    return-object v0
.end method

.method private isFavoritesInNormalMode()Z
    .locals 2

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 778
    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider;->isFavoritesInNormalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 1617
    :cond_0
    return-void
.end method

.method private performOnHomePressed()V
    .locals 5

    .prologue
    const v4, 0x7f070057

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 602
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 604
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 609
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getIsDragOccuring()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 616
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_4

    .line 617
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 619
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 620
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 621
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeFragment;->showWorkspace(Z)V

    .line 629
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    .line 630
    iput-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mHomeKeyPress:Z

    .line 631
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspaceClingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setDismissCling_Key(Z)V

    .line 633
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissOrNextWorkspaceCling(Landroid/view/View;)V

    goto :goto_0

    .line 624
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 627
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 1605
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1606
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1608
    return-void
.end method

.method private resetAddInfo()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1336
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 1337
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1338
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1339
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1340
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1341
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedState"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 532
    if-nez p1, :cond_0

    .line 564
    :goto_0
    return-void

    .line 536
    :cond_0
    const-string v6, "launcher.current_screen"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 537
    .local v0, currentScreen:I
    if-le v0, v7, :cond_1

    .line 538
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 541
    :cond_1
    const-string v6, "launcher.add_container"

    invoke-virtual {p1, v6, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 542
    .local v1, pendingAddContainer:J
    const-string v6, "launcher.add_screen"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 544
    .local v3, pendingAddScreen:I
    cmp-long v6, v1, v9

    if-eqz v6, :cond_2

    if-le v3, v7, :cond_2

    .line 545
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide v1, v6, Lcom/android/launcher2/HomeItem;->container:J

    .line 546
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 547
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-string v7, "launcher.add_cell_x"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 548
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-string v7, "launcher.add_cell_y"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 549
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    .line 551
    :cond_2
    const-string v6, "launcher.workspace_folder_bundle"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/HomeFragment;->mFolderBundle:Landroid/os/Bundle;

    .line 552
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mFolderBundle:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 556
    const-string v6, "launcher.workspace_folder_darken_layer_visibility"

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 557
    .local v4, visibility:I
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 559
    .end local v4           #visibility:I
    :cond_3
    const-string v6, "launcher.workspace_was_in_quickview"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 560
    .local v5, wasInQuickView:Z
    if-eqz v5, :cond_4

    .line 561
    invoke-virtual {p0, p1, v8}, Lcom/android/launcher2/HomeFragment;->openQuickViewWorkspace(Landroid/os/Bundle;Z)V

    .line 563
    :cond_4
    iput-boolean v8, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    goto :goto_0
.end method

.method private sendAdvanceMessage(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1165
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1166
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1167
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceSentTime:J

    .line 1169
    return-void
.end method

.method private setOnlyOneVisibleCPMarker(IZ)V
    .locals 5
    .parameter "cpIdx"
    .parameter "isAllUnvisible"

    .prologue
    const/16 v4, 0x8

    .line 2737
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mContextualPageMarker:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 2752
    :cond_0
    return-void

    .line 2739
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mContextualPageMarker:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2740
    .local v1, markerCnt:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2741
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mContextualPageMarker:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2743
    .local v2, vPm:Landroid/view/View;
    if-nez v2, :cond_3

    .line 2740
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2745
    :cond_3
    if-eqz p2, :cond_4

    .line 2746
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2747
    :cond_4
    add-int/lit8 v3, p1, -0x1

    if-ne v0, v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 2748
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2749
    :cond_5
    add-int/lit8 v3, p1, -0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2750
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupHotseatAnimator(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter "v"
    .parameter "isAddListner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local p2, hvl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x2

    .line 2796
    if-nez p3, :cond_0

    .line 2817
    :goto_0
    return-void

    .line 2798
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v5, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2799
    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p3, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2803
    .local v0, a:Landroid/animation/ObjectAnimator;
    if-eqz p4, :cond_1

    .line 2804
    new-instance v1, Lcom/android/launcher2/HomeFragment$11;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/HomeFragment$11;-><init>(Lcom/android/launcher2/HomeFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2815
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2816
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2799
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private setupViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 666
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 667
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Workspace;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 668
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    .line 670
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/QuickViewWorkspace;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    .line 671
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v1, 0x7f070040

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropLayout:Landroid/widget/LinearLayout;

    .line 672
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DeleteDropTarget;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

    .line 675
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragLayer;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 677
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    .line 678
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 680
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeContainer:Landroid/view/View;

    .line 683
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 684
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 700
    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 703
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    .line 705
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditButtonListener:Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditButtonListener:Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeEditBar;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    .line 712
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    .line 713
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 714
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/AllAppsKeyEventListener;

    invoke-direct {v1}, Lcom/android/launcher2/AllAppsKeyEventListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 719
    :cond_2
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_4

    .line 720
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    .line 721
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIconDivider:Landroid/view/View;

    .line 722
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 723
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/AllAppsKeyEventListener;

    invoke-direct {v1}, Lcom/android/launcher2/AllAppsKeyEventListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 727
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIconDivider:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 728
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIconDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 732
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    .line 733
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 734
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/HomeFragment$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeFragment$2;-><init>(Lcom/android/launcher2/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    .line 746
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 747
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 748
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 750
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->createWorkspaceChildren()V

    .line 751
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->isFavoritesInNormalMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mFavoritesModeIsNormal:Z

    .line 753
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_6

    .line 754
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 755
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v0, :cond_7

    .line 756
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 757
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v0, :cond_8

    .line 758
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 759
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    if-eqz v0, :cond_9

    .line 760
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 770
    :cond_9
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_a

    .line 771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mContextualPageMarker:Ljava/util/ArrayList;

    .line 772
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->setupContextualPageMarker()V

    .line 774
    :cond_a
    return-void
.end method

.method public static showOutOfSpaceMessage(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1259
    const v0, 0x7f0e0023

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1260
    return-void
.end method

.method private unbindWorkspaceAndHotseatItems()V
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItems()V

    .line 1627
    :cond_0
    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    .line 2115
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2116
    .local v0, button:Landroid/widget/ImageView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeFragment;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2118
    .local v1, toolbarIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2121
    if-nez v1, :cond_1

    .line 2122
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2128
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_1
    return-object v2

    .line 2124
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2128
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 8
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2093
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2094
    .local v0, button:Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeFragment;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2095
    .local v3, toolbarIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2096
    .local v2, r:Landroid/content/res/Resources;
    const v6, 0x7f0c0031

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2097
    .local v4, w:I
    const v6, 0x7f0c0032

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2100
    .local v1, h:I
    if-nez v3, :cond_0

    .line 2101
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2102
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2103
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2108
    :goto_0
    return-object v5

    .line 2106
    :cond_0
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2107
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2108
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;JI[I[I)V
    .locals 4
    .parameter "info"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    const/4 v3, 0x0

    .line 1440
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 1441
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide p2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 1442
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput p4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput p4, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1443
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-object p6, v1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1444
    if-eqz p5, :cond_0

    .line 1445
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    aget v2, p5, v3

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1446
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1449
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1450
    .local v0, appWidgetId:I
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1451
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/HomeFragment;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V

    .line 1459
    :goto_0
    return-void

    .line 1453
    :cond_1
    const-string v1, "Launcher.HomeFragment"

    const-string v2, "Problem binding widget. This should only happen when installed outside of /system/app."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Not installed with permissions needed for binding widgets"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method addAppWidgetFromPick(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 1345
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1348
    .local v0, appWidgetId:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeFragment;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V

    .line 1349
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V
    .locals 15
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 1352
    iget-object v12, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 1354
    .local v1, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_5

    iget-object v12, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v12, :cond_5

    .line 1356
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v5, intent:Landroid/content/Intent;
    iget-object v12, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1358
    const-string v12, "appWidgetId"

    move/from16 v0, p1

    invoke-virtual {v5, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1359
    if-eqz p2, :cond_0

    .line 1360
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    if-eqz v12, :cond_0

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1361
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    .line 1366
    .local v9, mimeType:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/HomePendingWidget;->configurationData:Landroid/os/Parcelable;

    check-cast v2, Landroid/content/ClipData;

    .line 1367
    .local v2, clipData:Landroid/content/ClipData;
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 1368
    .local v3, clipDesc:Landroid/content/ClipDescription;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v12

    if-ge v4, v12, :cond_0

    .line 1369
    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1370
    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 1371
    .local v7, item:Landroid/content/ClipData$Item;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1372
    .local v10, stringData:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 1373
    .local v11, uriData:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1374
    .local v6, intentData:Landroid/content/Intent;
    const-string v8, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    .line 1376
    .local v8, key:Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 1377
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1389
    .end local v2           #clipData:Landroid/content/ClipData;
    .end local v3           #clipDesc:Landroid/content/ClipDescription;
    .end local v4           #i:I
    .end local v6           #intentData:Landroid/content/Intent;
    .end local v7           #item:Landroid/content/ClipData$Item;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #stringData:Ljava/lang/CharSequence;
    .end local v11           #uriData:Landroid/net/Uri;
    :cond_0
    :goto_1
    const/4 v12, 0x5

    invoke-virtual {p0, v5, v12}, Lcom/android/launcher2/HomeFragment;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1395
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    :goto_2
    return-void

    .line 1378
    .restart local v2       #clipData:Landroid/content/ClipData;
    .restart local v3       #clipDesc:Landroid/content/ClipDescription;
    .restart local v4       #i:I
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #intentData:Landroid/content/Intent;
    .restart local v7       #item:Landroid/content/ClipData$Item;
    .restart local v8       #key:Ljava/lang/String;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v10       #stringData:Ljava/lang/CharSequence;
    .restart local v11       #uriData:Landroid/net/Uri;
    :cond_2
    if-eqz v6, :cond_3

    .line 1379
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1380
    :cond_3
    if-eqz v10, :cond_0

    .line 1381
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_1

    .line 1368
    .end local v6           #intentData:Landroid/content/Intent;
    .end local v7           #item:Landroid/content/ClipData$Item;
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #stringData:Ljava/lang/CharSequence;
    .end local v11           #uriData:Landroid/net/Uri;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1392
    .end local v2           #clipData:Landroid/content/ClipData;
    .end local v3           #clipDesc:Landroid/content/ClipDescription;
    .end local v4           #i:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #mimeType:Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_1

    .line 1393
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, p1

    invoke-direct {p0, v0, v12, v13, v14}, Lcom/android/launcher2/HomeFragment;->completeAddAppWidget(IJI)V

    goto :goto_2
.end method

.method public addPage()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3224
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030045

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3226
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3227
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3228
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 3229
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3235
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_1

    .line 3236
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v4}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3237
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3238
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v3}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 3246
    :goto_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_2

    .line 3247
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v4}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    .line 3250
    :goto_1
    return-void

    .line 3241
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3242
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3243
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    goto :goto_0

    .line 3249
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method addSamsungAppWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;JI[I[I)V
    .locals 6
    .parameter "pending"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    const/4 v5, 0x0

    .line 1489
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 1490
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide p2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 1491
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput p4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput p4, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1492
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-object p6, v1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1493
    if-eqz p5, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    aget v2, p5, v5

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1495
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1499
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungAppWidgetItem;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/HomeFragment;->addSamsungWidget(Lcom/android/launcher2/SamsungAppWidgetItem;JI)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    :goto_0
    return-void

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "Launcher.HomeFragment"

    const-string v2, "Problem binding samsung widget. This should only happen when running in a separate process"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1503
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Widget is not running in the same process"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method addSamsungWidget(Lcom/android/launcher2/SamsungAppWidgetItem;JI)V
    .locals 34
    .parameter "item"
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 1512
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v30

    .line 1515
    .local v30, packageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;)Lcom/android/launcher2/SamsungAppWidgetInfo;

    move-result-object v28

    .line 1519
    .local v28, homeItem:Lcom/android/launcher2/SamsungAppWidgetInfo;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v10

    .line 1521
    .local v10, layout:Lcom/android/launcher2/CellLayout;
    const/4 v4, 0x2

    new-array v9, v4, [I

    fill-array-data v9, :array_0

    .line 1522
    .local v9, spanXY:[I
    const/16 v29, 0x2

    .line 1523
    .local v29, land:I
    const/16 v31, 0x1

    .line 1524
    .local v31, port:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/launcher2/SamsungAppWidgetItem;->getWidth(I)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/launcher2/SamsungAppWidgetItem;->getHeight(I)I

    move-result v6

    const/4 v7, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/SamsungAppWidgetItem;->getWidth(I)I

    move-result v7

    const/4 v8, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SamsungAppWidgetItem;->getHeight(I)I

    move-result v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSamsungWidget(IIII[I)[I

    .line 1530
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    .line 1531
    .local v15, cellXY:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v0, v4, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v33, v0

    .line 1532
    .local v33, touchXY:[I
    const/16 v27, 0x0

    .line 1533
    .local v27, foundCellSpan:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v4, v4, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ltz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v4, v4, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ltz v4, :cond_2

    .line 1534
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v5, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v5, v15, v4

    .line 1535
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v5, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v5, v15, v4

    .line 1536
    const/16 v27, 0x1

    .line 1544
    :cond_0
    :goto_0
    if-nez v27, :cond_4

    .line 1545
    new-instance v18, Lcom/android/launcher2/HomeFragment$DropPos;

    invoke-direct/range {v18 .. v18}, Lcom/android/launcher2/HomeFragment$DropPos;-><init>()V

    .line 1546
    .local v18, dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/4 v4, 0x0

    aget v19, v9, v4

    const/4 v4, 0x1

    aget v20, v9, v4

    const/16 v21, 0x0

    move/from16 v16, p4

    invoke-static/range {v15 .. v21}, Lcom/android/launcher2/HomeFragment;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeFragment$DropPos;IIZ)Z

    move-result v27

    .line 1547
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/HomeFragment$DropPos;->mScreen:I

    move/from16 p4, v0

    .line 1548
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/HomeFragment$DropPos;->mCellX:I

    aput v5, v15, v4

    .line 1549
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/HomeFragment$DropPos;->mCellY:I

    aput v5, v15, v4

    .line 1550
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/android/launcher2/HomeFragment$DropPos;->mFoundInCurrentScreen:Z

    if-nez v4, :cond_1

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    .line 1553
    :cond_1
    if-nez v27, :cond_4

    .line 1583
    .end local v18           #dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    :goto_1
    return-void

    .line 1537
    :cond_2
    if-eqz v33, :cond_0

    .line 1539
    const/4 v4, 0x0

    aget v11, v33, v4

    const/4 v4, 0x1

    aget v12, v33, v4

    const/4 v4, 0x0

    aget v13, v9, v4

    const/4 v4, 0x1

    aget v14, v9, v4

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v32

    .line 1541
    .local v32, result:[I
    if-eqz v32, :cond_3

    const/16 v27, 0x1

    :goto_2
    goto :goto_0

    :cond_3
    const/16 v27, 0x0

    goto :goto_2

    .line 1569
    .end local v32           #result:[I
    :cond_4
    const/4 v4, 0x0

    aget v4, v9, v4

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1570
    const/4 v4, 0x1

    aget v4, v9, v4

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 1572
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/4 v4, 0x0

    aget v24, v15, v4

    const/4 v4, 0x1

    aget v25, v15, v4

    const/16 v26, 0x0

    move-object/from16 v20, v28

    move-wide/from16 v21, p2

    move/from16 v23, p4

    invoke-static/range {v19 .. v26}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1575
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetView:Lcom/android/launcher2/SamsungAppWidgetView;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/launcher2/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 1578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    move/from16 v0, p4

    if-ne v4, v0, :cond_5

    .line 1579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    goto :goto_1

    .line 1581
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v5, 0x1

    move/from16 v0, p4

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher2/Workspace;->snapToPageAfterLayout(II)V

    goto :goto_1

    .line 1521
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .parameter "hostView"
    .parameter "appWidgetInfo"

    .prologue
    .line 1233
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1235
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0           #v:Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1238
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    goto :goto_0
.end method

.method public bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 11
    .parameter "item"

    .prologue
    .line 2344
    const-wide/16 v3, 0x0

    .line 2348
    .local v3, start:J
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2350
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    iget v6, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v7, v5, Lcom/android/launcher2/PagedView;->mCellCountX:I

    if-gt v6, v7, :cond_0

    iget v6, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    iget v7, v5, Lcom/android/launcher2/PagedView;->mCellCountY:I

    if-le v6, v7, :cond_1

    .line 2351
    :cond_0
    const-string v6, "Launcher.HomeFragment"

    const-string v7, "Attempted to bind a widget larger than what will fit. Removing."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2395
    :goto_0
    return-void

    .line 2356
    :cond_1
    iget v0, p1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    .line 2357
    .local v0, appWidgetId:I
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 2358
    .local v1, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v1, :cond_2

    .line 2362
    const-string v6, "Launcher.HomeFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App widget info is null. AppWidgetID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2371
    :cond_2
    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 2376
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-nez v6, :cond_4

    .line 2377
    const-string v6, "Launcher.HomeFragment"

    const-string v7, "mAppWidgetHost is null. Was HomeFragment.onDestroy() called previously?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2380
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v6

    iput-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2382
    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2383
    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2385
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v7, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v2

    .line 2386
    .local v2, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v7, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iget v8, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    iget v9, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    iget v10, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 2389
    .end local v2           #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :cond_5
    invoke-virtual {v5, p1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_0
.end method

.method public bindAppWidget_CP(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3393
    .local p1, homewidgetItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3394
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3395
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    .line 3396
    .local v2, widget:Lcom/android/launcher2/HomeWidgetItem;
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3394
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3399
    :cond_1
    iget-boolean v3, v2, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v3, p2, :cond_0

    .line 3400
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_1

    .line 3403
    .end local v2           #widget:Lcom/android/launcher2/HomeWidgetItem;
    :cond_2
    return-void
.end method

.method public bindFolders(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2239
    .local p1, folders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    sget-object v0, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2240
    sget-object v0, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2241
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->restoreOpenFolder(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2246
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2251
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeContainer:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2255
    :cond_1
    return-void
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2487
    .local p1, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 2488
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    .line 2490
    :cond_0
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2476
    .local p1, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->updateShortcuts(Ljava/util/List;)V

    .line 2479
    :cond_0
    return-void
.end method

.method public bindHotseat(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2261
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v2, :cond_1

    .line 2278
    :cond_0
    return-void

    .line 2264
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 2267
    .local v1, item:Lcom/android/launcher2/HomeItem;
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-gez v2, :cond_2

    .line 2268
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 2274
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    .line 2275
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    .line 2276
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    goto :goto_0

    .line 2270
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 2271
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    goto :goto_1
.end method

.method public bindItems(Ljava/util/List;II)V
    .locals 7
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2207
    .local p1, shortcuts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2208
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    if-nez v2, :cond_0

    .line 2233
    :goto_0
    return-void

    .line 2210
    :cond_0
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    if-nez v3, :cond_1

    .line 2211
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    .line 2213
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_3

    .line 2214
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 2219
    .local v1, item:Lcom/android/launcher2/HomeItem;
    iget-wide v3, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 2213
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2223
    :cond_2
    sget-object v3, Lcom/android/launcher2/HomeFragment$13;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 2227
    :pswitch_0
    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    .line 2231
    .end local v1           #item:Lcom/android/launcher2/HomeItem;
    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 2232
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->invalidatePageData()V

    goto :goto_0

    .line 2223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bindItems_CP(Ljava/util/List;I)V
    .locals 7
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3362
    .local p1, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3363
    .local v4, workspace:Lcom/android/launcher2/Workspace;
    if-nez v4, :cond_1

    .line 3389
    :cond_0
    return-void

    .line 3365
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    .line 3367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 3368
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3369
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    .line 3371
    .local v3, item:Lcom/android/launcher2/HomeItem;
    iget-boolean v5, v3, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v5, :cond_2

    iget v5, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v5, p2, :cond_2

    .line 3373
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3368
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3376
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    iget v6, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v5, v6}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v0

    .line 3377
    .local v0, CPid:I
    const/4 v5, -0x1

    if-le v0, v5, :cond_2

    .line 3378
    sget-object v5, Lcom/android/launcher2/HomeFragment$13;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v6, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 3382
    :pswitch_0
    invoke-virtual {v4, v3}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_1

    .line 3378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bindSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V
    .locals 10
    .parameter "item"

    .prologue
    .line 2404
    const-wide/16 v3, 0x0

    .line 2408
    .local v3, start:J
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2410
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    iget-object v6, p1, Lcom/android/launcher2/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2411
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v2

    .line 2413
    .local v2, packageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/android/launcher2/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const-string v9, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/SamsungAppWidgetItem;

    move-result-object v1

    .line 2416
    .local v1, info:Lcom/android/launcher2/SamsungAppWidgetItem;
    if-nez v1, :cond_0

    .line 2417
    const-string v6, "Launcher.HomeFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find Samsung widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    :goto_0
    return-void

    .line 2421
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v2, v6, v1, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;Lcom/android/launcher2/SamsungAppWidgetInfo;)Lcom/android/launcher2/SamsungAppWidgetInfo;

    .line 2423
    iget-object v6, p1, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetView:Lcom/android/launcher2/SamsungAppWidgetView;

    invoke-virtual {v6, p1}, Lcom/android/launcher2/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 2425
    invoke-virtual {v5, p1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 2427
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    goto :goto_0
.end method

.method public bindSamsungAppWidget_CP(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungAppWidgetInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3407
    .local p1, samsungAppWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SamsungAppWidgetInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3408
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3409
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .line 3410
    .local v2, widget:Lcom/android/launcher2/SamsungAppWidgetInfo;
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3408
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3413
    :cond_1
    iget-boolean v3, v2, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v3, p2, :cond_0

    .line 3414
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->bindSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    goto :goto_1

    .line 3417
    .end local v2           #widget:Lcom/android/launcher2/SamsungAppWidgetInfo;
    :cond_2
    return-void
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 2439
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->bindWidgetsAfterConfigChange()V

    .line 2440
    :cond_0
    return-void
.end method

.method cancelRemovePage()V
    .locals 1

    .prologue
    .line 2993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mIsDeletePopup:Z

    .line 2994
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 2995
    return-void
.end method

.method public closeQuickViewWorkspace(Z)V
    .locals 3
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 2660
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2714
    :cond_0
    :goto_0
    return-void

    .line 2663
    :cond_1
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_2

    .line 2664
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/HomeFragment;->changeTop4Icon(Landroid/view/View;I)V

    .line 2665
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2666
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->close()V

    .line 2667
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    .line 2668
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/HomeFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/HomeFragment$10;-><init>(Lcom/android/launcher2/HomeFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2712
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 2713
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->updateVisiblePages()Z

    goto :goto_0
.end method

.method public closeQuickViewWorkspaceStartAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-wide/16 v7, 0x168

    const/high16 v6, 0x3f80

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2602
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    .line 2607
    .local v1, newWorkspace:I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 2609
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 2612
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 2613
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 2614
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_1

    .line 2615
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2616
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 2617
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2618
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2623
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v2, :cond_2

    .line 2624
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2625
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 2626
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2627
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2630
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2631
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2632
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 2633
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2634
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2638
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 2639
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 2640
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 2641
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 2643
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 2644
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2645
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2646
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2647
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2651
    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher2/DeleteDropTarget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2652
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2654
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 2655
    return-void
.end method

.method closeSystemDialogs()V
    .locals 3

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    .line 1274
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1275
    .local v1, manager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1280
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-static {v0, v1}, Lcom/android/launcher2/MotionDialogOffFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1281
    invoke-static {v0, v1}, Lcom/android/launcher2/MotionDialogOnFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1282
    invoke-static {v0, v1}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1283
    invoke-static {v0, v1}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1285
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1288
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    .line 1289
    return-void
.end method

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
    .line 3019
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 3020
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 3021
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3022
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3024
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 3025
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 3026
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
    .line 3009
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050007

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 3010
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 3011
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3012
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3014
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 3015
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 3016
    return-void
.end method

.method completeAddApplication(Landroid/content/Intent;JIII)V
    .locals 21
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    .line 871
    .local v4, cellXY:[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v20

    .line 874
    .local v20, layout:Lcom/android/launcher2/CellLayout;
    if-ltz p5, :cond_2

    if-ltz p6, :cond_2

    .line 875
    const/4 v5, 0x0

    aput p5, v4, v5

    .line 876
    const/4 v5, 0x1

    aput p6, v4, v5

    .line 891
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0, v8}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v9

    .line 893
    .local v9, info:Lcom/android/launcher2/HomeShortcutItem;
    if-eqz v9, :cond_4

    .line 894
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/high16 v6, 0x1020

    invoke-virtual {v9, v5, v6}, Lcom/android/launcher2/HomeShortcutItem;->setActivity(Landroid/content/ComponentName;I)V

    .line 896
    const-wide/16 v5, -0x1

    iput-wide v5, v9, Lcom/android/launcher2/HomeItem;->container:J

    .line 897
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    move/from16 v0, p4

    if-eq v0, v5, :cond_1

    .line 898
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x1

    move/from16 v0, p4

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher2/Workspace;->snapToPageAfterLayout(II)V

    .line 900
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v5, 0x0

    aget v14, v4, v5

    const/4 v5, 0x1

    aget v15, v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->isWorkspaceLocked()Z

    move-result v16

    move-object/from16 v10, v20

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v17, p5

    move/from16 v18, p6

    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher2/Workspace;->addApplicationShortcut(Lcom/android/launcher2/HomeShortcutItem;Lcom/android/launcher2/CellLayout;JIIIZII)V

    .line 905
    .end local v9           #info:Lcom/android/launcher2/HomeShortcutItem;
    :goto_0
    return-void

    .line 878
    :cond_2
    new-instance v7, Lcom/android/launcher2/HomeFragment$DropPos;

    invoke-direct {v7}, Lcom/android/launcher2/HomeFragment$DropPos;-><init>()V

    .line 879
    .local v7, dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v5, p4

    invoke-static/range {v4 .. v10}, Lcom/android/launcher2/HomeFragment;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeFragment$DropPos;IIZ)Z

    move-result v19

    .line 880
    .local v19, foundCellSpan:Z
    iget v0, v7, Lcom/android/launcher2/HomeFragment$DropPos;->mScreen:I

    move/from16 p4, v0

    .line 881
    const/4 v5, 0x0

    iget v6, v7, Lcom/android/launcher2/HomeFragment$DropPos;->mCellX:I

    aput v6, v4, v5

    .line 882
    const/4 v5, 0x1

    iget v6, v7, Lcom/android/launcher2/HomeFragment$DropPos;->mCellY:I

    aput v6, v4, v5

    .line 883
    iget-boolean v5, v7, Lcom/android/launcher2/HomeFragment$DropPos;->mFoundInCurrentScreen:Z

    if-nez v5, :cond_3

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    .line 886
    :cond_3
    if-nez v19, :cond_0

    goto :goto_0

    .line 903
    .end local v7           #dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    .end local v19           #foundCellSpan:Z
    .restart local v9       #info:Lcom/android/launcher2/HomeShortcutItem;
    :cond_4
    const-string v5, "Launcher.HomeFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)V
    .locals 22
    .parameter "folderItem"
    .parameter "folderTitle"
    .parameter "destinationContainerId"
    .parameter "removeItem"
    .parameter "findNewPosition"

    .prologue
    .line 915
    if-eqz p1, :cond_0

    if-nez p6, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 917
    :cond_0
    new-instance v5, Lcom/android/launcher2/HomeFragment$DropPos;

    invoke-direct {v5}, Lcom/android/launcher2/HomeFragment$DropPos;-><init>()V

    .line 918
    .local v5, dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    const/4 v3, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/HomeFragment;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeFragment$DropPos;IIZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    .line 970
    .end local v5           #dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    :cond_1
    :goto_0
    return-void

    .line 922
    .restart local v5       #dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    :cond_2
    const-wide/16 p3, -0x64

    .line 923
    iget v10, v5, Lcom/android/launcher2/HomeFragment$DropPos;->mScreen:I

    .line 924
    .local v10, screen:I
    iget v11, v5, Lcom/android/launcher2/HomeFragment$DropPos;->mCellX:I

    .line 925
    .local v11, cellX:I
    iget v12, v5, Lcom/android/launcher2/HomeFragment$DropPos;->mCellY:I

    .line 933
    .end local v5           #dropPos:Lcom/android/launcher2/HomeFragment$DropPos;
    .local v12, cellY:I
    :goto_1
    const-wide/16 v2, -0x65

    cmp-long v2, p3, v2

    if-nez v2, :cond_8

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v20

    .line 939
    .local v20, page:Lcom/android/launcher2/CellLayout;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 941
    .local v6, activity:Landroid/app/Activity;
    const/16 v21, 0x0

    .line 942
    .local v21, rc:Z
    if-eqz v20, :cond_6

    .line 944
    new-instance v7, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v7}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 946
    .local v7, newFolder:Lcom/android/launcher2/HomeFolderItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 947
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    .line 949
    const/4 v13, 0x0

    move-wide/from16 v8, p3

    invoke-static/range {v6 .. v13}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v7, v2, v0}, Lcom/android/launcher2/HomeFolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 952
    if-eqz p1, :cond_4

    .line 953
    if-eqz p5, :cond_3

    .line 955
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 957
    :cond_3
    iget-wide v15, v7, Lcom/android/launcher2/BaseItem;->mId:J

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v6

    move-object/from16 v14, p1

    invoke-static/range {v13 .. v19}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 958
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 961
    :cond_4
    const-wide/16 v2, -0x64

    cmp-long v2, p3, v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v10, v2, :cond_5

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x1

    invoke-virtual {v2, v10, v3}, Lcom/android/launcher2/Workspace;->snapToPageAfterLayout(II)V

    .line 964
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 965
    const/16 v21, 0x1

    .line 967
    .end local v7           #newFolder:Lcom/android/launcher2/HomeFolderItem;
    :cond_6
    if-nez v21, :cond_1

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    goto/16 :goto_0

    .line 927
    .end local v6           #activity:Landroid/app/Activity;
    .end local v10           #screen:I
    .end local v11           #cellX:I
    .end local v12           #cellY:I
    .end local v20           #page:Lcom/android/launcher2/CellLayout;
    .end local v21           #rc:Z
    :cond_7
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 p3, v0

    .line 928
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 929
    .restart local v10       #screen:I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 930
    .restart local v11       #cellX:I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .restart local v12       #cellY:I
    goto/16 :goto_1

    .line 937
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/CellLayout;

    .restart local v20       #page:Lcom/android/launcher2/CellLayout;
    goto/16 :goto_2
.end method

.method createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "item"
    .parameter "layoutResId"
    .parameter "parentView"

    .prologue
    .line 825
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 826
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .line 827
    .local v0, folder:Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 828
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 830
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/HomeShortcutItem;I)Landroid/view/View;
    .locals 3
    .parameter "item"
    .parameter "layoutResId"

    .prologue
    .line 841
    const v1, 0x7f030013

    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "info"
    .parameter "layoutResId"
    .parameter "parent"

    .prologue
    .line 855
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 856
    .local v0, favorite:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 857
    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    iget v1, p1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-lez v1, :cond_0

    .line 859
    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 860
    :cond_0
    return-object v0
.end method

.method public deletePage(I)V
    .locals 16
    .parameter "page"

    .prologue
    .line 3254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    .line 3255
    .local v7, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 3256
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 3257
    invoke-virtual {v7, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3259
    .local v10, view:Landroid/view/View;
    instance-of v13, v10, Lcom/android/launcher2/Folder;

    if-eqz v13, :cond_0

    .line 3256
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3267
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    .line 3269
    .local v5, item:Lcom/android/launcher2/HomeItem;
    instance-of v13, v5, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v13, :cond_1

    move-object v11, v5

    .line 3270
    check-cast v11, Lcom/android/launcher2/HomeWidgetItem;

    .line 3271
    .local v11, widgetItem:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 3272
    .local v1, appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v1, :cond_1

    .line 3273
    iget v13, v11, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v1, v13}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 3276
    .end local v1           #appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v11           #widgetItem:Lcom/android/launcher2/HomeWidgetItem;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_1

    .line 3280
    .end local v5           #item:Lcom/android/launcher2/HomeItem;
    .end local v10           #view:Landroid/view/View;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3281
    .local v8, toSave:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    .line 3283
    .local v3, count:I
    sget-boolean v13, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v13, :cond_3

    .line 3284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v13}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v13

    sub-int/2addr v3, v13

    .line 3286
    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    .line 3287
    move/from16 v0, p1

    if-gt v4, v0, :cond_4

    .line 3286
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3291
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    .line 3292
    .local v6, l:Lcom/android/launcher2/CellLayoutChildren;
    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v6, v13, v8}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    goto :goto_3

    .line 3294
    .end local v6           #l:Lcom/android/launcher2/CellLayoutChildren;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 3296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3297
    .local v9, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13, v9}, Lcom/android/launcher2/Workspace;->removeView(Landroid/view/View;)V

    .line 3298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v13

    move/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    .line 3300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v12

    .line 3301
    .local v12, workScreenCount:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    if-gt v12, v13, :cond_6

    .line 3302
    sget-boolean v13, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v13, :cond_7

    .line 3303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int/lit8 v14, v12, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v15}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 3308
    :cond_6
    :goto_4
    sget-boolean v13, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v13, :cond_8

    .line 3309
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v15}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    .line 3313
    :goto_5
    return-void

    .line 3305
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v13, v14}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_4

    .line 3311
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_5
.end method

.method public determineEmptyPageMsgVisibility(I)Z
    .locals 3
    .parameter "pageIndex"

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v0

    .line 3572
    .local v0, allowEmptyMessage:Z
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/launcher2/WorkspacePages;->pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z

    move-result v1

    .line 3574
    .local v1, isPageEmpty:Z
    and-int/2addr v0, v1

    .line 3575
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 3075
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3076
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/launcher2/HomeFragment;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3081
    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 3059
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 3070
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    return-void
.end method

.method public findItemById(J)Lcom/android/launcher2/HomeItem;
    .locals 8
    .parameter "id"

    .prologue
    .line 3540
    const/4 v2, 0x0

    .line 3541
    .local v2, item:Lcom/android/launcher2/HomeItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 3542
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 3543
    .local v4, page:Lcom/android/launcher2/CellLayoutChildren;
    iget-object v6, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    .line 3544
    .local v5, pageItem:Lcom/android/launcher2/BaseItem;
    iget-wide v6, v5, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    move-object v2, v5

    .line 3545
    check-cast v2, Lcom/android/launcher2/HomeItem;

    move-object v3, v2

    .line 3556
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    .end local v4           #page:Lcom/android/launcher2/CellLayoutChildren;
    .end local v5           #pageItem:Lcom/android/launcher2/BaseItem;
    .local v3, item:Lcom/android/launcher2/HomeItem;
    :goto_1
    return-object v3

    .line 3541
    .end local v3           #item:Lcom/android/launcher2/HomeItem;
    .restart local v2       #item:Lcom/android/launcher2/HomeItem;
    .restart local v4       #page:Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3551
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #page:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    .line 3552
    .restart local v5       #pageItem:Lcom/android/launcher2/BaseItem;
    iget-wide v6, v5, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_3

    move-object v2, v5

    .line 3553
    check-cast v2, Lcom/android/launcher2/HomeItem;

    goto :goto_2

    .end local v5           #pageItem:Lcom/android/launcher2/BaseItem;
    :cond_4
    move-object v3, v2

    .line 3556
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    .restart local v3       #item:Lcom/android/launcher2/HomeItem;
    goto :goto_1
.end method

.method public finishBindingItems()V
    .locals 3

    .prologue
    .line 2449
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 2450
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2451
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2453
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mSavedState:Landroid/os/Bundle;

    .line 2456
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    .line 2460
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2461
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeFragment;->completeAdd(Lcom/android/launcher2/HomeFragment$PendingAddArguments;)Z

    .line 2460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2463
    :cond_2
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2465
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2466
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 2468
    :cond_3
    return-void
.end method

.method getAllAppsIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .locals 2
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 1940
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1941
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1947
    :goto_0
    return-object v0

    .line 1944
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1947
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;
    .locals 1

    .prologue
    .line 3424
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    return-object v0
.end method

.method public getContextualPageMarker()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mContextualPageMarker:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getCurrentPageIndexbyContextualPage()I
    .locals 1

    .prologue
    .line 2971
    iget v0, p0, Lcom/android/launcher2/HomeFragment;->mPrevPageIndex:I

    return v0
.end method

.method public getDarkenView()Landroid/view/View;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteDropLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 3205
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getDeleteDropTarget()Lcom/android/launcher2/DeleteDropTarget;
    .locals 1

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher2/DragLayer;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method getEditBar()Lcom/android/launcher2/HomeEditBar;
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    return-object v0
.end method

.method getHomeContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeContainer:Landroid/view/View;

    return-object v0
.end method

.method getHomeDarkenLayer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    return-object v0
.end method

.method getHomeEditTitleBar()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method public getLauncherModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPage(I)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Lcom/android/launcher2/CellLayout;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    .prologue
    .line 3164
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v1

    .line 3165
    .local v1, w:I
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3166
    .local v0, s:I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .parameter "location"

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 3160
    return-void
.end method

.method public getPagesTop()I
    .locals 2

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method getQuickLaunch()Lcom/android/launcher2/QuickLaunch;
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;
    .locals 1

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    return-object v0
.end method

.method getTopBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method public getWorkspaceLoading()Z
    .locals 1

    .prologue
    .line 3354
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    return v0
.end method

.method hideHotseat(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/4 v1, 0x0

    .line 2005
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 2006
    if-eqz p1, :cond_1

    .line 2007
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2012
    :cond_0
    :goto_0
    return-void

    .line 2009
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method public isDeleteWorkScreenPopup()Z
    .locals 1

    .prologue
    .line 3005
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mIsDeletePopup:Z

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .parameter "layout"

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncludeItem(I)Z
    .locals 3
    .parameter "page"

    .prologue
    const/4 v2, 0x0

    .line 3217
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 3218
    .local v0, layout:Lcom/android/launcher2/CellLayoutChildren;
    if-nez v0, :cond_0

    .line 3219
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lockAllApps()V
    .locals 0

    .prologue
    .line 2059
    return-void
.end method

.method public movePage(II)V
    .locals 8
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 3127
    if-ne p1, p2, :cond_0

    .line 3155
    :goto_0
    return-void

    .line 3129
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {p1, p2, v7}, Lcom/android/launcher2/WorkspacePages;->movePage(IILandroid/content/Context;)Z

    .line 3130
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    .line 3132
    .local v1, homeIndex:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3133
    .local v6, toSave:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3135
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 3136
    if-ne v2, p1, :cond_2

    move v5, p2

    .line 3141
    .local v5, newi:I
    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 3143
    .local v3, l:Lcom/android/launcher2/CellLayoutChildren;
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v5}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 3144
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayout;->addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;)V

    .line 3145
    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeFragment;->determineEmptyPageMsgVisibility(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v4, v7}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3146
    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 3148
    if-ltz v1, :cond_1

    if-ne v2, v1, :cond_1

    .line 3149
    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeFragment;->setHomeScreenAt(I)V

    .line 3150
    const/4 v1, -0x1

    .line 3135
    .end local v3           #l:Lcom/android/launcher2/CellLayoutChildren;
    .end local v4           #layout:Lcom/android/launcher2/CellLayout;
    .end local v5           #newi:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3137
    :cond_2
    if-le v2, p1, :cond_3

    if-gt v2, p2, :cond_3

    add-int/lit8 v5, v2, -0x1

    .restart local v5       #newi:I
    goto :goto_2

    .line 3138
    .end local v5           #newi:I
    :cond_3
    if-ge v2, p1, :cond_1

    if-lt v2, p2, :cond_1

    add-int/lit8 v5, v2, 0x1

    .restart local v5       #newi:I
    goto :goto_2

    .line 3145
    .restart local v3       #l:Lcom/android/launcher2/CellLayoutChildren;
    .restart local v4       #layout:Lcom/android/launcher2/CellLayout;
    :cond_4
    const/16 v7, 0x8

    goto :goto_3

    .line 3154
    .end local v3           #l:Lcom/android/launcher2/CellLayoutChildren;
    .end local v4           #layout:Lcom/android/launcher2/CellLayout;
    .end local v5           #newi:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 327
    const-string v1, "Launcher.HomeFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated. savedInstanceState: "

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

    .line 328
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 330
    return-void

    .line 327
    :cond_0
    const-string v0, "not null"

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 430
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    .line 438
    if-ne p2, v6, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 439
    new-instance v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher2/HomeFragment$PendingAddArguments;-><init>(Lcom/android/launcher2/HomeFragment$1;)V

    .line 440
    .local v1, args:Lcom/android/launcher2/HomeFragment$PendingAddArguments;
    iput p1, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->requestCode:I

    .line 441
    iput-object p3, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 442
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v2, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->container:J

    .line 443
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v2, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->screen:I

    .line 444
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v2, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellX:I

    .line 445
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v2, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellY:I

    .line 448
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    sget-object v2, Lcom/android/launcher2/HomeFragment;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v1           #args:Lcom/android/launcher2/HomeFragment$PendingAddArguments;
    :cond_0
    :goto_0
    return-void

    .line 451
    .restart local v1       #args:Lcom/android/launcher2/HomeFragment$PendingAddArguments;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeFragment;->completeAdd(Lcom/android/launcher2/HomeFragment$PendingAddArguments;)Z

    goto :goto_0

    .line 453
    .end local v1           #args:Lcom/android/launcher2/HomeFragment$PendingAddArguments;
    :cond_2
    const/16 v2, 0x9

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    :cond_3
    if-nez p2, :cond_0

    .line 455
    if-eqz p3, :cond_0

    .line 457
    const-string v2, "appWidgetId"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 458
    .local v0, appWidgetId:I
    if-eq v0, v6, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 3048
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 3038
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3040
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3041
    .local v0, rootView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3042
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 3044
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 3052
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 3030
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 3031
    .local v0, v:Landroid/view/View;
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3032
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3033
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 3035
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 568
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 570
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 571
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 572
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 574
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 575
    invoke-virtual {v0, v4}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 594
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspaceClingState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->setDismissCling_Key(Z)V

    .line 596
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->dismissOrNextWorkspaceCling(Landroid/view/View;)V

    .line 598
    :cond_1
    return v4

    .line 577
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto :goto_0

    .line 580
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 586
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_0

    .line 587
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 588
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 590
    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeFragment;->showWorkspace(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1637
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_1

    .line 1638
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1690
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1648
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1652
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1653
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v5, :cond_4

    .line 1654
    move-object v2, p1

    .line 1655
    .local v2, parent:Landroid/view/View;
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-nez v5, :cond_2

    .line 1656
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #parent:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 1658
    .restart local v2       #parent:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1659
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_3

    .line 1660
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1661
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_3

    .line 1662
    new-instance v5, Lcom/android/launcher2/HomeFragment$8;

    invoke-direct {v5, p0}, Lcom/android/launcher2/HomeFragment$8;-><init>(Lcom/android/launcher2/HomeFragment;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v0           #handler:Landroid/os/Handler;
    :cond_3
    move-object v5, v4

    .line 1679
    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v1, v5, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 1680
    .local v1, intent:Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 1681
    .local v3, pos:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1682
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v3, v8

    aget v7, v3, v10

    aget v8, v3, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v3, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1684
    invoke-virtual {p0, v1, v4}, Lcom/android/launcher2/HomeFragment;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1685
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #parent:Landroid/view/View;
    .end local v3           #pos:[I
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    if-ne p1, v5, :cond_5

    .line 1686
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0

    .line 1687
    :cond_5
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 1688
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->onClickEditButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->showAllApps()V

    .line 1708
    return-void
.end method

.method public onClickEditButton(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 1712
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_0

    .line 1713
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 1714
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeFragment;->showWorkspaceEditmode(Z)V

    .line 1716
    :cond_0
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3089
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 3090
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    .line 3091
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 275
    const-string v2, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate. savedInstanceState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 279
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 280
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 281
    new-instance v1, Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    .line 284
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->registerContentObservers()V

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->lockAllApps()V

    .line 292
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 293
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 294
    return-void

    .line 275
    .end local v0           #app:Lcom/android/launcher2/LauncherApplication;
    :cond_0
    const-string v1, "not null"

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 299
    const-string v2, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView. savedInstanceState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 303
    new-instance v1, Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 304
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 311
    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, root:Landroid/view/View;
    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    .line 313
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->setupViews()V

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateGlobalSearchIcon()Z

    .line 317
    iput-object p3, p0, Lcom/android/launcher2/HomeFragment;->mSavedState:Landroid/os/Bundle;

    .line 318
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeFragment;->restoreState(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 322
    return-object v0

    .line 299
    .end local v0           #root:Landroid/view/View;
    :cond_0
    const-string v1, "not null"

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1294
    const-string v1, "Launcher.HomeFragment"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1298
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1299
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1302
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    :goto_0
    iput-object v3, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 1308
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1310
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 1313
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->unbindWorkspaceAndHotseatItems()V

    .line 1315
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1317
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1318
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 1319
    iput-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1320
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1322
    invoke-static {}, Landroid/animation/ValueAnimator;->clearAllAnimations()V

    .line 1323
    return-void

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "Launcher.HomeFragment"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 374
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 375
    return-void
.end method

.method public onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZ)V
    .locals 7
    .parameter "folderChildItem"
    .parameter "title"
    .parameter "destinationContainerId"
    .parameter "removeItem"
    .parameter "findNewPosition"

    .prologue
    .line 3441
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HomeFragment;->completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)V

    .line 3442
    return-void
.end method

.method public onHomePressed()Z
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/HomeFragment$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeFragment$1;-><init>(Lcom/android/launcher2/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 659
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->performOnHomePressed()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .parameter "v"

    .prologue
    .line 1778
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    iget-boolean v10, v10, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v10, :cond_0

    .line 1779
    const/4 v10, 0x0

    .line 1878
    :goto_0
    return v10

    .line 1782
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->isWorkspaceLocked()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1783
    const/4 v10, 0x0

    goto :goto_0

    .line 1786
    :cond_1
    instance-of v10, p1, Lcom/android/launcher2/CellLayout;

    if-nez v10, :cond_2

    .line 1787
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 1791
    .restart local p1
    :cond_2
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v10, :cond_3

    instance-of v10, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_3

    move-object v1, p1

    .line 1793
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1794
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_3

    .line 1796
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v6

    .line 1797
    .local v6, parent:Lcom/android/launcher2/CellLayoutContainer;
    instance-of v10, v6, Lcom/android/launcher2/Hotseat;

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1799
    const-string v10, "Launcher.HomeFragment"

    const-string v11, "Hotseat item long click but we do nothing in normal mode"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    const/4 v10, 0x1

    goto :goto_0

    .line 1806
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v6           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 1807
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 1809
    .local v3, longClickCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v3, :cond_4

    .line 1810
    const/4 v10, 0x1

    goto :goto_0

    .line 1815
    :cond_4
    iget-object v2, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1816
    .local v2, itemUnderLongClick:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->isHotseatLayout(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_5
    const/4 v0, 0x1

    .line 1818
    .local v0, allowLongPress:Z
    :goto_1
    sget-boolean v10, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v10, :cond_6

    .line 1819
    if-eqz v0, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v10, p1}, Lcom/android/launcher2/ContextualPageManager;->isContextualPageHotseat(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v0, 0x1

    .line 1821
    :cond_6
    :goto_2
    if-eqz v0, :cond_9

    .line 1824
    if-nez v2, :cond_c

    iget-boolean v10, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    if-nez v10, :cond_c

    .line 1826
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 1829
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1831
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    .line 1834
    :cond_8
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1835
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->snapToDestination()V

    .line 1878
    :cond_9
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1816
    .end local v0           #allowLongPress:Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 1819
    .restart local v0       #allowLongPress:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 1839
    :cond_c
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v10, :cond_e

    .line 1840
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 1841
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 1844
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1845
    const v8, 0x7f0e00ac

    .line 1849
    .local v8, textId:I
    :goto_4
    new-instance v4, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1850
    .local v4, myToast:Landroid/widget/Toast;
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f030010

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1851
    .local v5, myToastView:Landroid/view/View;
    const v10, 0x7f07003b

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1852
    .local v9, tv:Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1853
    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1855
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c009d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1856
    .local v7, posY:I
    instance-of v10, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_d

    move-object v1, p1

    .line 1857
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1859
    .restart local v1       #cl:Lcom/android/launcher2/CellLayout;
    iget v10, v3, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    if-lt v10, v11, :cond_d

    .line 1860
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c009c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1865
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    :cond_d
    const/16 v10, 0x30

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 1866
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1870
    .end local v4           #myToast:Landroid/widget/Toast;
    .end local v5           #myToastView:Landroid/view/View;
    .end local v7           #posY:I
    .end local v8           #textId:I
    .end local v9           #tv:Landroid/widget/TextView;
    :cond_e
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10, v2}, Lcom/android/launcher2/Workspace;->startDrag(Landroid/view/View;)V

    .line 1872
    iget v10, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iput v10, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    .line 1873
    iget v10, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iput v10, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    .line 1874
    iget v10, v3, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    iput v10, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    goto/16 :goto_3

    .line 1847
    :cond_f
    const v8, 0x7f0e00aa

    .restart local v8       #textId:I
    goto :goto_4
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 1
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    .line 2722
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    .line 2723
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2729
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_1

    .line 2730
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2732
    :cond_1
    return-void

    .line 2726
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeFragment;->changeTop4Icon(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 500
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 502
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 503
    return-void
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 0

    .prologue
    .line 3181
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 0

    .prologue
    .line 3185
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 0

    .prologue
    .line 3195
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 0

    .prologue
    .line 3190
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 473
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 475
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    .line 477
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 480
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateWallpaperOffsets()V

    .line 482
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 485
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 488
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    .line 489
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    const/4 v5, 0x1

    .line 334
    const-string v1, "launcher.current_screen"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 339
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v0, folderBundle:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->saveOpenFolderState(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v1, "launcher.workspace_folder_bundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v1, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    if-eqz v1, :cond_1

    .line 347
    const-string v1, "launcher.add_container"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 348
    const-string v1, "launcher.add_screen"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    const-string v1, "launcher.add_cell_x"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-string v1, "launcher.add_cell_y"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    const-string v1, "launcher.workspace_was_in_quickview"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    const-string v1, "launcher.workspace_quickview_delete_index"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getDeletePageIndex()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 358
    const-string v1, "launcher.workspace_folder_darken_layer_visibility"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    :cond_3
    iput-boolean v5, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    .line 362
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 467
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 469
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 493
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 495
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onStop()V

    .line 496
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1696
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->showWorkspace(Z)V

    .line 1697
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 1162
    return-void
.end method

.method openQuickViewWorkspace(Landroid/os/Bundle;Z)V
    .locals 10
    .parameter "savedState"
    .parameter "drawOpenAnimation"

    .prologue
    const/4 v9, 0x1

    const-wide/16 v7, 0x190

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2501
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    if-nez v3, :cond_1

    .line 2598
    :cond_0
    :goto_0
    return-void

    .line 2505
    :cond_1
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 2509
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 2518
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isTransitioningToShowAllApps()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2521
    if-eqz p2, :cond_3

    .line 2522
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->drawOpenAnimation()V

    .line 2524
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 2525
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    new-instance v2, Lcom/android/launcher2/HomeFragment$9;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/HomeFragment$9;-><init>(Lcom/android/launcher2/HomeFragment;Lcom/android/launcher2/AnimationLayer;)V

    .line 2555
    .local v2, listener:Landroid/animation/AnimatorListenerAdapter;
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_4

    .line 2556
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2557
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2561
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v3, :cond_5

    .line 2562
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2563
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2566
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2567
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2568
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2572
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 2573
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2574
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2578
    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2579
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2582
    :cond_8
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher2/DeleteDropTarget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2584
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v9}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    .line 2585
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v9}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    .line 2587
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2590
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 2591
    if-eqz p1, :cond_9

    .line 2592
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const-string v4, "launcher.workspace_quickview_delete_index"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/QuickViewWorkspace;->setDeletePageIndex(I)V

    .line 2594
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 2595
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->open()V

    .line 2597
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    goto/16 :goto_0
.end method

.method processItemDropToNewFolder(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "componentName"

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 1424
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-wide/16 v2, -0x64

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 1425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1426
    .local v0, createItemIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1427
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeFragment;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1428
    return-void
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1464
    .local v0, applicationName:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1466
    .local v3, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1467
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1468
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1470
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1472
    const-string v4, "android.intent.extra.TITLE"

    const v5, 0x7f0e002a

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1473
    const/4 v4, 0x6

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/HomeFragment;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1477
    .end local v1           #mainIntent:Landroid/content/Intent;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1475
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher2/HomeFragment;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V
    .locals 3
    .parameter "componentName"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 1408
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide p2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 1409
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput p4, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1410
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-object p6, v1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1412
    if-eqz p5, :cond_0

    .line 1413
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1414
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1417
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1418
    .local v0, createShortcutIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1419
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->processShortcut(Landroid/content/Intent;)V

    .line 1420
    return-void
.end method

.method public removeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 1250
    iget-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1252
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/HomeFolderItem;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 1586
    sget-object v0, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    return-void
.end method

.method removePage()V
    .locals 1

    .prologue
    .line 2988
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mIsDeletePopup:Z

    .line 2989
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen()V

    .line 2990
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .parameter "hostView"

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 1247
    :cond_0
    return-void
.end method

.method public restoreOpenFolder(Landroid/os/Bundle;)Z
    .locals 12
    .parameter "bundle"

    .prologue
    const/4 v8, 0x0

    .line 2309
    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v9, :cond_1

    .line 2333
    :cond_0
    :goto_0
    return v8

    .line 2312
    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2313
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 2316
    const-string v9, "launcher.workspace_open_folder_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2317
    .local v3, openFolderId:J
    iget-object v9, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v3, v4}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v2

    .line 2318
    .local v2, openFolder:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v2, :cond_0

    .line 2321
    iget-object v9, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v2}, Lcom/android/launcher2/Workspace;->restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2322
    iget-object v9, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 2323
    .local v1, folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_0

    .line 2324
    const-string v8, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2325
    .local v0, editText:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2326
    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2327
    .local v6, selStart:I
    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2328
    .local v5, selEnd:I
    invoke-virtual {v1, v0, v6, v5}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    .line 2330
    .end local v5           #selEnd:I
    .end local v6           #selStart:I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public saveCurrentPageOrder()V
    .locals 0

    .prologue
    .line 3176
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->saveScreenInfo()V

    .line 3177
    return-void
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 2289
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    .line 2305
    :cond_0
    :goto_0
    return v2

    .line 2292
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2293
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 2296
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2297
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v1

    .line 2298
    .local v1, text:Landroid/widget/EditText;
    const-string v2, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2301
    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2304
    .end local v1           #text:Landroid/widget/EditText;
    :cond_2
    const-string v2, "launcher.workspace_open_folder_id"

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2305
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveScreenInfo()V
    .locals 3

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2980
    :goto_0
    return-void

    .line 2976
    :cond_0
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_1

    .line 2977
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v2}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_0

    .line 2979
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setContextualPageManager(Lcom/android/launcher2/ContextualPageManager;)V
    .locals 0
    .parameter "cpManager"

    .prologue
    .line 3428
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    .line 3429
    return-void
.end method

.method public setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 3436
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    .line 3437
    return-void
.end method

.method public setDarkenViewAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3318
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    .line 3320
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 3321
    return-void
.end method

.method public setDarkenViewIfneed(Z)V
    .locals 2
    .parameter "isDark"

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2756
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    if-eqz p1, :cond_1

    sget v0, Lcom/android/launcher2/ContextualPageManager;->CP_DARKEN_AMOUNT:F

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2757
    :cond_0
    return-void

    .line 2756
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDraggedItemInit()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2195
    iput v0, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    .line 2196
    iput v0, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    .line 2197
    iput v0, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    .line 2198
    return-void
.end method

.method public setHomeScreenAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2984
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 2985
    return-void
.end method

.method public setHotseat(Lcom/android/launcher2/Hotseat;)V
    .locals 1
    .parameter "hotSeat"

    .prologue
    .line 1913
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 1914
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 1915
    return-void
.end method

.method public setQuickLaunch(Lcom/android/launcher2/QuickLaunch;)V
    .locals 1
    .parameter "quickLaunch"

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    .line 1904
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickLaunch;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 1905
    return-void
.end method

.method public setQuickLaunchCamera(Lcom/android/launcher2/QuickLaunch;)V
    .locals 1
    .parameter "quickLaunch"

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    .line 1909
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickLaunch;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 1910
    return-void
.end method

.method public setWorkspaceLoading()V
    .locals 1

    .prologue
    .line 3350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    .line 3351
    return-void
.end method

.method public setupContextualPageMarker()V
    .locals 4

    .prologue
    .line 2760
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mContextualPageMarker:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2789
    :cond_0
    return-void

    .line 2762
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mContextualPageMarker:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2763
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    .line 2765
    const/4 v1, 0x0

    .line 2766
    .local v1, vPm:Landroid/widget/ImageView;
    packed-switch v0, :pswitch_data_0

    .line 2785
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 2786
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mContextualPageMarker:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2763
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2768
    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #vPm:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 2769
    .restart local v1       #vPm:Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2772
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v3, 0x7f070023

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #vPm:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 2773
    .restart local v1       #vPm:Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2776
    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #vPm:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 2777
    .restart local v1       #vPm:Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2780
    :pswitch_3
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v3, 0x7f070025

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #vPm:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 2781
    .restart local v1       #vPm:Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2766
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method showAllApps()V
    .locals 1

    .prologue
    .line 2015
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 2016
    :cond_0
    return-void
.end method

.method public showDeleteWorkScreen()V
    .locals 1

    .prologue
    .line 2999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mIsDeletePopup:Z

    .line 3000
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    .line 3001
    return-void
.end method

.method public showFirstRunWorkspaceCling()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2493
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 2494
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    const-string v1, "cling.workspace.dismissed"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2495
    const v2, 0x7f070044

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;

    .line 2497
    :cond_0
    return-void
.end method

.method showHotseat(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/high16 v1, 0x3f80

    .line 1992
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 1993
    if-eqz p1, :cond_1

    .line 1994
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1999
    :cond_0
    :goto_0
    return-void

    .line 1996
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method showOutOfSpaceMessage()V
    .locals 1

    .prologue
    .line 1255
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage(Landroid/content/Context;)V

    .line 1256
    return-void
.end method

.method showWorkspace(Z)V
    .locals 5
    .parameter "animated"

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1966
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1968
    .local v1, stagger:I
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 1971
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 1974
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1976
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->closeQuickViewWorkspace(Z)V

    .line 1977
    return-void
.end method

.method showWorkspaceEditmode(Z)V
    .locals 5
    .parameter "animated"

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1982
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1984
    .local v1, stagger:I
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 1985
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 1986
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1327
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    .line 1328
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1329
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const v3, 0x7f0e0003

    const/4 v2, 0x0

    .line 1765
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1774
    :goto_0
    return-void

    .line 1766
    :catch_0
    move-exception v0

    .line 1767
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1768
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1769
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1770
    const-string v1, "Launcher.HomeFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .parameter "intent"
    .parameter "tag"

    .prologue
    const v3, 0x7f0e0003

    const/4 v1, 0x0

    .line 1746
    const/high16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1748
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1749
    const/4 v1, 0x1

    .line 1760
    :goto_0
    return v1

    .line 1750
    :catch_0
    move-exception v0

    .line 1751
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1752
    const-string v2, "Launcher.HomeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1753
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1754
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1755
    const-string v2, "Launcher.HomeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "componentName"

    .prologue
    .line 1719
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1720
    .local v1, packageName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1722
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1723
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 1724
    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/AppItem;)V
    .locals 6
    .parameter "app"

    .prologue
    .line 1727
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1728
    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v4, :cond_1

    .line 1731
    const v2, 0x7f0e0070

    .line 1732
    .local v2, messageId:I
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1743
    .end local v2           #messageId:I
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1735
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1736
    .local v0, className:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v5, "package"

    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1738
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1740
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2153
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2155
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    if-nez v5, :cond_1

    .line 2192
    :cond_0
    :goto_0
    return-void

    .line 2160
    :cond_1
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->abortConfigChanges()V

    .line 2162
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->isFavoritesInNormalMode()Z

    move-result v1

    .line 2163
    .local v1, currentFavoritesModeIsNormal:Z
    iget-boolean v6, p0, Lcom/android/launcher2/HomeFragment;->mFavoritesModeIsNormal:Z

    if-eq v1, v6, :cond_7

    .line 2164
    iput-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mFavoritesModeIsNormal:Z

    .line 2165
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 2166
    .local v2, folder:Lcom/android/launcher2/Folder;
    if-eqz v2, :cond_3

    .line 2167
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2168
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 2169
    :cond_2
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2171
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeFragment;->closeQuickViewWorkspace(Z)V

    .line 2172
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 2173
    iput-boolean v7, v5, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 2174
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->createWorkspaceChildren()V

    .line 2183
    .end local v2           #folder:Lcom/android/launcher2/Folder;
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v6, :cond_5

    .line 2184
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 2186
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v6, :cond_6

    .line 2187
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    .line 2189
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v6, :cond_0

    .line 2190
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    goto :goto_0

    .line 2176
    :cond_7
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 2177
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 2179
    invoke-virtual {v5, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 2180
    .local v4, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 2177
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method startWallpaper(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 1590
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->showWorkspace(Z)V

    .line 1591
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1593
    .local v1, pickWallpaper:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "sec.android.launcher2.intent.action.CHOOSER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1594
    .local v0, chooser:Landroid/content/Intent;
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1595
    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1597
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1598
    return-void
.end method

.method unlockAllApps()V
    .locals 0

    .prologue
    .line 2063
    return-void
.end method

.method public updateGlobalSearchIcon()Z
    .locals 4

    .prologue
    .line 3094
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 3096
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 3097
    .local v0, activityName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getTopBar()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3098
    const v2, 0x7f07004c

    const v3, 0x7f020053

    invoke-direct {p0, v2, v0, v3}, Lcom/android/launcher2/HomeFragment;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3103
    const/4 v2, 0x1

    .line 3106
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateItems_CP(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3420
    .local p1, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    .line 3421
    return-void
.end method

.method protected updateRunning()V
    .locals 11

    .prologue
    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1172
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 1173
    .local v0, autoAdvanceRunning:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 1174
    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceRunning:Z

    .line 1175
    if-eqz v0, :cond_3

    .line 1176
    iget-wide v3, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1177
    .local v1, delay:J
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/HomeFragment;->sendAdvanceMessage(J)V

    .line 1187
    .end local v1           #delay:J
    :cond_0
    :goto_2
    return-void

    .end local v0           #autoAdvanceRunning:Z
    :cond_1
    move v0, v4

    .line 1172
    goto :goto_0

    .line 1176
    .restart local v0       #autoAdvanceRunning:Z
    :cond_2
    iget-wide v1, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 1179
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1180
    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long v7, v1, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceTimeLeft:J

    .line 1183
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1184
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method public updateWallpaperOffsets()V
    .locals 1

    .prologue
    .line 3325
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 3326
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/high16 v2, 0x10

    .line 1956
    if-eqz p1, :cond_1

    move v1, v2

    .line 1957
    .local v1, wpflags:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 1959
    .local v0, curflags:I
    if-eq v1, v0, :cond_0

    .line 1960
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1962
    :cond_0
    return-void

    .line 1956
    .end local v0           #curflags:I
    .end local v1           #wpflags:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wallpaperHack()V
    .locals 2

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3213
    return-void
.end method
