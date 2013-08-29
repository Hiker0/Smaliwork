.class public Lcom/android/launcher2/ContextualPageNotification;
.super Ljava/lang/Object;
.source "ContextualPageNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextualPageNotification"

.field private static lastNotiType:I

.field private static mCPMgr:Lcom/android/launcher2/ContextualPageManager;

.field private static notiIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/ContextualPageNotification;->notiIdList:Ljava/util/ArrayList;

    .line 48
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher2/ContextualPageNotification;->lastNotiType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageNotification;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 52
    return-void
.end method

.method static synthetic access$000()Lcom/android/launcher2/ContextualPageManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/launcher2/ContextualPageNotification;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/ContextualPageNotification;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageNotification;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 272
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 276
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    const/4 v1, 0x0

    .line 280
    return-object v0

    .line 272
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private getImageView(I)I
    .locals 1
    .parameter "num"

    .prologue
    .line 247
    packed-switch p1, :pswitch_data_0

    .line 264
    const v0, 0x7f070029

    .line 268
    .local v0, icon:I
    :goto_0
    return v0

    .line 249
    .end local v0           #icon:I
    :pswitch_0
    const v0, 0x7f070029

    .line 250
    .restart local v0       #icon:I
    goto :goto_0

    .line 252
    .end local v0           #icon:I
    :pswitch_1
    const v0, 0x7f07002a

    .line 253
    .restart local v0       #icon:I
    goto :goto_0

    .line 255
    .end local v0           #icon:I
    :pswitch_2
    const v0, 0x7f07002b

    .line 256
    .restart local v0       #icon:I
    goto :goto_0

    .line 258
    .end local v0           #icon:I
    :pswitch_3
    const v0, 0x7f07002c

    .line 259
    .restart local v0       #icon:I
    goto :goto_0

    .line 261
    .end local v0           #icon:I
    :pswitch_4
    const v0, 0x7f07002d

    .line 262
    .restart local v0       #icon:I
    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getLastNotificationType()I
    .locals 1

    .prologue
    .line 288
    sget v0, Lcom/android/launcher2/ContextualPageNotification;->lastNotiType:I

    return v0
.end method

