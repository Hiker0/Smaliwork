.class Lcom/android/launcher2/HomePendingItem;
.super Lcom/android/launcher2/HomeItem;
.source "HomePendingItem.java"


# instance fields
.field componentName:Landroid/content/ComponentName;

.field public mSystemApp:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, pkgName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    return-object v0
.end method
