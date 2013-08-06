.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$15;,
        Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher2/LauncherModel$LoaderTask;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z = true

.field private static final DEBUG_LOADERS:Z = true

.field private static final ITEMS_CHUNK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "Launcher.Model"

.field public static UseLauncherHighPriority:Z

.field private static final sAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sCellCountX:I

.field private static sCellCountY:I

.field private static final sDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final sHomeFolders:Ljava/util/HashMap;
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

.field private static final sHomeItemIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHomeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsCPFavorite:Z

.field private static final sSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SamsungAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private volatile mAllAppsLoaded:Z

.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private volatile mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConfigMccWhenLoaded:I

.field private volatile mConfigMncWhenLoaded:I

.field private mHandler:Lcom/android/launcher2/DeferredHandler;

.field private final mHomeLoader:Lcom/android/launcher2/HomeLoader;

.field private volatile mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field private volatile mLocaleWhenLoaded:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mRefreshRequired:Z

.field private volatile mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 85
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 89
    sput-boolean v2, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungAppWidgets:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    .line 158
    sput-boolean v2, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V
    .locals 2
    .parameter "app"
    .parameter "pkgResCache"

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 81
    new-instance v0, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v0}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 184
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    .line 185
    new-instance v0, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 186
    new-instance v0, Lcom/android/launcher2/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/HomeLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    .line 187
    new-instance v0, Lcom/android/launcher2/MenuAppLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/MenuAppLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    .line 188
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 189
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 190
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/LauncherModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->setLocaleLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    return v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p9}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/LauncherModel;Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/PkgResCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/BadgeCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    return p1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V
    .locals 16
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 729
    move-wide/from16 v0, p2

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    .line 730
    move/from16 v0, p4

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 731
    move/from16 v0, p5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 732
    move/from16 v0, p6

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 735
    const-wide/16 v12, -0x65

    cmp-long v12, p2, v12

    if-nez v12, :cond_0

    if-gez p4, :cond_0

    move-object/from16 v0, p0

    instance-of v12, v0, Lcom/android/launcher2/Launcher;

    if-eqz v12, :cond_0

    move-object/from16 v12, p0

    .line 737
    check-cast v12, Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v12

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 738
    const/4 v12, -0x1

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 739
    const/4 v12, -0x1

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 742
    :cond_0
    sget-boolean v12, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    instance-of v12, v0, Lcom/android/launcher2/Launcher;

    if-eqz v12, :cond_3

    move-object/from16 v12, p0

    .line 743
    check-cast v12, Lcom/android/launcher2/Launcher;

    iget-object v12, v12, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    .line 744
    .local v11, ws:Lcom/android/launcher2/Workspace;
    const/4 v4, 0x0

    .line 746
    .local v4, cl:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v14, -0x64

    cmp-long v12, v12, v14

    if-nez v12, :cond_6

    .line 747
    move/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 748
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    if-nez v4, :cond_2

    .line 842
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v11           #ws:Lcom/android/launcher2/Workspace;
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 751
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v11       #ws:Lcom/android/launcher2/Workspace;
    .restart local p0
    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x0

    :goto_1
    sput-boolean v12, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 752
    sget-boolean v12, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    if-eqz v12, :cond_3

    .line 753
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 754
    const/4 v12, 0x1

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 772
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v11           #ws:Lcom/android/launcher2/Workspace;
    :cond_3
    :goto_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 773
    .local v10, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 774
    .local v5, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 776
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    .line 777
    .local v3, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 778
    const-string v12, "_id"

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 779
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v13}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 781
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v12, v13, :cond_4

    .line 782
    sget-object v13, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v12, p1

    check-cast v12, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    :cond_4
    new-instance v8, Lcom/android/launcher2/LauncherModel$8;

    move/from16 v0, p7

    move-object/from16 v1, p1

    invoke-direct {v8, v5, v0, v10, v1}, Lcom/android/launcher2/LauncherModel$8;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher2/HomeItem;)V

    .line 821
    .local v8, r:Ljava/lang/Runnable;
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    if-ne v12, v13, :cond_8

    .line 822
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 827
    :goto_3
    sget-boolean v12, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    instance-of v12, v0, Lcom/android/launcher2/Launcher;

    if-eqz v12, :cond_1

    .line 828
    check-cast p0, Lcom/android/launcher2/Launcher;

    .end local p0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 830
    .local v7, hf:Lcom/android/launcher2/HomeFragment;
    new-instance v9, Lcom/android/launcher2/LauncherModel$9;

    invoke-direct {v9, v7}, Lcom/android/launcher2/LauncherModel$9;-><init>(Lcom/android/launcher2/HomeFragment;)V

    .line 838
    .local v9, r2:Ljava/lang/Runnable;
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    if-ne v12, v13, :cond_9

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 751
    .end local v3           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v7           #hf:Lcom/android/launcher2/HomeFragment;
    .end local v8           #r:Ljava/lang/Runnable;
    .end local v9           #r2:Ljava/lang/Runnable;
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v11       #ws:Lcom/android/launcher2/Workspace;
    .restart local p0
    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 756
    :cond_6
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v14, -0x65

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    .line 759
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeFolderItem;

    .line 760
    .local v6, folderItem:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v6, :cond_3

    .line 761
    iget v12, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 762
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    if-eqz v4, :cond_1

    .line 764
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x0

    :goto_4
    sput-boolean v12, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 765
    sget-boolean v12, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    goto/16 :goto_2

    .line 764
    :cond_7
    const/4 v12, 0x1

    goto :goto_4

    .line 824
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v6           #folderItem:Lcom/android/launcher2/HomeFolderItem;
    .end local v11           #ws:Lcom/android/launcher2/Workspace;
    .restart local v3       #app:Lcom/android/launcher2/LauncherApplication;
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v8       #r:Ljava/lang/Runnable;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_8
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v12, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 839
    .end local p0
    .restart local v7       #hf:Lcom/android/launcher2/HomeFragment;
    .restart local v9       #r2:Ljava/lang/Runnable;
    :cond_9
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 269
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/HomeItem;->isContextualAwareHotseat:Z

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-wide v0, p1, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 274
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 9
    .parameter "context"
    .parameter "item"

    .prologue
    .line 951
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 953
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v5, p1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    sput-boolean v5, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 954
    iget-wide v5, p1, Lcom/android/launcher2/BaseItem;->mId:J

    const/4 v7, 0x0

    sget-boolean v8, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-static {v5, v6, v7, v8}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v4

    .line 956
    .local v4, uriToDelete:Landroid/net/Uri;
    iget-object v5, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_0

    .line 957
    sget-object v5, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    iget-wide v6, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    :cond_0
    const/4 v1, 0x0

    .line 961
    .local v1, hf:Lcom/android/launcher2/HomeFragment;
    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v5, :cond_1

    instance-of v5, p0, Lcom/android/launcher2/Launcher;

    if-eqz v5, :cond_1

    .line 962
    check-cast p0, Lcom/android/launcher2/Launcher;

    .end local p0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 964
    :cond_1
    move-object v2, v1

    .line 966
    .local v2, hf_cp:Lcom/android/launcher2/HomeFragment;
    new-instance v3, Lcom/android/launcher2/LauncherModel$11;

    invoke-direct {v3, p1, v0, v4, v2}, Lcom/android/launcher2/LauncherModel$11;-><init>(Lcom/android/launcher2/HomeItem;Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/launcher2/HomeFragment;)V

    .line 1006
    .local v3, r:Ljava/lang/Runnable;
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1007
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1011
    :goto_0
    return-void

    .line 1009
    :cond_2
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter "notify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 878
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 879
    .local v1, hf:Lcom/android/launcher2/HomeFragment;
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_0

    instance-of v4, p0, Lcom/android/launcher2/Launcher;

    if-eqz v4, :cond_0

    .line 880
    check-cast p0, Lcom/android/launcher2/Launcher;

    .end local p0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 882
    :cond_0
    move-object v2, v1

    .line 884
    .local v2, hf_cp:Lcom/android/launcher2/HomeFragment;
    new-instance v3, Lcom/android/launcher2/LauncherModel$10;

    invoke-direct {v3, p1, v0, v2, p2}, Lcom/android/launcher2/LauncherModel$10;-><init>(Ljava/util/List;Landroid/content/ContentResolver;Lcom/android/launcher2/HomeFragment;Z)V

    .line 937
    .local v3, r:Ljava/lang/Runnable;
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 938
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 1988
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1989
    return-void
