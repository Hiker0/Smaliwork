.class public final Lcom/android/launcher2/MenuAppsGrid;
.super Lcom/android/launcher2/SmoothPagedView;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/MenuFragment$AppModelNotifications;
.implements Lcom/android/launcher2/MenuFragment$AppBadgeUpdated;
.implements Lcom/android/launcher2/Folder$FolderNameChangeListener;
.implements Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsGrid$9;,
        Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;,
        Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;,
        Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;,
        Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;,
        Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;,
        Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;,
        Lcom/android/launcher2/MenuAppsGrid$StateUninstall;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;,
        Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;,
        Lcom/android/launcher2/MenuAppsGrid$StateEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateNormal;,
        Lcom/android/launcher2/MenuAppsGrid$StateObj;,
        Lcom/android/launcher2/MenuAppsGrid$State;,
        Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;
    }
.end annotation


# static fields
.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "openFolderId"

.field private static final PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder; = null

.field private static final PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder; = null

.field private static final PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder; = null

.field private static final PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder; = null

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "pendingFolderEditText"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "pending_folder_edit_text_selection_start"

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuAppsGrid"

.field private static final TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_SCALE_IN:F = 1.0f

.field private static final TITLE_BAR_SCALE_OUT:F = 0.9f

.field private static final TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder; = null

.field private static final TRANSITION_MAX_ROTATION:F = 16.0f

.field private static final TRANSITION_PIVOT:F = 0.5f

.field static final sPanelDrawer:Lcom/android/launcher2/PanelDrawer;


# instance fields
.field private mCurrentTitleBar:Landroid/view/View;

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDownloadedTitleBar:Landroid/view/ViewGroup;

.field private mDownloadedTitleBarStub:Landroid/view/ViewStub;

.field private mDragInProgress:Z

.field private mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

.field private mEditTitleBar:Landroid/view/ViewGroup;

.field private mEnterEditModeAnimator:Landroid/animation/Animator;

