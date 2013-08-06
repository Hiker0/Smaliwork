.class Lcom/android/launcher2/HomePendingSamsungWidget;
.super Lcom/android/launcher2/HomePendingItem;
.source "HomePendingSamsungWidget.java"


# instance fields
.field mInfo:Lcom/android/launcher2/SamsungAppWidgetItem;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/SamsungAppWidgetItem;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 8
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomePendingItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 9
    iput-object p1, p0, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 10
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungAppWidgetItem;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungAppWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungAppWidgetItem;

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
