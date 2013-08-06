.class public Lcom/android/launcher2/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;,
        Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;,
        Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# static fields
.field private static final GALLERY:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final LIVE_WALLPAPERS:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field static final MODE_BOTH_WALLPAPER:I = 0x2

.field static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final WALLPAPER_GALLERY:Ljava/lang/String; = "com.sec.android.app.wallpaperchooser"

.field static final WALLPAPER_MODE:Ljava/lang/String; = "SET_WALLPAPER_MODE"


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mGrid:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LockScreenWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 65
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/launcher2/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "both"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 70
    iput-boolean v6, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, pickWallpaper:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    .line 78
    new-instance v1, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    .line 79
    .local v1, mAlphaComparator:Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 83
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 85
    new-instance v3, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAdapter:Landroid/widget/BaseAdapter;

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 87
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f07008c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    .line 88
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;

    invoke-direct {v4, p0}, Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->setupAlert()V

    .line 93
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 97
    const-string v3, "com.sec.android.gallery3d"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v3, :cond_0

    .line 100
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    .line 121
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->finish()V

    .line 122
    return-void

    .line 102
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 104
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "com.android.wallpaper.livepicker"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v2, intentLiveWallpaperChooser:Landroid/content/Intent;
    const-string v3, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.wallpaper.livepicker"

    const-string v5, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 111
    .end local v2           #intentLiveWallpaperChooser:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v1, intentCallWallpaperChooser:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v3, :cond_3

    .line 113
    const-string v3, "SET_WALLPAPER_MODE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    :goto_2
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.wallpaperchooser"

    const-string v5, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 115
    :cond_3
    const-string v3, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method