.field private mExitEditModeAnimator:Landroid/animation/Animator;

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mFolderLocation:[I

.field private mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

.field private mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

.field private mNormalTitleBar:Landroid/view/ViewGroup;

.field private mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mPendingAppModelUpdated:Z

.field private mPendingFolderBundle:Landroid/os/Bundle;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRecycledViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTitleBar:Landroid/view/ViewGroup;

.field private mSelectedTitleBarStub:Landroid/view/ViewStub;

.field private mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

.field private mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

.field private mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

.field private mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

.field private mTabHost:Lcom/android/launcher2/MenuTabHost;

.field private mUninstallTitleBar:Landroid/view/View;

.field private mViewType:Lcom/android/launcher2/MenuFragment$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 98
    new-instance v0, Lcom/android/launcher2/PanelDrawer;

    invoke-direct {v0}, Lcom/android/launcher2/PanelDrawer;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    .line 915
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v5, [F

    aput v6, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    .line 916
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v5, [F

    const v2, 0x3f666666

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    .line 917
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v5, [F

    aput v6, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    .line 918
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v5, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    .line 2310
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    .line 2311
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    .line 2312
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    .line 2313
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    .line 2314
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    .line 2315
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    return-void

    .line 2310
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 2311
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2312
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 2313
    :array_3
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2314
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2315
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    .line 111
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 227
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    .line 364
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$3;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    .line 473
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    .line 621
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$4;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 988
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateNormal;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 990
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 992
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 994
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 996
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 998
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    .line 1000
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    .line 1002
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    .line 1004
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1005
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    .line 2451
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    .line 122
    const-string v1, "Launcher.MenuAppsGrid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 123
    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    .line 125
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 127
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->MenuAppsGrid:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setSaveEnabled(Z)V

    .line 134
    const v1, 0x7f05000f

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;

    .line 135
    const v1, 0x7f050010

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/MenuAppsGrid;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$3200()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/ItemViewBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mUninstallTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->buildAndStartAnimatorSet(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/MenuAppsGrid;->animateSelectedToFolder(Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/launcher2/MenuAppsGrid;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuFragment$ViewType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/launcher2/MenuAppsGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->isConfirmDialogOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method private addAppItem(Lcom/android/launcher2/AppItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageForItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v0

    .line 579
    .local v0, page:Lcom/android/launcher2/CellLayoutMenu;
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 580
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 581
    :cond_0
    return-void
.end method

.method private animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 9
    .parameter
    .parameter "titleBar"
    .parameter "immediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v2, 0x3f80

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 2332
    if-eqz p3, :cond_2

    .line 2333
    if-eqz p2, :cond_1

    .line 2334
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v1, :cond_0

    .line 2335
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    .line 2336
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    .line 2338
    :cond_0
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2339
    invoke-virtual {p2, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 2340
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2364
    :cond_1
    :goto_0
    return-void

    .line 2345
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v1, :cond_3

    .line 2346
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2347
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2348
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v7

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2352
    :cond_3
    if-eqz p2, :cond_1

    .line 2353
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2355
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    .line 2358
    .local v0, titleBarHeight:F
    new-array v1, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    neg-float v4, v0

    aput v4, v3, v5

    aput v8, v3, v7

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v7

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2362
    const/4 v1, 0x0

    invoke-virtual {p2, v6, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 12
    .parameter
    .parameter "titleBar"
    .parameter "immediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v11, 0x0

    const v6, 0x3f666666

    const/4 v10, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 2371
    if-eqz p3, :cond_2

    .line 2372
    if-eqz p2, :cond_0

    .line 2373
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v5, :cond_1

    .line 2374
    invoke-virtual {p2, v6}, Landroid/view/View;->setScaleX(F)V

    .line 2375
    invoke-virtual {p2, v6}, Landroid/view/View;->setScaleY(F)V

    .line 2379
    :goto_0
    const/16 v5, 0x8

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2433
    :cond_0
    :goto_1
    return-void

    .line 2377
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 2384
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v5, :cond_4

    .line 2385
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v7, v6, v10

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v7, v6, v9

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2390
    .local v0, a:Landroid/animation/Animator;
    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$6;

    invoke-direct {v5, p0, p2}, Lcom/android/launcher2/MenuAppsGrid$6;-><init>(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2398
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2399
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2404
    const-string v5, "Launcher.MenuAppsGrid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current page is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 2406
    .local v2, page:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2407
    new-array v1, v8, [I

    .line 2408
    .local v1, location:[I
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2409
    aget v3, v1, v9

    .line 2410
    .local v3, pageY:I
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 2411
    aget v4, v1, v9

    .line 2412
    .local v4, titleBarY:I
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    sub-int v6, v3, v4

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 2413
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 2415
    .end local v1           #location:[I
    .end local v3           #pageY:I
    .end local v4           #titleBarY:I
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8, v11}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 2416
    .end local v0           #a:Landroid/animation/Animator;
    .end local v2           #page:Landroid/view/View;
    :cond_4
    if-eqz p2, :cond_0

    .line 2417
    invoke-virtual {p2, v8, v11}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2418
    new-array v5, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v10

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v6, v5, v9

    invoke-static {p2, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2422
    .restart local v0       #a:Landroid/animation/Animator;
    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$7;

    invoke-direct {v5, p0, p2}, Lcom/android/launcher2/MenuAppsGrid$7;-><init>(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2430
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2431
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private animatePageZoomOut(Ljava/util/List;Z)V
    .locals 3
    .parameter
    .parameter "immediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2441
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p2, :cond_0

    .line 2442
    const v0, 0x3f666666

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPageZoom(F)V

    .line 2443
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPageBackgroundAlpha(F)V

    .line 2449
    :goto_0
    return-void

    .line 2445
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private animateSelectedToFolder(Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V
    .locals 11
    .parameter
    .parameter "folderItem"
    .parameter
    .parameter "pageIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher2/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v5, 0x0

    .line 198
    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    .end local p2
    :goto_0
    return-void

    .line 201
    .restart local p2
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 202
    .local v10, page:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    check-cast p2, Lcom/android/launcher2/BaseItem;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, folderView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 206
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 208
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v8

    .line 210
    check-cast v4, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 212
    .local v2, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v8, v2}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 214
    .local v3, from:[I
    const/4 v4, 0x0

    const/16 v6, 0x208

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer;->animateIcon(Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    .line 215
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 217
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v3           #from:[I
    .end local v8           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 219
    new-instance v4, Lcom/android/launcher2/MenuAppsGrid$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuAppsGrid$2;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/launcher2/MenuAppsGrid;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private buildAndStartAnimatorSet(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2188
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2189
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2190
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2191
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$5;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2202
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2203
    return-void
.end method

.method private changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter "titleBar"
    .parameter "immediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2319
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 2323
    :goto_0
    return-void

    .line 2320
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentTitleBar:Landroid/view/View;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/launcher2/MenuAppsGrid;->animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 2321
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/MenuAppsGrid;->animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 2322
    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method private createPage()Lcom/android/launcher2/CellLayoutMenu;
    .locals 5

    .prologue
    .line 610
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 612
    .local v0, cell:Lcom/android/launcher2/CellLayoutMenu;
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    .line 613
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->addView(Landroid/view/View;)V

    .line 614
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayoutMenu;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 616
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v2}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 617
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    return-object v0
.end method

.method private getConstructedViews()Ljava/util/List;
    .locals 7
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
    .line 557
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v5, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 560
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 561
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 562
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 563
    .local v3, l:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 564
    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 560
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    .end local v1           #i:I
    .end local v3           #l:Lcom/android/launcher2/CellLayoutChildren;
    .end local v4           #layout:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-object v5
.end method

.method private getOrCreatePageForItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/CellLayoutMenu;
    .locals 5
    .parameter "item"

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v2

    .line 585
    .local v2, pageCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 586
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 587
    .local v3, targetPage:I
    move v0, v2

    .local v0, i:I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutMenu;

    .line 594
    .end local v0           #i:I
    .end local v3           #targetPage:I
    :goto_1
    return-object v4

    .line 593
    :cond_1
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    .line 594
    .local v1, lastPage:Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v1           #lastPage:Lcom/android/launcher2/CellLayoutMenu;
    :goto_2
    move-object v4, v1

    goto :goto_1

    .restart local v1       #lastPage:Lcom/android/launcher2/CellLayoutMenu;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    goto :goto_2
.end method

.method private isConfirmDialogOpen()Z
    .locals 2

    .prologue
    .line 2741
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2742
    .local v0, fragManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

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

.method private openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    .line 2676
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v6, :cond_1

    .line 2691
    :cond_0
    :goto_0
    return-void

    .line 2680
    :cond_1
    const-string v6, "openFolderId"

    const-wide/16 v7, -0x1

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2681
    .local v2, openFolderId:J
    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6, v2, v3}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    .line 2682
    .local v1, item:Lcom/android/launcher2/AppItem;
    if-eqz v1, :cond_0

    instance-of v6, v1, Lcom/android/launcher2/FolderItem;

    if-eqz v6, :cond_0

    .line 2683
    const-string v6, "pendingFolderEditText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2684
    .local v0, editText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2685
    const-string v6, "pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2686
    .local v5, selStart:I
    const-string v6, "pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2688
    .local v4, selEnd:I
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6, v0, v5, v4}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setDragInProgress(Z)V
    .locals 1
    .parameter "dragInProgress"

    .prologue
    .line 2862
    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    .line 2863
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    if-eqz v0, :cond_0

    .line 2864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 2865
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 2867
    :cond_0
    return-void
.end method

.method private showEditBar(ZZZ)V
    .locals 7
    .parameter "show_folder"
    .parameter "isSystemApp"
    .parameter "isFolder"

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    if-eqz v0, :cond_1

    .line 2468
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2469
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2471
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2472
    .local v2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentTitleBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 2473
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v5

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/MenuEditBar;->show(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;ZZZZ)V

    .line 2474
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->buildAndStartAnimatorSet(Ljava/util/List;)V

    .line 2476
    .end local v2           #animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    :cond_1
    return-void
.end method

.method private updateGridSize(III)V
    .locals 15
    .parameter "marginTop"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 2902
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 2903
    .local v6, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v5

    .line 2905
    .local v5, childCount:I
    const v13, 0x7f0f0019

    sget-object v14, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v6, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2907
    .local v1, aivTextView:Landroid/content/res/TypedArray;
    const v13, 0x7f0f0019

    sget-object v14, Landroid/R$styleable;->View:[I

    invoke-virtual {v6, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2910
    .local v2, aivView:Landroid/content/res/TypedArray;
    const v13, 0x7f0f001a

    sget-object v14, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v6, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2912
    .local v7, fivTextView:Landroid/content/res/TypedArray;
    const v13, 0x7f0f001a

    sget-object v14, Landroid/R$styleable;->View:[I

    invoke-virtual {v6, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2916
    .local v8, fivView:Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_3

    .line 2917
    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2918
    .local v4, child:Landroid/view/View;
    instance-of v13, v4, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v13, :cond_2

    move-object v3, v4

    .line 2919
    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    .line 2920
    .local v3, cellMenu:Lcom/android/launcher2/CellLayoutMenu;
    iget v13, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v14, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {v3, v13, v14}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    .line 2921
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayoutMenu;->setCellWidth(I)V

    .line 2922
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayoutMenu;->setCellHeight(I)V

    .line 2923
    iget v13, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    invoke-virtual {v3, v13}, Lcom/android/launcher2/CellLayoutMenu;->setGapX(I)V

    .line 2924
    iget v13, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    invoke-virtual {v3, v13}, Lcom/android/launcher2/CellLayoutMenu;->setGapY(I)V

    .line 2925
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->refreshCellDimension()V

    .line 2927
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 2928
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p1

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2929
    invoke-virtual {v3, v12}, Lcom/android/launcher2/CellLayoutMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2931
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->getPageChildCount()I

    move-result v13

    if-ge v11, v13, :cond_2

    .line 2932
    invoke-virtual {v3, v11}, Lcom/android/launcher2/CellLayoutMenu;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v9

    .line 2933
    .local v9, grandChild:Landroid/view/View;
    instance-of v13, v9, Lcom/android/launcher2/FolderIconView;

    if-eqz v13, :cond_1

    .line 2934
    invoke-static {v8, v9}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 2935
    check-cast v9, Landroid/widget/TextView;

    .end local v9           #grandChild:Landroid/view/View;
    invoke-static {v7, v9}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 2931
    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2936
    .restart local v9       #grandChild:Landroid/view/View;
    :cond_1
    instance-of v13, v9, Lcom/android/launcher2/AppIconView;

    if-eqz v13, :cond_0

    .line 2937
    invoke-static {v2, v9}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 2938
    check-cast v9, Landroid/widget/TextView;

    .end local v9           #grandChild:Landroid/view/View;
    invoke-static {v1, v9}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    goto :goto_2

    .line 2916
    .end local v3           #cellMenu:Lcom/android/launcher2/CellLayoutMenu;
    .end local v11           #j:I
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2943
    .end local v4           #child:Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2944
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2946
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2947
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2948
    return-void
.end method

.method private updatePageLayout(I)V
    .locals 3
    .parameter "oldCountX"

    .prologue
    .line 2887
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v1

    .line 2888
    .local v1, pageCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2889
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMenu;->updateViewToCellLayout()V

    .line 2888
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2892
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->updateQuickViewMainMenu()V

    .line 2893
    return-void
.end method


# virtual methods
.method protected allowCustomOrdering()Z
    .locals 2

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    sget-object v1, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animateNormalTitleBarVisibility(Z)V
    .locals 6
    .parameter "visible"

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 155
    if-eqz p1, :cond_2

    .line 156
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 158
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x168

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 167
    .local v0, a:Landroid/view/ViewPropertyAnimator;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    iget-object v1, v2, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 168
    .local v1, l:Landroid/animation/AnimatorListenerAdapter;
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$1;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/MenuAppsGrid$1;-><init>(Lcom/android/launcher2/MenuAppsGrid;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 180
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 182
    .end local v0           #a:Landroid/view/ViewPropertyAnimator;
    .end local v1           #l:Landroid/animation/AnimatorListenerAdapter;
    :cond_1
    return-void

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .restart local v0       #a:Landroid/view/ViewPropertyAnimator;
    goto :goto_0
.end method

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2587
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    .line 2588
    return-void
.end method

.method public appModelLoaded()V
    .locals 0

    .prologue
    .line 2495
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 2496
    return-void
.end method

.method public appModelUpdated()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2500
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2501
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    .line 2505
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-eqz v3, :cond_1

    .line 2506
    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 2561
    :cond_0
    :goto_0
    return-void

    .line 2509
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    .line 2510
    .local v2, state:Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_7

    :cond_2
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2513
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2515
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2516
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2517
    const-string v3, "WIDGET"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2519
    const-string v3, "WIDGET"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2520
    const-string v3, "GRID_WIDGET"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2522
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2525
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    .line 2550
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :goto_1
    invoke-virtual {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onAppModelUpdated()V

    .line 2554
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_3

    .line 2555
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 2556
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    .line 2559
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->setDownloadIconEnabled()V

    goto :goto_0

    .line 2527
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    :cond_4
    const-string v3, "LIST"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2529
    const-string v3, "LIST"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2530
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2532
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 2533
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    goto :goto_1

    .line 2534
    :cond_5
    const-string v3, "WIDGET_LIST"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2536
    const-string v3, "WIDGET_LIST"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2537
    const-string v3, "LIST_WIDGET"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2539
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2540
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 2541
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    goto/16 :goto_1

    .line 2544
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_1

    .line 2548
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    goto/16 :goto_1
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 417
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v5, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v4

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 428
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_2

    .line 433
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->showMotionDialog()Z

    move-result v2

    if-eqz v2, :cond_2

    move v4, v3

    .line 434
    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getWorkspaceLoading()Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v3

    .line 437
    goto :goto_0

    .line 439
    :cond_3
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "vibrator"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v5, 0x23

    invoke-virtual {v2, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 442
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v5, :cond_4

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->exitAllApps(Z)V

    :goto_1
    move v4, v3

    .line 455
    goto :goto_0

    .line 449
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->enableRollNavigation()V

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 452
    .local v0, i:Lcom/android/launcher2/AppItem;
    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v5, :cond_6

    move v2, v3

    :goto_2
    iget-boolean v5, v0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_5

    move v4, v3

    :cond_5
    invoke-direct {p0, v2, v5, v4}, Lcom/android/launcher2/MenuAppsGrid;->showEditBar(ZZZ)V

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    .line 457
    .end local v0           #i:Lcom/android/launcher2/AppItem;
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    goto :goto_0
.end method

.method public clearLayout(Lcom/android/launcher2/Page;)V
    .locals 5
    .parameter "layout"

    .prologue
    .line 535
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppIconView;>;"
    move-object v4, p1

    .line 537
    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 538
    .local v1, l:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 539
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 540
    .local v2, v:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    instance-of v4, v2, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_0

    .line 538
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    .line 543
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 545
    .end local v2           #v:Lcom/android/launcher2/AppIconView;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 547
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 552
    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 553
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    .line 554
    return-void

    .line 550
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    goto :goto_2
.end method

.method public closeFolder(Z)Z
    .locals 3
    .parameter "commitEdit"

    .prologue
    const/4 v0, 0x1

    .line 374
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 376
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Folder;->close(Z)V

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 2834
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 2835
    .local v0, action:I
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    .line 2846
    .local v1, result:Z
    if-ne v0, v2, :cond_1

    .line 2847
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    .line 2852
    :cond_0
    :goto_0
    return v1

    .line 2848
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2849
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2857
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2858
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->onDrawComplete(Landroid/graphics/Canvas;)V

    .line 2859
    return-void
.end method

.method protected endDragging()V
    .locals 0

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 464
    return-void
.end method

.method protected findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 6
    .parameter "tag"

    .prologue
    .line 2620
    const/4 v4, 0x0

    .local v4, pageIndex:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2621
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    .line 2622
    .local v3, page:Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 2623
    .local v2, layout:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2624
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2625
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 2630
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #layout:Landroid/view/ViewGroup;
    .end local v3           #page:Lcom/android/launcher2/CellLayoutMenu;
    :goto_2
    return-object v0

    .line 2623
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #i:I
    .restart local v2       #layout:Landroid/view/ViewGroup;
    .restart local v3       #page:Lcom/android/launcher2/CellLayoutMenu;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2620
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2630
    .end local v1           #i:I
    .end local v2           #layout:Landroid/view/ViewGroup;
    .end local v3           #page:Lcom/android/launcher2/CellLayoutMenu;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getActiveTitleBarForState()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 2130
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$9;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2149
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "unknown state when asking for title bar"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2136
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 2140
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 2142
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 2144
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 2147
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mUninstallTitleBar:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 2130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 2730
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2731
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAssociatedLowerPageBound(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 2736
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 2737
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAssociatedUpperPageBound(I)I

    move-result v0

    goto :goto_0
.end method

.method public getOpenFolderId()J
    .locals 3

    .prologue
    .line 2694
    const-wide/16 v0, -0x1

    .line 2695
    .local v0, folderId:J
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 2696
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    .line 2699
    :cond_0
    return-wide v0
.end method

.method getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;
    .locals 4
    .parameter "screen"

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v2

    .line 599
    .local v2, pageCount:I
    if-ge p1, v2, :cond_0

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    .line 606
    :goto_0
    return-object v3

    .line 602
    :cond_0
    const/4 v1, 0x0

    .line 603
    .local v1, page:Lcom/android/launcher2/CellLayoutMenu;
    move v0, v2

    .local v0, i:I
    :goto_1
    if-gt v0, p1, :cond_1

    .line 604
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 606
    goto :goto_0
.end method

.method public getPageCacheSize()I
    .locals 2

    .prologue
    .line 3045
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    .line 3046
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 3048
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageCacheSize()I

    move-result v0

    goto :goto_0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    .prologue
    .line 2824
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    .prologue
    .line 2829
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "state"

    .prologue
    .line 2164
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBarHight()I
    .locals 1

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 7
    .parameter "aRect"

    .prologue
    const/4 v1, 0x1

    .line 2565
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_1

    .line 2566
    const/4 v1, 0x0

    .line 2579
    :cond_0
    :goto_0
    return v1

    .line 2568
    :cond_1
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2573
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2574
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v3, 0x7f070063

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2575
    .local v0, bb:Landroid/view/View;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 7
    .parameter "newState"
    .parameter "oldState"

    .prologue
    .line 2212
    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 2214
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_1

    .line 2215
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 2216
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2

    .line 2217
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    .line 2219
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2223
    .local v2, stateChangeAnimators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    .line 2224
    .local v3, stateObj:Lcom/android/launcher2/MenuAppsGrid$StateObj;
    if-eqz v3, :cond_3

    .line 2225
    invoke-virtual {v3, v2, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2228
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    .line 2229
    if-eqz v3, :cond_4

    .line 2230
    invoke-virtual {v3, v2, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2232
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->buildAndStartAnimatorSet(Ljava/util/List;)V

    .line 2237
    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_6

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_6

    .line 2238
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 2244
    :cond_5
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 2246
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    .line 2247
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 2248
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v5, p1, p2}, Lcom/android/launcher2/CellLayoutMenu;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2239
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_6
    if-eq p2, p1, :cond_5

    .line 2240
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object v4

    .line 2241
    .local v4, views:Ljava/util/List;
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 2242
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 2250
    .end local v4           #views:Ljava/util/List;
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_7
    return-void
.end method

.method public hideEditBar(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 2479
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 2480
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 2482
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2483
    .local v0, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2484
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentTitleBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 2485
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->buildAndStartAnimatorSet(Ljava/util/List;)V

    .line 2486
    return-void
.end method

.method protected invalidatePageData()V
    .locals 3

    .prologue
    .line 498
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData()V

    .line 499
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    .line 501
    .local v1, info:Lcom/android/launcher2/FolderItem;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .line 502
    .local v0, icon:Lcom/android/launcher2/FolderIconView;
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    .line 504
    .end local v0           #icon:Lcom/android/launcher2/FolderIconView;
    .end local v1           #info:Lcom/android/launcher2/FolderItem;
    :cond_0
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 1
    .parameter "currentPage"
    .parameter "immediateAndOnly"

    .prologue
    .line 485
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData(IZ)V

    .line 490
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->restoreOpenFolderState(Landroid/os/Bundle;)V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    .line 494
    :cond_0
    return-void
.end method

.method public leaveCurrentState()V
    .locals 4

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    .line 2170
    .local v0, oldState:Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v2, :cond_1

    .line 2171
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 2173
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    .line 2174
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 2176
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2178
    .local v1, stateChangeAnimators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2181
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 2182
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->buildAndStartAnimatorSet(Ljava/util/List;)V

    .line 2183
    return-void
.end method

.method protected onAddItem(Lcom/android/launcher2/AppIconView;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 467
    invoke-virtual {p1, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    invoke-virtual {p1, p0}, Lcom/android/launcher2/AppIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 469
    new-instance v0, Lcom/android/launcher2/MenuAppGridIconKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppGridIconKeyEventListener;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/launcher2/AppIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 470
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 188
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 189
    .local v0, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    .line 191
    check-cast v0, Lcom/android/launcher2/FolderItem;

    .end local v0           #item:Lcom/android/launcher2/AppItem;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    .line 194
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    .line 2959
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2961
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->handleScrollOnOrientationChange()V

    .line 2962
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2964
    .local v4, r:Landroid/content/res/Resources;
    const v5, 0x7f0c0045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2965
    .local v2, marginTop:I
    const v5, 0x7f0c0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2966
    .local v1, cellWidth:I
    const v5, 0x7f0c0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2968
    .local v0, cellHeight:I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 2969
    .local v3, oldCountX:I
    const v5, 0x7f0a002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 2970
    const v5, 0x7f0a002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 2971
    const v5, 0x7f0c0048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    .line 2972
    const v5, 0x7f0c0049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    .line 2973
    const v5, 0x7f0c0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 2975
    const v5, 0x7f0c004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0c004a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher2/MenuAppsGrid;->updateIndicator(II)V

    .line 2977
    invoke-direct {p0, v2, v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->updateGridSize(III)V

    .line 2978
    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->updatePageLayout(I)V

    .line 2980
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->requestLayout()V

    .line 2981
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 477
    return-void
.end method

.method public onExitAllApps()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 395
    return-void
.end method

.method public onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZ)V
    .locals 12
    .parameter "childItem"
    .parameter "title"
    .parameter "destinationContainerId"
    .parameter "removeItem"
    .parameter "findNewPosition"

    .prologue
    .line 2990
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v10, v11, :cond_4

    const/4 v3, 0x1

    .line 2991
    .local v3, inEditMode:Z
    :goto_0
    if-nez v3, :cond_0

    .line 2992
    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2994
    :cond_0
    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editAddFolder()Lcom/android/launcher2/AppFolderItem;

    move-result-object v5

    .line 2995
    .local v5, newFolder:Lcom/android/launcher2/AppFolderItem;
    iput-object p2, v5, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2997
    const/4 v0, -0x1

    .local v0, cell:I
    move v8, v0

    .line 2999
    .local v8, screen:I
    if-eqz p1, :cond_5

    move-object v4, p1

    .line 3000
    check-cast v4, Lcom/android/launcher2/AppItem;

    .line 3002
    .local v4, item:Lcom/android/launcher2/AppItem;
    iget v8, v4, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 3003
    iget v0, v4, Lcom/android/launcher2/AppItem;->mCell:I

    .line 3006
    const/4 v10, 0x0

    iput v10, v4, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 3007
    const/4 v10, -0x1

    iput v10, v4, Lcom/android/launcher2/AppItem;->mCell:I

    .line 3008
    invoke-virtual {v5, p1}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 3024
    .end local v4           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    :goto_1
    iput v0, v5, Lcom/android/launcher2/AppItem;->mCell:I

    .line 3025
    iput v8, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 3026
    if-nez v3, :cond_2

    .line 3027
    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 3029
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 3030
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v1

    .line 3031
    .local v1, currentScreen:I
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    sget-object v11, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v10, v11, :cond_7

    .line 3033
    iget-wide v10, v5, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndexForItemId(J)I

    move-result v7

    .line 3034
    .local v7, pageIndex:I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    iget v10, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v7, v10, :cond_3

    .line 3035
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v10}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageAfterLayout(II)V

    .line 3040
    .end local v7           #pageIndex:I
    :cond_3
    :goto_2
    return-void

    .line 2990
    .end local v0           #cell:I
    .end local v1           #currentScreen:I
    .end local v3           #inEditMode:Z
    .end local v5           #newFolder:Lcom/android/launcher2/AppFolderItem;
    .end local v8           #screen:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 3013
    .restart local v0       #cell:I
    .restart local v3       #inEditMode:Z
    .restart local v5       #newFolder:Lcom/android/launcher2/AppFolderItem;
    .restart local v8       #screen:I
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 3014
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutNoGap;

    .line 3015
    .local v6, page:Lcom/android/launcher2/CellLayoutNoGap;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v9

    .line 3016
    .local v9, space:I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 3017
    move v0, v9

    .line 3018
    move v8, v2

    .line 3019
    goto :goto_1

    .line 3013
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3037
    .end local v2           #i:I
    .end local v6           #page:Lcom/android/launcher2/CellLayoutNoGap;
    .end local v9           #space:I
    .restart local v1       #currentScreen:I
    :cond_7
    iget v10, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v10, v1, :cond_3

    .line 3038
    iget v10, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageAfterLayout(II)V

    goto :goto_2
.end method

.method public onFolderNameChange(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 2748
    sget-object v0, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v0, v1, :cond_0

    .line 2754
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$8;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$8;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->post(Ljava/lang/Runnable;)Z

    .line 2763
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 673
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 674
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v1}, Lcom/android/launcher2/PanelDrawer;->hasLoadedResources()Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PanelDrawer;->loadResources(Landroid/content/res/Resources;)V

    .line 676
    :cond_0
    if-eqz p1, :cond_1

    .line 677
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 678
    .local v0, rootView:Landroid/view/View;
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 721
    .end local v0           #rootView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 404
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public openFolder(Lcom/android/launcher2/FolderItem;Z)V
    .locals 9
    .parameter "folderItem"
    .parameter "animateOpen"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 319
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .line 322
    .local v1, icon:Lcom/android/launcher2/FolderIconView;
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 324
    .local v3, parentView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_2

    .line 325
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    invoke-virtual {v1, v4}, Lcom/android/launcher2/FolderIconView;->getLocationOnScreen([I)V

    .line 331
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 333
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 337
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    .line 338
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iput-object p0, v4, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    .line 339
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0039

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v4, Lcom/android/launcher2/Folder;->mFixedWidth:I

    .line 340
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/Folder;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 341
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/Folder;->addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V

    .line 344
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    sget-object v7, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v4, v7, :cond_8

    move v2, v5

    .line 346
    .local v2, isAlphaGrid:Z
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v4, v4, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-nez v2, :cond_5

    move v6, v5

    :cond_5
    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    .line 347
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    invoke-direct {v6, p0, v1, p2}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p1, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    .line 351
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 352
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    invoke-virtual {v6, v4, v3, p2}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 354
    .local v0, config:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 358
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 361
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto/16 :goto_0

    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #isAlphaGrid:Z
    :cond_8
    move v2, v6

    .line 344
    goto :goto_1
.end method

.method public releaseShadows()V
    .locals 8

    .prologue
    .line 2871
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v2

    .line 2872
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2873
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 2874
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 2876
    .local v5, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2877
    .local v0, ccout:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 2878
    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2879
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    .line 2880
    check-cast v6, Lcom/android/launcher2/AppIconView;

    .end local v6           #v:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 2877
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2872
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2884
    .end local v0           #ccout:I
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v4           #j:I
    .end local v5           #l:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method public restoreOpenFolderState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 2655
    if-nez p1, :cond_1

    .line 2673
    :cond_0
    :goto_0
    return-void

    .line 2662
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isDataReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2663
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 2667
    :cond_2
    const-string v3, "openFolderId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2668
    .local v1, openFolderId:J
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 2669
    .local v0, item:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/launcher2/FolderItem;

    if-eqz v3, :cond_0

    .line 2670
    check-cast v0, Lcom/android/launcher2/FolderItem;

    .end local v0           #item:Lcom/android/launcher2/AppItem;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    .line 2671
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public revertEditChanges()V
    .locals 1

    .prologue
    .line 2463
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editRevert()V

    .line 2464
    return-void
.end method

.method protected rotateFolder()V
    .locals 1

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 2953
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->handleOrientationChange()V

    .line 2955
    :cond_0
    return-void
.end method

.method public saveEditChanges()V
    .locals 4

    .prologue
    .line 2454
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    sget-object v3, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v2, v3, :cond_0

    .line 2455
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 2456
    .local v0, i:Lcom/android/launcher2/AppItem;
    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->editRevertCell()V

    goto :goto_0

    .line 2459
    .end local v0           #i:Lcom/android/launcher2/AppItem;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2460
    return-void
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 2641
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v1, :cond_1

    .line 2652
    :cond_0
    :goto_0
    return-void

    .line 2642
    :cond_1
    const-string v1, "openFolderId"

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolderId()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2644
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2645
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    .line 2646
    .local v0, text:Landroid/widget/EditText;
    const-string v1, "pendingFolderEditText"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    const-string v1, "pending_folder_edit_text_selection_start"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2649
    const-string v1, "pending_folder_edit_text_selection_end"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 0

    .prologue
    .line 2490
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->setDataIsReady()V

    .line 2491
    return-void
.end method

.method public setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    .line 141
    return-void
.end method

.method public setNormalTitleBarVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 148
    :cond_0
    return-void
.end method

.method public setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v1

    #setter for: Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->access$5202(Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;J)J

    .line 2612
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuTabHost;)V
    .locals 6
    .parameter "tabHost"

    .prologue
    const/4 v5, 0x1

    .line 2271
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 2305
    :goto_0
    return-void

    .line 2272
    :cond_0
    const v3, 0x7f070069

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    .line 2273
    const v3, 0x7f07006d

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    .line 2274
    const v3, 0x7f070063

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuEditBar;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    .line 2275
    const v3, 0x7f07006e

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mUninstallTitleBar:Landroid/view/View;

    .line 2276
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v4, 0x7f070054

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2277
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v4, 0x7f07007d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2278
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 2279
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mUninstallTitleBar:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 2281
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2282
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2283
    .local v1, editTitleBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 2284
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2285
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/TitleBarKeyEventListener;

    invoke-direct {v4}, Lcom/android/launcher2/TitleBarKeyEventListener;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2284
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2290
    .end local v1           #editTitleBar:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v4, 0x7f070066

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2291
    .local v0, back:Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2293
    :cond_2
    const v3, 0x7f070074

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;

    .line 2294
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    .line 2295
    const v3, 0x7f070073

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    .line 2298
    :cond_3
    const v3, 0x7f070070

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    .line 2299
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    .line 2300
    const v3, 0x7f07006f

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    .line 2303
    :cond_4
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    .line 2304
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentTitleBar:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V
    .locals 4
    .parameter "viewType"

    .prologue
    .line 2591
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    if-eq v2, p1, :cond_1

    .line 2592
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 2594
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 2595
    sget-object v2, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 2596
    .local v0, enableReOrdering:Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setEnabled(Z)V

    .line 2599
    .end local v0           #enableReOrdering:Z
    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    .line 2600
    .local v1, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2601
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    .line 2602
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 2605
    .end local v1           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_1
    return-void

    .line 2595
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 573
    .local v0, l:Lcom/android/launcher2/CellLayoutMenu;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setAlpha(F)V

    .line 574
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    .line 575
    return-void
.end method

.method public syncPages()V
    .locals 7

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 510
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 511
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Page;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->clearLayout(Lcom/android/launcher2/Page;)V

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->removeAllViews()V

    .line 517
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v1

    .line 518
    .local v1, count:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 519
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->clearItems()V

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    .line 523
    .local v0, appsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v0, :cond_3

    .line 531
    :cond_2
    :goto_2
    return-void

    .line 524
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    .line 525
    .local v4, item:Lcom/android/launcher2/AppItem;
    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->addAppItem(Lcom/android/launcher2/AppItem;)V

    goto :goto_3

    .line 528
    .end local v4           #item:Lcom/android/launcher2/AppItem;
    :cond_4
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 529
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    goto :goto_2
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 13
    .parameter "v"
    .parameter "scrollProgress"

    .prologue
    const/high16 v9, 0x3f00

    const/high16 v12, -0x3e80

    const/4 v11, 0x0

    .line 727
    if-nez p1, :cond_0

    .line 778
    .end local p1
    :goto_0
    return-void

    .line 731
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 733
    const/4 v6, 0x0

    .line 734
    .local v6, translationX:F
    const/4 v1, 0x0

    .line 735
    .local v1, fixedPosition:Z
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isLoopingEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 736
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 737
    .local v2, i:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 738
    .local v4, pageWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 743
    .local v3, pageHeight:I
    int-to-float v7, v4

    mul-float/2addr v7, v9

    int-to-float v8, v4

    mul-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/launcher2/MenuAppsGrid;->mix(FFF)F

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    .line 746
    int-to-float v7, v3

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 748
    if-nez v2, :cond_3

    cmpg-float v7, p2, v11

    if-gez v7, :cond_3

    .line 750
    mul-float v7, v12, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setRotationY(F)V

    .line 752
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v7

    int-to-float v6, v7

    .line 753
    const/4 v1, 0x1

    .line 764
    .end local v2           #i:I
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    :cond_1
    :goto_1
    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 765
    .local v5, pageZoom:F
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 766
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 767
    if-nez v1, :cond_2

    .line 768
    const/high16 v7, 0x3f80

    sub-float/2addr v7, v5

    mul-float/2addr v7, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x4020

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 770
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 775
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v0

    .local v0, darkenAmount:F
    move-object v7, p1

    .line 776
    check-cast v7, Lcom/android/launcher2/CellLayout;

    iget v8, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 777
    check-cast p1, Lcom/android/launcher2/CellLayout;

    .end local p1
    sget v7, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual {p1, v7}, Lcom/android/launcher2/CellLayout;->setBackgroundBaseDarken(F)V

    goto/16 :goto_0

    .line 754
    .end local v0           #darkenAmount:F
    .end local v5           #pageZoom:F
    .restart local v2       #i:I
    .restart local v3       #pageHeight:I
    .restart local v4       #pageWidth:I
    .restart local p1
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_4

    cmpl-float v7, p2, v11

    if-lez v7, :cond_4

    .line 756
    mul-float v7, v12, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setRotationY(F)V

    .line 758
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 759
    const/4 v1, 0x1

    goto :goto_1

    .line 761
    :cond_4
    invoke-virtual {p1, v11}, Landroid/view/View;->setRotationY(F)V

    goto :goto_1
.end method

.method updateQuickViewMainMenu()V
    .locals 2

    .prologue
    .line 2896
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    if-eqz v0, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->updateQuickView()V

    .line 2899
    :cond_0
    return-void
.end method
