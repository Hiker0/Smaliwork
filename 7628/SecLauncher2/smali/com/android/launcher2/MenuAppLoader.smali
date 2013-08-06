.class public Lcom/android/launcher2/MenuAppLoader;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"


# static fields
.field private static final DEBUG_LOADER:Z = true

.field private static final DEFAULT_APP_COUNT:I = 0x32

.field private static final DEFAULT_FOLDER_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MenuAppLoader"


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAbortLoader:Z

.field private mAllItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private final mLauncherApp:Lcom/android/launcher2/LauncherApplication;

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V
    .locals 2
    .parameter "context"
    .parameter "pkgResCache"
    .parameter "badgeCache"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    .line 79
    new-instance v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v0}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    .line 85
    iput-object p1, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    .line 86
    iput-object p2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 87
    iput-object p3, p0, Lcom/android/launcher2/MenuAppLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 88
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 89
    return-void
.end method

.method hide(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .local v1, hideapp:Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_1

    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    .end local v1           #hideapp:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void

    .restart local v1       #hideapp:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .local v0, app:Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.vending"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

#huaqi end }
.method private createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;
    .locals 9
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 126
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    .local v0, activity:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    .line 128
    .local v4, item:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_1

    .line 129
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 130
    .local v5, pkgName:Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v1, cn:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 132
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_0

    move v3, v6

    .line 134
    .local v3, isSystemApp:Z
    :cond_0
    new-instance v4, Lcom/android/launcher2/AppItem;

    .end local v4           #item:Lcom/android/launcher2/AppItem;
    invoke-direct {v4, v1, v3}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    .line 135
    .restart local v4       #item:Lcom/android/launcher2/AppItem;
    iput-boolean v6, v4, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 136
    invoke-direct {p0, v4, p1, v1}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V

    .line 137
    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V

    .line 138
    iget-boolean v6, v4, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v6, :cond_1

    .line 139
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v6, v4, Lcom/android/launcher2/AppItem;->mCreateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #isSystemApp:Z
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 146
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    iget-object v7, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_2
    return-object v4

    .line 140
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v3       #isSystemApp:Z
    .restart local v5       #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 141
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "MenuAppLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find PackageInfo for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .locals 3
    .parameter "item"

    .prologue
    .line 157
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 158
    .local v0, newApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    .line 159
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 166
    :goto_0
    iget-wide v1, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 167
    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 168
    iget v1, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 169
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 170
    return-object v0

    .line 161
    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 162
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v1, v1, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_1
    iput-wide v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 163
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    .line 164
    iget-boolean v1, p1, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    goto :goto_0

    .line 162
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_1
.end method

.method private findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0
	
	#huaqi start{

	invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppLoader;->hide(Ljava/util/List;)V
	
	#huaqi end}

    .line 188
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 191
    :cond_0
    return-object v0
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 200
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 201
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    const/4 v4, 0x1

    .line 205
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;
    .locals 4
    .parameter "folderId"

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 221
    .local v1, item:Lcom/android/launcher2/AppItem;
    if-nez v1, :cond_1

    .line 222
    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    .line 223
    .restart local v0       #folder:Lcom/android/launcher2/AppFolderItem;
    iput-wide p1, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 224
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 225
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 226
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    move-object v0, v1

    .line 228
    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    goto :goto_0
.end method

.method private setBadgeCount(Lcom/android/launcher2/AppItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 461
    return-void
.end method

.method private setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V
    .locals 2
    .parameter "item"
    .parameter "info"
    .parameter "cn"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 476
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    iput v0, p1, Lcom/android/launcher2/BaseItem;->mIconResId:I

    .line 477
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    iput v0, p1, Lcom/android/launcher2/BaseItem;->mTitleResId:I

    .line 479
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 481
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 483
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateOrCreateApp(Landroid/content/ComponentName;JJIIZLjava/lang/String;)Lcom/android/launcher2/AppItem;
    .locals 13
    .parameter "cn"
    .parameter "id"
    .parameter "folderId"
    .parameter "screen"
    .parameter "cell"
    .parameter "hidden"
    .parameter "title"

    .prologue
    .line 524
    const/4 v5, 0x0

    .line 525
    .local v5, item:Lcom/android/launcher2/AppItem;
    if-eqz p1, :cond_2

    .line 526
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #item:Lcom/android/launcher2/AppItem;
    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 527
    .restart local v5       #item:Lcom/android/launcher2/AppItem;
    if-nez v5, :cond_0

    .line 531
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, pkgName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/16 v10, 0x2000

    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 537
    .local v7, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 538
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x4

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    .line 542
    new-instance v6, Lcom/android/launcher2/AppItem;

    const/4 v9, 0x0

    invoke-direct {v6, p1, v9}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v5           #item:Lcom/android/launcher2/AppItem;
    .local v6, item:Lcom/android/launcher2/AppItem;
    :try_start_1
    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 544
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v9}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v6, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 545
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 546
    iget-wide v9, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v9, v6, Lcom/android/launcher2/AppItem;->mCreateTime:J

    .line 547
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v9, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-direct {p0, v6}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 558
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #item:Lcom/android/launcher2/AppItem;
    .end local v7           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #pkgName:Ljava/lang/String;
    .restart local v5       #item:Lcom/android/launcher2/AppItem;
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    iget-wide v9, v5, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 559
    iput-wide p2, v5, Lcom/android/launcher2/BaseItem;->mId:J

    .line 560
    move/from16 v0, p6

    iput v0, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 561
    move/from16 v0, p7

    iput v0, v5, Lcom/android/launcher2/AppItem;->mCell:I

    .line 562
    move/from16 v0, p8

    iput-boolean v0, v5, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 563
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 567
    const-wide/16 v9, -0x1

    cmp-long v9, p4, v9

    if-eqz v9, :cond_1

    .line 568
    move-wide/from16 v0, p4

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v4

    .line 569
    .local v4, folder:Lcom/android/launcher2/AppFolderItem;
    if-eqz v4, :cond_3

    .line 570
    invoke-virtual {v4, v5}, Lcom/android/launcher2/AppFolderItem;->loadItem(Lcom/android/launcher2/AppItem;)V

    .line 583
    .end local v4           #folder:Lcom/android/launcher2/AppFolderItem;
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 584
    .local v3, dupItem:Lcom/android/launcher2/AppItem;
    if-eqz v3, :cond_2

    iget-object v9, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v9, v10, :cond_2

    .line 585
    check-cast v3, Lcom/android/launcher2/AppFolderItem;

    .end local v3           #dupItem:Lcom/android/launcher2/AppItem;
    invoke-virtual {v3}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    .line 589
    :cond_2
    return-object v5

    .line 572
    .restart local v4       #folder:Lcom/android/launcher2/AppFolderItem;
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 573
    const/4 v9, -0x1

    iput v9, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 574
    const/4 v9, -0x1

    iput v9, v5, Lcom/android/launcher2/AppItem;->mCell:I

    goto :goto_1

    .line 550
    .end local v4           #folder:Lcom/android/launcher2/AppFolderItem;
    :catch_0
    move-exception v9

    goto :goto_0

    .end local v5           #item:Lcom/android/launcher2/AppItem;
    .restart local v2       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #item:Lcom/android/launcher2/AppItem;
    .restart local v7       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v8       #pkgName:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v5, v6

    .end local v6           #item:Lcom/android/launcher2/AppItem;
    .restart local v5       #item:Lcom/android/launcher2/AppItem;
    goto :goto_0
.end method

.method private updateOrCreateFolder(JIILjava/lang/String;)Lcom/android/launcher2/AppFolderItem;
    .locals 3
    .parameter "folderId"
    .parameter "screen"
    .parameter "cell"
    .parameter "title"

    .prologue
    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_0

    .line 609
    iput p3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 610
    iput p4, v0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 611
    iput-object p5, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 612
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 615
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abortLoader()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 97
    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .locals 8
    .parameter "packageName"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v4, newApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v5

    .line 106
    .local v5, provider:Lcom/android/launcher2/LauncherProvider;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 107
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v2

    .line 108
    .local v2, item:Lcom/android/launcher2/AppItem;
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 110
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 111
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppLoader;->createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 116
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6, v4}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 117
    :cond_2
    return-void
