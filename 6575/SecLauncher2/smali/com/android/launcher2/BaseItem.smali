.class public abstract Lcom/android/launcher2/BaseItem;
.super Ljava/lang/Object;
.source "BaseItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/BaseItem$Type;
    }
.end annotation


# static fields
.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public mBadgeCount:I

.field public mDirty:Z

.field public mIconBitmap:Landroid/graphics/Bitmap;

.field public mIconResId:I

.field public mIconShadowBitmap:Landroid/graphics/Bitmap;

.field public mId:J

.field public mScreen:I

.field public mTitle:Ljava/lang/String;

.field public mTitleResId:I

.field public final mType:Lcom/android/launcher2/BaseItem$Type;

.field public viewForThisHasSeenLightOfDayBefore:Z


# direct methods
.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    .line 96
    iput-object p1, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    .line 97
    return-void
.end method

.method public static getContainingFolderId(Lcom/android/launcher2/BaseItem;)J
    .locals 4
    .parameter "item"

    .prologue
    .line 185
    instance-of v2, p0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v2, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_1

    .line 186
    check-cast p0, Lcom/android/launcher2/AppItem;

    .end local p0
    iget-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 192
    .local v0, id:J
    :cond_0
    :goto_0
    return-wide v0

    .line 187
    .end local v0           #id:J
    .restart local p0
    :cond_1
    instance-of v2, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_2

    .line 188
    check-cast p0, Lcom/android/launcher2/HomeItem;

    .end local p0
    iget-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    .line 189
    .restart local v0       #id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 192
    .end local v0           #id:J
    .restart local p0
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static isFolder(Lcom/android/launcher2/BaseItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x1

    .line 163
    :cond_1
    return v0
.end method

.method public static isItemInFolder(Lcom/android/launcher2/BaseItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, result:Z
    instance-of v2, p0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v2, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_1

    .line 170
    const/4 v1, 0x1

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    instance-of v2, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 172
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 174
    .local v0, homeItem:Lcom/android/launcher2/HomeItem;
    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 177
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public final getItemType()Lcom/android/launcher2/BaseItem$Type;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    return-object v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 145
    return-void
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
