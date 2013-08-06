.class public Lcom/android/launcher2/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field public static final ACTION_EASY_MODE:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field private static final PREFERENCES_SCREENCOUNT:Ljava/lang/String; = "screencount"

.field private static final PREFERENCES_SCREENCOUNT_EASY:Ljava/lang/String; = "screencount.simple"

.field private static final PREFERENCES_SCREENINDEX:Ljava/lang/String; = "homescreenindex"

.field private static final PREFERENCES_SCREENINDEX_EASY:Ljava/lang/String; = "homescreenindex.simple"

.field public static final SHOW_EMPTY_PAGE_MSG_KEY:Ljava/lang/String; = "SHOW_EMPTY_PAGE_MSG"

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static sHasMenuKey:Z

.field private static sIsScreenLarge:Z

.field private static sIsScreenSmall:Z

.field private static sIsTabletLayout:Z

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaxScreenCount:I

.field private static sScreenCountEasy:I

.field private static sScreenCountNormal:I

.field private static sScreenDensity:F

.field private static sScreenIndexEasy:I

.field private static sScreenIndexNormal:I


# instance fields
.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    .line 231
    new-instance v0, Lcom/android/launcher2/LauncherApplication$1;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$1;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 241
    new-instance v0, Lcom/android/launcher2/LauncherApplication$2;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$2;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public static getHomeScreenIndex()I
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    goto :goto_0
.end method

.method public static getMaxScreenCount()I
    .locals 1

    .prologue
    .line 350
    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    return v0
.end method

.method public static getScreenCount()I
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    goto :goto_0
.end method

.method public static getScreenDensity()F
    .locals 1

    .prologue
    .line 291
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    return v0
.end method

.method public static hasMenuKey()Z
    .locals 1

    .prologue
    .line 270
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sHasMenuKey:Z

    return v0
.end method

.method private static isNormalMode()Z
    .locals 2

    .prologue
    .line 355
    sget-object v1, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider;

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

.method public static isScreenLandscape(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenLarge()Z
    .locals 1

    .prologue
    .line 278
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    return v0
.end method

.method public static isScreenSmall()Z
    .locals 1

    .prologue
    .line 274
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenSmall:Z

    return v0
.end method

.method public static isTabletLayout()Z
    .locals 1

    .prologue
    .line 287
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsTabletLayout:Z

    return v0
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "homeScreenIndex"

    .prologue
    const/4 v3, 0x0

    .line 301
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-eq v2, p1, :cond_0

    .line 303
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 304
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 305
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "homescreenindex"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    if-eq v2, p1, :cond_0

    .line 311
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 312
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 313
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "homescreenindex.simple"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setScreenCount(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "screenCount"

    .prologue
    const/4 v3, 0x0

    .line 328
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-eq v2, p1, :cond_0

    .line 330
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 331
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 332
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencount"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-eq v2, p1, :cond_0

    .line 338
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 339
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 340
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencount.simple"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method getLauncherProvider()Lcom/android/launcher2/LauncherProvider;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider;

    return-object v0
.end method

.method getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 107
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 111
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-nez v6, :cond_0

    const v6, 0x7f090002

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_0
    move v6, v8

    :goto_0
    sput-boolean v6, Lcom/android/launcher2/LauncherApplication;->sHasMenuKey:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v6, 0xf

    .line 113
    .local v5, screenSize:I
    if-ne v5, v8, :cond_f

    move v6, v8

    :goto_1
    sput-boolean v6, Lcom/android/launcher2/LauncherApplication;->sIsScreenSmall:Z

    .line 114
    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_10

    :cond_1
    move v6, v8

    :goto_2
    sput-boolean v6, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f090003

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    sput-boolean v6, Lcom/android/launcher2/LauncherApplication;->sIsTabletLayout:Z

    .line 119
    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iput-object v6, p0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    .line 120
    iget-object v6, p0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6, p0}, Lcom/android/launcher2/MenuAppModel;->setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V

    .line 121
    new-instance v6, Lcom/android/launcher2/PkgResCache;

    invoke-direct {v6, p0}, Lcom/android/launcher2/PkgResCache;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    iput-object v6, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 122
    new-instance v6, Lcom/android/launcher2/LauncherModel;

    iget-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-direct {v6, p0, v9}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V

    iput-object v6, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v6, "package"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 129
    iget-object v6, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v6, v0}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v6, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v6, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v6, v0}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 143
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    const-string v6, "com.android.launcher2.prefs"

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 150
    .line 154
    .local v4, resources:Landroid/content/res/Resources;
    const v6, 0x7f0a0017

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    .line 162
    const-string v6, "screencount"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 163
    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v6, :cond_2

    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v9, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v6, v9, :cond_4

    .line 164
    :cond_2
    const v6, 0x7f0a0015

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v6, :cond_3

    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v9, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v6, v9, :cond_4

    .line 169
    :cond_3
    sget v6, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 172
    :cond_4
    const-string v6, "screencount.simple"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 173
    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-lez v6, :cond_5

    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    sget v9, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v6, v9, :cond_7

    .line 174
    :cond_5
    const v6, 0x7f0a0016

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 178
    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-lez v6, :cond_6

    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    sget v9, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v6, v9, :cond_7

    .line 179
    :cond_6
    sget v6, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 188
    .line 189
    :cond_7
    const-string v6, "homescreenindex"

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 190
    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v6, :cond_8

    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-le v6, v9, :cond_a

    .line 191
    :cond_8
    const v6, 0x7f0a0018

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 195
    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v6, :cond_9

    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-le v6, v9, :cond_a

    .line 196
    :cond_9
    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 199
    :cond_a
    const-string v6, "homescreenindex.simple"

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 200
    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    if-ltz v6, :cond_b

    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-le v6, v9, :cond_d

    .line 201
    :cond_b
    const v6, 0x7f0a0019

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 205
    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    if-ltz v6, :cond_c

    sget v6, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-le v6, v9, :cond_d

    .line 206
    :cond_c
    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 210
    :cond_d
    sget-object v6, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    iget-object v6, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherModel;->reloadBadges()V

    .line 212
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #resources:Landroid/content/res/Resources;
    .end local v5           #screenSize:I
    :cond_e
    move v6, v7

    .line 111
    goto/16 :goto_0

    .restart local v5       #screenSize:I
    :cond_f
    move v6, v7

    .line 113
    goto/16 :goto_1

    :cond_10
    move v6, v7

    .line 114
    goto/16 :goto_2
    .line 167
    .restart local v0       #filter:Landroid/content/IntentFilter;
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #resources:Landroid/content/res/Resources;
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 221
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 226
    return-void
.end method

.method setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 257
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 258
    return-void
.end method