.end method

.method public loadAllItems()Ljava/util/Map;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    .line 241
    .local v35, t0:J
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 243
    new-instance v3, Ljava/util/HashMap;

    const/16 v13, 0x3c

    invoke-direct {v3, v13}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 250
    new-instance v32, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v32, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 254
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const/16 v20, 0x0

    .line 255
    .local v20, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20
	
	#huaqi start{
	
	move-object/from16 v5, v20
	move-object/from16 v6, p0
	invoke-virtual {v6, v5}, Lcom/android/launcher2/MenuAppLoader;->hide(Ljava/util/List;)V
	
	#huaqi end}

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v37

    .line 257
    .local v37, t1:J
    if-nez v20, :cond_0

    .line 258
    const/16 v19, 0x0

    .line 384
    :goto_0
    return-object v19

    .line 260
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    .line 261
    .local v30, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v3, :cond_3

    .line 265
    .end local v30           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v39

    .line 268
    .local v39, t2:J
    sget-object v3, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 270
    .local v21, c:Landroid/database/Cursor;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v41

    .line 273
    .local v41, t3:J
    :try_start_0
    const-string v3, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 274
    .local v29, idIndex:I
    const-string v3, "folderId"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 275
    .local v26, folderIdIndex:I
    const-string v3, "screen"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 276
    .local v34, screenIndex:I
    const-string v3, "cell"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 277
    .local v22, cellIndex:I
    const-string v3, "hidden"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 278
    .local v27, hiddenIndex:I
    const-string v3, "title"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 279
    .local v47, titleIndex:I
    const-string v3, "componentName"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 281
    .local v24, componentNameIndex:I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v3, :cond_6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 282
    const/16 v31, 0x0

    .line 283
    .local v31, item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 284
    .local v5, id:J
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 285
    .local v7, folderId:J
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 286
    .local v9, screen:I
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 287
    .local v10, cell:I
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v11, 0x1

    .line 288
    .local v11, hidden:Z
    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 289
    .local v12, title:Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 290
    .local v23, component:Ljava/lang/String;
    if-eqz v23, :cond_5

    .line 291
    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .local v4, cn:Landroid/content/ComponentName;
    move-object/from16 v3, p0

    .line 293
    invoke-direct/range {v3 .. v12}, Lcom/android/launcher2/MenuAppLoader;->updateOrCreateApp(Landroid/content/ComponentName;JJIIZLjava/lang/String;)Lcom/android/launcher2/AppItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v31

    .line 294
    if-nez v31, :cond_2

    goto :goto_2

    .line 263
    .end local v4           #cn:Landroid/content/ComponentName;
    .end local v5           #id:J
    .end local v7           #folderId:J
    .end local v9           #screen:I
    .end local v10           #cell:I
    .end local v11           #hidden:Z
    .end local v12           #title:Ljava/lang/String;
    .end local v21           #c:Landroid/database/Cursor;
    .end local v22           #cellIndex:I
    .end local v23           #component:Ljava/lang/String;
    .end local v24           #componentNameIndex:I
    .end local v26           #folderIdIndex:I
    .end local v27           #hiddenIndex:I
    .end local v29           #idIndex:I
    .end local v31           #item:Lcom/android/launcher2/AppItem;
    .end local v34           #screenIndex:I
    .end local v39           #t2:J
    .end local v41           #t3:J
    .end local v47           #titleIndex:I
    .restart local v30       #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    goto/16 :goto_1

    .line 287
    .end local v30           #info:Landroid/content/pm/ResolveInfo;
    .restart local v5       #id:J
    .restart local v7       #folderId:J
    .restart local v9       #screen:I
    .restart local v10       #cell:I
    .restart local v21       #c:Landroid/database/Cursor;
    .restart local v22       #cellIndex:I
    .restart local v24       #componentNameIndex:I
    .restart local v26       #folderIdIndex:I
    .restart local v27       #hiddenIndex:I
    .restart local v29       #idIndex:I
    .restart local v31       #item:Lcom/android/launcher2/AppItem;
    .restart local v34       #screenIndex:I
    .restart local v39       #t2:J
    .restart local v41       #t3:J
    .restart local v47       #titleIndex:I
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .restart local v11       #hidden:Z
    .restart local v12       #title:Ljava/lang/String;
    .restart local v23       #component:Ljava/lang/String;
    :cond_5
    move-object/from16 v13, p0

    move-wide v14, v5

    move/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v12

    .line 300
    :try_start_1
    invoke-direct/range {v13 .. v18}, Lcom/android/launcher2/MenuAppLoader;->updateOrCreateFolder(JIILjava/lang/String;)Lcom/android/launcher2/AppFolderItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 304
    .end local v5           #id:J
    .end local v7           #folderId:J
    .end local v9           #screen:I
    .end local v10           #cell:I
    .end local v11           #hidden:Z
    .end local v12           #title:Ljava/lang/String;
    .end local v22           #cellIndex:I
    .end local v23           #component:Ljava/lang/String;
    .end local v24           #componentNameIndex:I
    .end local v26           #folderIdIndex:I
    .end local v27           #hiddenIndex:I
    .end local v29           #idIndex:I
    .end local v31           #item:Lcom/android/launcher2/AppItem;
    .end local v34           #screenIndex:I
    .end local v47           #titleIndex:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v22       #cellIndex:I
    .restart local v24       #componentNameIndex:I
    .restart local v26       #folderIdIndex:I
    .restart local v27       #hiddenIndex:I
    .restart local v29       #idIndex:I
    .restart local v34       #screenIndex:I
    .restart local v47       #titleIndex:I
    :cond_6
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v43

    .line 308
    .local v43, t4:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    move-object/from16 v19, v0

    .line 309
    .local v19, allItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v3, :cond_8

    .line 310
    const/16 v19, 0x0

    .line 374
    :cond_7
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v45

    .line 376
    .local v45, t5:J
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadAllItems; aborted: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Query PkgMgr for all main intents: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v37, v35

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Create AppItem for all main intents: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v39, v37

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v39, v35

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Query AppOrder database table: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v41, v39

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v41, v35

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Merge AppOrder and PkgMgr data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v43, v41

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v43, v35

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Normalize items and update DB: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v45, v43

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v45, v35

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    goto/16 :goto_0

    .line 319
    .end local v45           #t5:J
    :cond_8
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 320
    .local v25, created:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/launcher2/AppItem;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_9
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/AppItem;

    .line 321
    .restart local v31       #item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v13, :cond_9

    .line 322
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 330
    .end local v31           #item:Lcom/android/launcher2/AppItem;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v33

    .line 331
    .local v33, provider:Lcom/android/launcher2/LauncherProvider;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_b
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/AppItem;

    .line 332
    .restart local v31       #item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v31

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v15, -0x1

    cmp-long v3, v13, v15

    if-nez v3, :cond_b

    .line 333
    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v13

    move-object/from16 v0, v31

    iput-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 334
    const/4 v3, 0x1

    move-object/from16 v0, v31

    iput-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 335
    move-object/from16 v0, v31

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 342
    .end local v31           #item:Lcom/android/launcher2/AppItem;
    :cond_c
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    sget-object v13, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    const/4 v14, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v13, v14}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    .line 346
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v49, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_d
    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/AppItem;

    .line 348
    .restart local v31       #item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    if-eqz v3, :cond_d

    .line 349
    new-instance v48, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v48 .. v48}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 350
    .local v48, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 351
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v13, :cond_e

    .line 352
    const/4 v3, 0x0

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 361
    :goto_8
    move-object/from16 v0, v31

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-object/from16 v0, v48

    iput-wide v13, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 362
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_11

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v13, v3, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_9
    move-object/from16 v0, v48

    iput-wide v13, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 363
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 364
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/launcher2/AppItem;->mCell:I

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 365
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/launcher2/AppItem;->mHidden:Z

    move-object/from16 v0, v48

    iput-boolean v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    .line 366
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 367
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iput-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 368
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 354
    :cond_e
    const/4 v3, 0x3

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 355
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    goto :goto_8

    .line 358
    :cond_f
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v13, :cond_10

    const/4 v3, 0x4

    :goto_a
    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    goto :goto_8

    :cond_10
    const/4 v3, 0x1

    goto :goto_a

    .line 362
    :cond_11
    const-wide/16 v13, -0x1

    goto :goto_9

    .line 371
    .end local v31           #item:Lcom/android/launcher2/AppItem;
    .end local v48           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_12
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_4
.end method