.end method

.method private static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    .prologue
    .line 2414
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    .line 2415
    .local v0, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    if-nez v0, :cond_0

    .line 2417
    new-instance v0, Lcom/android/launcher2/HomeFolderItem;

    .end local v0           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-direct {v0}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 2418
    .restart local v0       #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    :cond_0
    return-object v0
.end method

.method static getCellCountX()I
    .locals 1

    .prologue
    .line 854
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    .prologue
    .line 858
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 2
    .parameter "container"
    .parameter "screen"
    .parameter "localCellX"
    .parameter "localCellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 849
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"
    .parameter "context"

    .prologue
    .line 2295
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 2297
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2300
    :goto_0
    return-object v2

    .line 2299
    :catch_0
    move-exception v1

    .line 2300
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "container"
    .parameter "screen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v13, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 646
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const-string v5, "container=? and screen=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 656
    .local v8, c:Landroid/database/Cursor;
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 657
    .local v9, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 658
    .local v10, cellYIndex:I
    const-string v3, "spanX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 659
    .local v14, spanXIndex:I
    const-string v3, "spanY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 662
    .local v15, spanYIndex:I
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    new-instance v12, Lcom/android/launcher2/HomeItem;

    invoke-direct {v12}, Lcom/android/launcher2/HomeItem;-><init>()V

    .line 664
    .local v12, item:Lcom/android/launcher2/HomeItem;
    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    .line 665
    move/from16 v0, p3

    iput v0, v12, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 666
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 667
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 668
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 669
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 670
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    .end local v12           #item:Lcom/android/launcher2/HomeItem;
    :catch_0
    move-exception v11

    .line 673
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 678
    return-object v13

    .line 675
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    .locals 5
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v1, 0x0

    .line 2163
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2164
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 2204
    :cond_0
    :goto_0
    return-object v1

    .line 2170
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2171
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 2174
    new-instance v1, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v1, v4}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 2175
    .local v1, info:Lcom/android/launcher2/HomeShortcutItem;
    new-instance v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v3}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 2176
    .local v3, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 2177
    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2178
    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2180
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 2181
    if-eqz p4, :cond_2

    .line 2182
    invoke-direct {p0, p4, p5, p3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2186
    :cond_2
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 2187
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2188
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2193
    :cond_3
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 2194
    if-eqz p4, :cond_4

    .line 2195
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2199
    :cond_4
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 2200
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2203
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v4

    iput v4, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    goto :goto_0
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 14
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"
    .parameter "manager"
    .parameter "intent"

    .prologue
    .line 2214
    const/4 v3, 0x0

    .line 2215
    .local v3, icon:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 2220
    .local v11, title:Ljava/lang/String;
    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2221
    .local v2, cn:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    .line 2222
    const/4 v12, 0x0

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {v0, v1, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 2223
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v8, :cond_0

    .line 2224
    const/4 v6, 0x0

    .line 2285
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v6

    .line 2230
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.android.email"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "com.android.settings.SHORTCUT"

    move-object/from16 v0, p9

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p9

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2233
    :cond_1
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v12, v8}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v11

    .line 2236
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    new-instance v6, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v6}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 2238
    .local v6, info:Lcom/android/launcher2/HomeShortcutItem;
    if-nez v11, :cond_3

    .line 2239
    move/from16 v0, p7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2241
    :cond_3
    iput-object v11, v6, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2243
    move/from16 v0, p3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2244
    .local v4, iconType:I
    packed-switch v4, :pswitch_data_0

    .line 2279
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2280
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2281
    const/4 v12, 0x0

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2284
    :cond_4
    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2246
    :pswitch_0
    move/from16 v0, p4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2247
    .local v7, packageName:Ljava/lang/String;
    move/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2248
    .local v9, resourceName:Ljava/lang/String;
    const/4 v12, 0x0

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2251
    :try_start_0
    move-object/from16 v0, p8

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 2252
    .local v10, resources:Landroid/content/res/Resources;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v9, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2253
    .local v5, id:I
    if-eqz v5, :cond_5

    .line 2254
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v12, v10, v5, v7}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2259
    .end local v5           #id:I
    .end local v10           #resources:Landroid/content/res/Resources;
    :cond_5
    :goto_2
    if-nez v3, :cond_6

    .line 2260
    move/from16 v0, p6

    move-object/from16 v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2263
    :cond_6
    if-nez v3, :cond_4

    .line 2264
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2265
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto :goto_1

    .line 2269
    .end local v7           #packageName:Ljava/lang/String;
    .end local v9           #resourceName:Ljava/lang/String;
    :pswitch_1
    move/from16 v0, p6

    move-object/from16 v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2270
    if-nez v3, :cond_7

    .line 2271
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2272
    const/4 v12, 0x0

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2273
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto :goto_1

    .line 2275
    :cond_7
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto :goto_1

    .line 2255
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v9       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_2

    .line 2244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasLocaleChangedLocked()Z
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 227
    .local v0, config:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    iget v2, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V
    .locals 6
    .parameter "provider"
    .parameter "moveToCP"
    .parameter "itemId"
    .parameter "isFolderItem"

    .prologue
    .line 449
    new-instance v0, Lcom/android/launcher2/LauncherModel$4;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel$4;-><init>(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    .line 455
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v3, -0x1

    .line 465
    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    .line 466
    iput p4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 467
    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 468
    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 472
    const-wide/16 v1, -0x65

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    if-gez p4, :cond_0

    instance-of v1, p0, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 474
    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 475
    iput v3, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 476
    iput v3, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 479
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 480
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 481
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    const-string v1, "screen"

    iget v2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    const-string v1, "moveItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public static moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 526
    .local v4, newPositions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 527
    .local v2, item:Lcom/android/launcher2/HomeItem;
    new-instance v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$FavoritePos;-><init>()V

    .line 528
    .local v3, itemPos:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    iget-wide v6, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    .line 529
    iget-wide v6, v2, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    .line 530
    iget v6, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    .line 531
    iget v6, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    .line 532
    iget v6, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    .line 533
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    .end local v3           #itemPos:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 536
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    new-instance v5, Lcom/android/launcher2/LauncherModel$6;

    invoke-direct {v5, v0, v4}, Lcom/android/launcher2/LauncherModel$6;-><init>(Lcom/android/launcher2/LauncherApplication;Ljava/util/ArrayList;)V

    .line 556
    .local v5, r:Ljava/lang/Runnable;
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 557
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 560
    :goto_1
    return-void

    .line 559
    :cond_1
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    .locals 2
    .parameter
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/launcher2/HomeShortcutItem;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;[B>;"
    const/4 v0, 0x0

    .line 2371
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    .line 2384
    :cond_0
    :goto_0
    return v0

    .line 2380
    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    .line 2381
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;IIII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 567
    iput p4, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 568
    iput p5, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 569
    iput p2, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 570
    iput p3, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 572
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 573
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    const-string v1, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    const-string v1, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const-string v1, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    const-string v1, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    const-string v1, "resizeItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method private setLocaleLocked()V
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 239
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    .line 240
    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    .line 241
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    .line 242
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 627
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 628
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "title=? and intent=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 631
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 632
    .local v7, result:Z
    if-eqz v6, :cond_0

    .line 633
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 636
    :cond_0
    return v7
.end method

.method private stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 1140
    const/4 v0, 0x0

    .line 1141
    .local v0, isLaunching:Z
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1142
    .local v1, oldTask:Lcom/android/launcher2/LauncherModel$LoaderTask;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1143
    if-eqz v1, :cond_1

    .line 1144
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    const/4 v0, 0x1

    .line 1147
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 1149
    :cond_1
    return v0
.end method

.method private toggleEasyMode(IZ)V
    .locals 3
    .parameter "easyModeSwitch"
    .parameter "fromSettings"

    .prologue
    .line 1992
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleEasyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/LauncherModel$12;-><init>(Lcom/android/launcher2/LauncherModel;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2022
    return-void
.end method

.method private unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    .local v0, workspaceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherModel$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$2;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 259
    return-object v0
.end method

.method static updateAppItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 504
    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    new-instance v1, Lcom/android/launcher2/LauncherModel$5;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher2/LauncherModel$5;-><init>(Lcom/android/launcher2/LauncherProvider;Ljava/util/List;)V

    .line 510
    .local v1, r:Ljava/lang/Runnable;
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 511
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 514
    :goto_0
    return-void

    .line 513
    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 591
    const-string v4, "container"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot change container field for item id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, msg:Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 595
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-static {p1, p2, v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v3

    .line 596
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 598
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/launcher2/LauncherModel$7;

    invoke-direct {v2, v0, v3, p3}, Lcom/android/launcher2/LauncherModel$7;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 606
    .local v2, r:Ljava/lang/Runnable;
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 607
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 610
    :goto_0
    return-void

    .line 609
    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 616
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 617
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 618
    iget v1, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 619
    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method private static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V
    .locals 21
    .parameter "context"
    .parameter "values"
    .parameter "item"
    .parameter "callingFunction"

    .prologue
    .line 283
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 285
    .local v8, itemId:J
    const/4 v13, 0x0

    .line 286
    .local v13, hf:Lcom/android/launcher2/HomeFragment;
    sget-boolean v6, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    instance-of v6, v0, Lcom/android/launcher2/Launcher;

    if-eqz v6, :cond_3

    .line 287
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] updateItemInDatabaseHelper START : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p0

    .line 289
    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v13, v6, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 290
    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    .line 291
    .local v18, ws:Lcom/android/launcher2/Workspace;
    const/4 v12, 0x0

    .line 292
    .local v12, cl:Lcom/android/launcher2/CellLayout;
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 294
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v16, v6, -0x1

    .line 296
    .local v16, normalPageCount:I
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-nez v6, :cond_0

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v19, -0x65

    cmp-long v6, v6, v19

    if-eqz v6, :cond_0

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v19, 0x0

    cmp-long v6, v6, v19

    if-lez v6, :cond_4

    .line 297
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v12, Lcom/android/launcher2/CellLayout;

    .line 298
    .restart local v12       #cl:Lcom/android/launcher2/CellLayout;
    const-string v6, "Launcher.Model"

    const-string v7, "[CP] CASE 1 - isSwapItemHotseatAndCP or CONTAINER_HOTSEAT or Folder\'s Item"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", CLType : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] isContextualPageItem : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", Screen : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", container : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v6, "moveItemInDatabase"

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 318
    const/4 v15, 0x0

    .line 319
    .local v15, isFolderItem:Z
    const/4 v14, 0x0

    .line 321
    .local v14, isCloneToCP:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v17

    .line 323
    .local v17, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v12, :cond_3

    .line 325
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_1

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-nez v6, :cond_1

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v6, :cond_2

    :cond_1
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v19, -0x65

    cmp-long v6, v6, v19

    if-nez v6, :cond_8

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v6, :cond_8

    .line 328
    :cond_2
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 329
    const/4 v14, 0x0

    .line 330
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iput-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 333
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_6

    .line 334
    const/4 v15, 0x1

    .line 381
    :goto_1
    if-eqz v15, :cond_3

    .line 382
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/BaseItem;->mId:J

    const/4 v10, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v14, v6, v7, v10}, Lcom/android/launcher2/LauncherModel;->moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    .line 399
    .end local v12           #cl:Lcom/android/launcher2/CellLayout;
    .end local v14           #isCloneToCP:Z
    .end local v15           #isFolderItem:Z
    .end local v16           #normalPageCount:I
    .end local v17           #provider:Lcom/android/launcher2/LauncherProvider;
    .end local v18           #ws:Lcom/android/launcher2/Workspace;
    :cond_3
    :goto_2
    const/4 v6, 0x0

    sget-boolean v7, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-static {v8, v9, v6, v7}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v5

    .line 400
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 402
    .local v4, cr:Landroid/content/ContentResolver;
    move-object v11, v13

    .line 403
    .local v11, hf_cp:Lcom/android/launcher2/HomeFragment;
    new-instance v3, Lcom/android/launcher2/LauncherModel$3;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/launcher2/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;JLjava/lang/String;Lcom/android/launcher2/HomeFragment;)V

    .line 441
    .local v3, r:Ljava/lang/Runnable;
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    if-ne v6, v7, :cond_11

    .line 442
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 446
    :goto_3
    return-void

    .line 300
    .end local v3           #r:Ljava/lang/Runnable;
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v11           #hf_cp:Lcom/android/launcher2/HomeFragment;
    .restart local v12       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v16       #normalPageCount:I
    .restart local v18       #ws:Lcom/android/launcher2/Workspace;
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v16

    if-le v6, v0, :cond_5

    .line 303
    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v6

    move-object/from16 v0, p2

    iput v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 304
    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v12

    .line 305
    const-string v6, "Launcher.Model"

    const-string v7, "[CP] CASE 2 - isContextualPage and mScreen is more then normalPageCount"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 308
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v12, Lcom/android/launcher2/CellLayout;

    .line 310
    .restart local v12       #cl:Lcom/android/launcher2/CellLayout;
    const-string v6, "Launcher.Model"

    const-string v7, "[CP] CASE 3 - others"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    .restart local v14       #isCloneToCP:Z
    .restart local v15       #isFolderItem:Z
    .restart local v17       #provider:Lcom/android/launcher2/LauncherProvider;
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-static {v0, v6, v1, v2, v7}, Lcom/android/launcher2/LauncherModel;->moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    .line 338
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v6, :cond_7

    .line 339
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iput-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    .line 340
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from CP to Hotseat - item : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 342
    :cond_7
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from CP to normal - item : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 345
    :cond_8
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-nez v6, :cond_9

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v19, -0x65

    cmp-long v6, v6, v19

    if-nez v6, :cond_a

    :cond_9
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_e

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v6, :cond_e

    .line 348
    :cond_a
    const/4 v14, 0x1

    .line 349
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 350
    const/4 v6, 0x1

    move-object/from16 v0, p2

    iput-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 352
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-nez v6, :cond_b

    .line 353
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    move-object/from16 v0, p2

    iput v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 354
    :cond_b
    const-string v6, "screen"

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_c

    .line 357
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 359
    :cond_c
    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-static {v0, v6, v1, v2, v7}, Lcom/android/launcher2/LauncherModel;->moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    .line 361
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v6, :cond_d

    .line 362
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iput-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    .line 363
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from Hotseat to CP - item : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 365
    :cond_d
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from normal to CP - item : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 369
    :cond_e
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_f

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-eqz v6, :cond_f

    .line 371
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    move-object/from16 v0, p2

    iput v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 372
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 373
    const-string v6, "screen"

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from CP to CP - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 378
    :cond_f
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from normal to normal - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 389
    .end local v14           #isCloneToCP:Z
    .end local v15           #isFolderItem:Z
    .end local v17           #provider:Lcom/android/launcher2/LauncherProvider;
    :cond_10
    if-eqz v12, :cond_3

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_3

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-eqz v6, :cond_3

    .line 390
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    move-object/from16 v0, p2

    iput v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 391
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 392
    const-string v6, "screen"

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 444
    .end local v12           #cl:Lcom/android/launcher2/CellLayout;
    .end local v16           #normalPageCount:I
    .end local v18           #ws:Lcom/android/launcher2/Workspace;
    .restart local v3       #r:Ljava/lang/Runnable;
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v11       #hf_cp:Lcom/android/launcher2/HomeFragment;
    :cond_11
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3
.end method

.method private updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 2388
    const/4 v2, 0x0

    .line 2390
    .local v2, needSave:Z
    if-eqz p3, :cond_2

    .line 2391
    const/4 v5, 0x0

    :try_start_0
    array-length v6, p3

    invoke-static {p3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2392
    .local v3, saved:Landroid/graphics/Bitmap;
    iget-object v1, p2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2393
    .local v1, loaded:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 2400
    .end local v1           #loaded:Landroid/graphics/Bitmap;
    .end local v3           #saved:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_0

    .line 2401
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "going to save icon bitmap for info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2406
    :cond_0
    return-void

    .restart local v1       #loaded:Landroid/graphics/Bitmap;
    .restart local v3       #saved:Landroid/graphics/Bitmap;
    :cond_1
    move v2, v4

    .line 2393
    goto :goto_0

    .line 2395
    .end local v1           #loaded:Landroid/graphics/Bitmap;
    .end local v3           #saved:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 2397
    :catch_0
    move-exception v0

    .line 2398
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0
    .parameter "shortAxisCellCount"
    .parameter "longAxisCellCount"

    .prologue
    .line 866
    sput p0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    .line 867
    sput p1, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    .line 868
    return-void
.end method


# virtual methods
.method public HomeFragmentCount()I
    .locals 2

    .prologue
    .line 1111
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public MenuFragmentCount()I
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->loadAllItems()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 2306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .local v1, info:Lcom/android/launcher2/HomeShortcutItem;
    move-object v0, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 2307
    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 2309
    return-object v1
.end method

.method public bindContextualPageItems(I)V
    .locals 3
    .parameter "CPType"

    .prologue
    .line 2480
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindContextualPageItems CPType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$14;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/LauncherModel$14;-><init>(Lcom/android/launcher2/LauncherModel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2507
    return-void
.end method

.method public dumpState()V
    .locals 4

    .prologue
    .line 2465
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallbacks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.added"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2467
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.removed"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2468
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.modified"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2471
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 2472
    .local v0, loader:Lcom/android/launcher2/LauncherModel$LoaderTask;
    if-eqz v0, :cond_0

    .line 2473
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->dumpState()V

    .line 2477
    :goto_0
    return-void

    .line 2475
    :cond_0
    const-string v1, "Launcher.Model"

    const-string v2, "mLoaderTask=null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 17
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    .prologue
    .line 685
    .local p2, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 686
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and (itemType=? or itemType=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 692
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    const-string v3, "itemType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 694
    .local v13, itemTypeIndex:I
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 695
    .local v15, titleIndex:I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 696
    .local v11, containerIndex:I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 697
    .local v14, screenIndex:I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 698
    .local v9, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 700
    .local v10, cellYIndex:I
    const/4 v12, 0x0

    .line 701
    .local v12, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 707
    :goto_0
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 708
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/android/launcher2/BaseItem;->mId:J

    .line 709
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v12, Lcom/android/launcher2/HomeItem;->container:J

    .line 710
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 711
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 712
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 720
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :goto_1
    return-object v12

    .line 703
    .restart local v9       #cellXIndex:I
    .restart local v10       #cellYIndex:I
    .restart local v11       #containerIndex:I
    .restart local v12       #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .restart local v13       #itemTypeIndex:I
    .restart local v14       #screenIndex:I
    .restart local v15       #titleIndex:I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    .line 717
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 720
    const/4 v12, 0x0

    goto :goto_1

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 7
    .parameter "manager"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 2152
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method public hasLocaleChanged()Z
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 17
    .parameter "context"
    .parameter "data"
    .parameter "fallbackIcon"

    .prologue
    .line 2313
    const-string v14, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 2314
    .local v10, intent:Landroid/content/Intent;
    const-string v14, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2315
    .local v11, name:Ljava/lang/String;
    const-string v14, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 2317
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v6, 0x0

    .line 2318
    .local v6, icon:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 2319
    .local v3, customIcon:Z
    const/4 v7, 0x0

    .line 2321
    .local v7, iconResource:Landroid/content/Intent$ShortcutIconResource;
    instance-of v14, v1, Landroid/graphics/Bitmap;

    if-eqz v14, :cond_3

    .line 2322
    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmap:Landroid/os/Parcelable;
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2323
    const/4 v3, 0x1

    .line 2341
    :cond_0
    :goto_0
    new-instance v9, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v9}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 2343
    .local v9, info:Lcom/android/launcher2/HomeShortcutItem;
    if-nez v6, :cond_1

    .line 2344
    if-eqz p3, :cond_4

    .line 2345
    move-object/from16 v6, p3

    .line 2351
    :cond_1
    :goto_1
    invoke-virtual {v9, v6}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2353
    iput-object v11, v9, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2354
    iput-object v10, v9, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 2355
    iput-boolean v3, v9, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2356
    iput-object v7, v9, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2358
    const-string v14, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "title: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", intent: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", customIcon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", iconResource: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2362
    .local v2, cn:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    .line 2363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v14, v2}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v14

    iput v14, v9, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 2365
    :cond_2
    return-object v9

    .line 2325
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v9           #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v1       #bitmap:Landroid/os/Parcelable;
    :cond_3
    const-string v14, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 2326
    .local v5, extra:Landroid/os/Parcelable;
    if-eqz v5, :cond_0

    instance-of v14, v5, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v14, :cond_0

    .line 2328
    :try_start_0
    move-object v0, v5

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v7, v0

    .line 2329
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2330
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    iget-object v14, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 2332
    .local v13, resources:Landroid/content/res/Resources;
    iget-object v14, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2333
    .local v8, id:I
    if-eqz v8, :cond_0

    .line 2334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v15, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v13, v8, v15}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 2335
    .end local v8           #id:I
    .end local v12           #packageManager:Landroid/content/pm/PackageManager;
    .end local v13           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 2336
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not load shortcut icon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2347
    .end local v1           #bitmap:Landroid/os/Parcelable;
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #extra:Landroid/os/Parcelable;
    .restart local v9       #info:Lcom/android/launcher2/HomeShortcutItem;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2348
    const/4 v14, 0x1

    iput-boolean v14, v9, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_1
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 3
    .parameter "callbacks"

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1025
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 1026
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->onLocaleChanged()V

    .line 1029
    const-string v0, "Launcher.Model"

    const-string v2, "MenuAppModel.onLocaleChanged called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    monitor-exit v1

    .line 1032
    return-void

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1040
    const-string v9, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive intent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1047
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 1048
    .local v6, packageName:Ljava/lang/String;
    const-string v9, "android.intent.extra.REPLACING"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1050
    .local v8, replacing:Z
    const/4 v5, 0x0

    .line 1052
    .local v5, op:I
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 1105
    .end local v5           #op:I
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #replacing:Z
    :cond_1
    :goto_0
    return-void

    .line 1057
    .restart local v5       #op:I
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v8       #replacing:Z
    :cond_2
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1058
    const/4 v5, 0x2

    .line 1073
    :cond_3
    :goto_1
    if-eqz v5, :cond_1

    .line 1074
    new-instance v9, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-direct {v9, p0, v5, v10}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 1059
    :cond_4
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1060
    if-nez v8, :cond_3

    .line 1061
    const/4 v5, 0x3

    goto :goto_1

    .line 1065
    :cond_5
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1066
    if-nez v8, :cond_6

    .line 1067
    const/4 v5, 0x1

    goto :goto_1

    .line 1069
    :cond_6
    const/4 v5, 0x2

    goto :goto_1

    .line 1077
    .end local v5           #op:I
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #replacing:Z
    :cond_7
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1078
    const-string v9, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1079
    .local v7, packages:[Ljava/lang/String;
    new-instance v9, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v10, 0x1

    invoke-direct {v9, p0, v10, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 1080
    .end local v7           #packages:[Ljava/lang/String;
    :cond_8
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1081
    const-string v9, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1082
    .restart local v7       #packages:[Ljava/lang/String;
    new-instance v9, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v10, 0x4

    invoke-direct {v9, p0, v10, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 1084
    .end local v7           #packages:[Ljava/lang/String;
    :cond_9
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1087
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1088
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0

    .line 1090
    :cond_a
    const-string v9, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1092
    :cond_b
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_1

    .line 1093
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1094
    .local v1, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v1, :cond_1

    .line 1095
    invoke-interface {v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0

    .line 1098
    .end local v1           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_c
    const-string v9, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1100
    const-string v9, "easymode"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1101
    .local v2, easyMode:Z
    const-string v9, "easymode_from"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1102
    .local v3, from:Ljava/lang/String;
    const-string v9, "settings"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1103
    .local v4, fromSettings:Z
    if-eqz v2, :cond_d

    const/4 v9, 0x0

    :goto_2
    invoke-direct {p0, v9, v4}, Lcom/android/launcher2/LauncherModel;->toggleEasyMode(IZ)V

    goto/16 :goto_0

    :cond_d
    const/4 v9, 0x1

    goto :goto_2
.end method

.method public reloadBadges()V
    .locals 3

    .prologue
    .line 2431
    new-instance v0, Lcom/android/launcher2/LauncherModel$13;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$13;-><init>(Lcom/android/launcher2/LauncherModel;)V

    .line 2457
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2458
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2462
    :goto_0
    return-void

    .line 2460
    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startLoader(Z)V
    .locals 4
    .parameter "isLaunching"

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1155
    :try_start_0
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLoader. isLaunching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1162
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    or-int/2addr p1, v0

    .line 1163
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherModel;Z)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1164
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1165
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1167
    :cond_0
    monitor-exit v1

    .line 1168
    return-void

    .line 1167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 3

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1128
    .local v0, cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1129
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherModel;->startLoader(Z)V

    .line 1135
    :goto_1
    return-void

    .line 1127
    .end local v0           #cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v0, v1

    goto :goto_0

    .line 1131
    .restart local v0       #cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1132
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    .line 1133
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unbindWorkspaceItems()V
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method