.method public notificationClear(Landroid/content/Context;IZ)V
    .locals 6
    .parameter "context"
    .parameter "notiID"
    .parameter "addCP"

    .prologue
    const/4 v5, -0x1

    .line 199
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 201
    .local v2, notiManager:Landroid/app/NotificationManager;
    if-nez p3, :cond_2

    .line 202
    const/4 v0, -0x1

    .line 203
    .local v0, cpType:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 204
    sget-object v3, Lcom/android/launcher2/ContextualPageNotification;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const v3, 0x7f020069

    sub-int v3, p2, v3

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/launcher2/ContextualPageNotification;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 205
    sget-object v3, Lcom/android/launcher2/ContextualPageNotification;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    sget-object v4, Lcom/android/launcher2/ContextualPageNotification;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v0

    .line 203
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    if-eq v0, v5, :cond_4

    .line 209
    sput v0, Lcom/android/launcher2/ContextualPageNotification;->lastNotiType:I

    .line 210
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/ContextualPageNotification;->notificationSend(Landroid/content/Context;I)V

    .line 216
    .end local v0           #cpType:I
    .end local v1           #i:I
    :cond_2
    :goto_1
    invoke-virtual {v2, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 218
    sget-object v3, Lcom/android/launcher2/ContextualPageNotification;->notiIdList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    sget-object v3, Lcom/android/launcher2/ContextualPageNotification;->notiIdList:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher2/ContextualPageNotification;->notiIdList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 220
    :cond_3
    return-void

    .line 213
    .restart local v0       #cpType:I
    .restart local v1       #i:I
    :cond_4
    sput v5, Lcom/android/launcher2/ContextualPageNotification;->lastNotiType:I

    goto :goto_1
.end method

.method public notificationClearAll(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 223
    sget-object v3, Lcom/android/launcher2/ContextualPageNotification;->notiIdList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 224
    sget-object v3, Lcom/android/launcher2/ContextualPageNotification;->notiIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 225
    .local v2, notiId:I
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 226
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 230
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nm:Landroid/app/NotificationManager;
    .end local v2           #notiId:I
    :cond_0
    const/4 v3, -0x1

    sput v3, Lcom/android/launcher2/ContextualPageNotification;->lastNotiType:I

    .line 231
    return-void
.end method

.method public notificationClickEvent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 7
    .parameter "context"
    .parameter "pm"
    .parameter "intent"
    .parameter "num"
    .parameter "notiViews"

    .prologue
    const/4 v6, 0x0

    .line 173
    invoke-direct {p0, p4}, Lcom/android/launcher2/ContextualPageNotification;->getImageView(I)I

    move-result v2

    .line 175
    .local v2, iIcon:I
    if-eqz p3, :cond_1

    .line 176
    invoke-virtual {p2, p3, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 178
    .local v4, rInfo:Landroid/content/pm/ResolveInfo;
    const/high16 v5, 0x800

    invoke-static {p1, v6, p3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 180
    .local v3, pIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    .line 181
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 182
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, p2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher2/ContextualPageNotification;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 184
    .local v1, bIcon:Landroid/graphics/Bitmap;
    invoke-virtual {p5, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 185
    invoke-virtual {p5, v2, v3}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 193
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #bIcon:Landroid/graphics/Bitmap;
    .end local v3           #pIntent:Landroid/app/PendingIntent;
    .end local v4           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 195
    return-object p5

    .line 190
    :cond_1
    const-string v5, "ContextualPageNotification"

    const-string v6, "notificationClickEvent : intent is NULL!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notificationCreate(Landroid/content/Context;III)Landroid/widget/RemoteViews;
    .locals 17
    .parameter "context"
    .parameter "cpType"
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 122
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030009

    invoke-direct {v6, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 124
    .local v6, notiViews:Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 125
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    .line 127
    .local v14, packageName:Ljava/lang/String;
    sget-object v1, Lcom/android/launcher2/ContextualPageNotification;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/launcher2/ContextualPageManager;->getHotseatItems(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 129
    .local v9, hotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    const v1, 0x7f070028

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 131
    const/4 v5, 0x0

    .line 132
    .local v5, i:I
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_1

    .line 133
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v14, v1, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->packageName:Ljava/lang/String;

    .line 134
    invoke-virtual {v3, v14}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 135
    .local v11, intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v2, v1, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v1, v1, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-direct {v8, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v8, cpName:Landroid/content/ComponentName;
    const-string v1, "ContextualPageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "packageName : "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " @ "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-eqz v11, :cond_0

    .line 140
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v4, launch:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    const/high16 v1, 0x1022

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 146
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/ContextualPageNotification;->notificationClickEvent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 132
    .end local v4           #launch:Landroid/content/Intent;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    .end local v8           #cpName:Landroid/content/ComponentName;
    .end local v11           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v5, v1, :cond_2

    .line 151
    sget-object v1, Lcom/android/launcher2/ContextualPageNotification;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const v1, 0x7f020069

    add-int v12, v1, p2

    .line 152
    .local v12, notiID:I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher2/ContextualPageNotification;->getImageView(I)I

    move-result v10

    .line 153
    .local v10, iIcon:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageNotification;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 154
    .local v15, res:Landroid/content/res/Resources;
    move/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/ContextualPageNotification;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 156
    .local v7, bIcon:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 157
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher"

    const-string v16, "com.android.launcher2.Launcher"

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "com.android.launcher2.ContextualPageManager.NOTI_CLEAR"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "com.android.launcher2.ContextualPageManager.NOTI_CLEAR"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/4 v1, 0x0

    const/high16 v2, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 165
    .local v13, pIntent:Landroid/app/PendingIntent;
    invoke-virtual {v6, v10, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 166
    invoke-virtual {v6, v10, v13}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 169
    .end local v7           #bIcon:Landroid/graphics/Bitmap;
    .end local v10           #iIcon:I
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #notiID:I
    .end local v13           #pIntent:Landroid/app/PendingIntent;
    .end local v15           #res:Landroid/content/res/Resources;
    :cond_2
    return-object v6
.end method

.method public notificationGoContextualPage(I)V
    .locals 5
    .parameter "notiID"

    .prologue
    .line 234
    sget-object v1, Lcom/android/launcher2/ContextualPageNotification;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const v1, 0x7f020069

    sub-int v0, p1, v1

    .line 236
    .local v0, cpType:I
    iget-object v1, p0, Lcom/android/launcher2/ContextualPageNotification;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v2, Lcom/android/launcher2/ContextualPageNotification$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/ContextualPageNotification$1;-><init>(Lcom/android/launcher2/ContextualPageNotification;I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    return-void
.end method

.method public notificationInitialize(Lcom/android/launcher2/HomeFragment;Lcom/android/launcher2/ContextualPageManager;)V
    .locals 1
    .parameter "hf"
    .parameter "cpMgr"

    .prologue
    .line 55
    sput-object p2, Lcom/android/launcher2/ContextualPageNotification;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    .line 56
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageNotification;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 57
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageNotification;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageNotification;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 58
    return-void
.end method

.method public notificationSend(Landroid/content/Context;I)V
    .locals 13
    .parameter "context"
    .parameter "cpType"

    .prologue
    const/4 v12, 0x0

    .line 61
    sget-object v9, Lcom/android/launcher2/ContextualPageNotification;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const v9, 0x7f020069

    add-int v2, v9, p2

    .line 63
    .local v2, notiID:I
    const-string v9, "ContextualPageNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notificationSend cpType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 67
    .local v3, notiManager:Landroid/app/NotificationManager;
    const/4 v7, -0x1

    .line 68
    .local v7, tickerIcon:I
    const/4 v0, -0x1

    .line 69
    .local v0, icon:I
    const/4 v8, -0x1

    .line 70
    .local v8, title:I
    packed-switch p2, :pswitch_data_0

    .line 92
    const v7, 0x7f020069

    .line 93
    const v0, 0x7f0200a4

    .line 94
    const v8, 0x7f0e00b3

    .line 97
    :goto_0
    new-instance v6, Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v7, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 101
    .local v6, notify:Landroid/app/Notification;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v5, notificationIntent:Landroid/content/Intent;
    invoke-static {p1, v12, v5, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 103
    .local v1, launchIntent:Landroid/app/PendingIntent;
    iput-object v1, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 105
    const/16 v9, 0x10

    iput v9, v6, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 107
    invoke-virtual {p0, p1, p2, v0, v8}, Lcom/android/launcher2/ContextualPageNotification;->notificationCreate(Landroid/content/Context;III)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 108
    .local v4, notiViews:Landroid/widget/RemoteViews;
    iput-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 110
    iget v9, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/app/Notification;->flags:I

    .line 111
    const/4 v9, -0x1

    iput v9, v6, Landroid/app/Notification;->priority:I

    .line 113
    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 114
    const/4 v3, 0x0

    .line 115
    const/4 v6, 0x0

    .line 117
    sget-object v9, Lcom/android/launcher2/ContextualPageNotification;->notiIdList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 118
    sget-object v9, Lcom/android/launcher2/ContextualPageNotification;->notiIdList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    return-void

    .line 72
    .end local v1           #launchIntent:Landroid/app/PendingIntent;
    .end local v4           #notiViews:Landroid/widget/RemoteViews;
    .end local v5           #notificationIntent:Landroid/content/Intent;
    .end local v6           #notify:Landroid/app/Notification;
    :pswitch_0
    const v7, 0x7f020069

    .line 73
    const v0, 0x7f0200a4

    .line 74
    const v8, 0x7f0e00b3

    .line 75
    goto :goto_0

    .line 77
    :pswitch_1
    const v7, 0x7f020068

    .line 78
    const v0, 0x7f0200a2

    .line 79
    const v8, 0x7f0e00b5

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    const v7, 0x7f020066

    .line 83
    const v0, 0x7f0200a3

    .line 84
    const v8, 0x7f0e00b7

    .line 85
    goto :goto_0

    .line 87
    :pswitch_3
    const v7, 0x7f020067

    .line 88
    const v0, 0x7f0200a1

    .line 89
    const v8, 0x7f0e00b9

    .line 90
    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setLastNotificationType(I)V
    .locals 0
    .parameter "cpType"

    .prologue
    .line 284
    sput p1, Lcom/android/launcher2/ContextualPageNotification;->lastNotiType:I

    .line 285
    return-void
.end method