.method refreshAllApps()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 393
    .local v4, t0:J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v9, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iput-boolean v11, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 395
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 396
    .local v2, item:Lcom/android/launcher2/AppItem;
    iget v12, v2, Lcom/android/launcher2/BaseItem;->mIconResId:I

    if-nez v12, :cond_1

    iget v12, v2, Lcom/android/launcher2/BaseItem;->mTitleResId:I

    if-eqz v12, :cond_2

    .line 397
    :cond_1
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v13, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 398
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v13, v2, Lcom/android/launcher2/BaseItem;->mIconResId:I

    iput v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 399
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v3, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v3, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    .line 400
    .local v3, prevTitle:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v13, v2, Lcom/android/launcher2/BaseItem;->mTitleResId:I

    iput v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    .line 401
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v13, v2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v14, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    .line 402
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v12, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v12, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 403
    const/4 v12, 0x0

    iput-object v12, v2, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 404
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v12, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 406
    if-eqz v3, :cond_6

    .line 407
    iget-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    move v0, v10

    .line 411
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 412
    new-instance v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v8}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 413
    .local v8, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v12, 0x2

    iput v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 414
    iget-wide v12, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 415
    iget-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 416
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v0           #changed:Z
    .end local v3           #prevTitle:Ljava/lang/String;
    .end local v8           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_2
    iget-boolean v12, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v12, :cond_0

    .line 422
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_3
    iget-boolean v10, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v10, :cond_4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 423
    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v10, v9}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 426
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 427
    .local v6, t1:J
    const-string v10, "MenuAppLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "refreshAllApps; aborted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", refresh time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .end local v6           #t1:J
    .restart local v2       #item:Lcom/android/launcher2/AppItem;
    .restart local v3       #prevTitle:Ljava/lang/String;
    :cond_5
    move v0, v11

    .line 407
    goto :goto_0

    .line 409
    :cond_6
    iget-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v12, :cond_7

    move v0, v10

    .restart local v0       #changed:Z
    :goto_1
    goto :goto_0

    .end local v0           #changed:Z
    :cond_7
    move v0, v11

    goto :goto_1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    .line 437
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v2, delApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 439
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    .line 440
    .local v4, item:Lcom/android/launcher2/AppItem;
    iget-object v0, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 441
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 442
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 445
    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 446
    .local v1, delApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v5, 0x5

    iput v5, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 447
    iget-wide v5, v4, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 448
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #delApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v4           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 452
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5, v2}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 453
    :cond_2
    return-void
.end method

.method updateBadgeCounts(Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/BadgeCache$BadgeCount;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, badgeCounts:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher2/BadgeCache$BadgeCount;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    .local v4, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 493
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/launcher2/BadgeCache$BadgeCount;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 494
    .local v0, appItem:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    .line 495
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BadgeCache$BadgeCount;

    iget v3, v5, Lcom/android/launcher2/BadgeCache$BadgeCount;->mCount:I

    .line 496
    .local v3, newCount:I
    iget v5, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-eq v5, v3, :cond_0

    .line 497
    iput v3, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 498
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    .end local v0           #appItem:Lcom/android/launcher2/AppItem;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/launcher2/BadgeCache$BadgeCount;>;"
    .end local v3           #newCount:I
    :cond_1
    return-object v4
.end method

.method public updatePackage(Ljava/lang/String;)V
    .locals 11
    .parameter "packageName"

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 623
    .local v7, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->removePackage(Ljava/lang/String;)V

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v1, appMods:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v8

    .line 630
    .local v8, provider:Lcom/android/launcher2/LauncherProvider;
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppItem;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 631
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 632
    .local v6, item:Lcom/android/launcher2/AppItem;
    iget-object v2, v6, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 633
    .local v2, cn:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 634
    invoke-static {v7, v2}, Lcom/android/launcher2/MenuAppLoader;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 635
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 638
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 639
    .local v0, appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v9, 0x5

    iput v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 640
    iget-wide v9, v6, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 641
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 647
    .end local v0           #appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v6           #item:Lcom/android/launcher2/AppItem;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 648
    .local v4, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .restart local v2       #cn:Landroid/content/ComponentName;
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 651
    .restart local v0       #appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 652
    .restart local v6       #item:Lcom/android/launcher2/AppItem;
    if-nez v6, :cond_5

    .line 653
    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v6

    .line 654
    if-eqz v6, :cond_4

    .line 655
    invoke-virtual {v8}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/android/launcher2/BaseItem;->mId:J

    .line 656
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 657
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-direct {p0, v6}, Lcom/android/launcher2/MenuAppLoader;->createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 665
    :cond_5
    invoke-direct {p0, v6, v4, v2}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V

    .line 666
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    const/4 v9, 0x2

    iput v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 668
    iget-wide v9, v6, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 669
    iget-object v9, v6, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 670
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 673
    .end local v0           #appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #item:Lcom/android/launcher2/AppItem;
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 674
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v9, v1}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_0
.end method
