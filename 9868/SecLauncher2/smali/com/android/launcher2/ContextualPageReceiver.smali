.class public Lcom/android/launcher2/ContextualPageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContextualPageReceiver.java"


# static fields
.field private static final ACTION_CONTEXTUALPAGE_CHANGE:Ljava/lang/String; = "android.settings.CONTEXTUALPAGE_CHANGED"

.field private static final ACTION_SPEN_EVENT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final CARCRADLE_MASK:I = 0x4

.field private static final DESKCRADLE_MASK:I = 0x8

.field private static final EARPHONE_MASK:I = 0x2

.field private static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final SPEN_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContextualPageReceiver"

.field private static cpBitFlag:I

.field private static mCPMgr:Lcom/android/launcher2/ContextualPageManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageReceiver;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    .line 55
    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/ContextualPageReceiver;
    .locals 3
    .parameter "context"
    .parameter "cpMgr"

    .prologue
    .line 65
    new-instance v0, Lcom/android/launcher2/ContextualPageReceiver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ContextualPageReceiver;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, cpReceiver:Lcom/android/launcher2/ContextualPageReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v2, "android.settings.CONTEXTUALPAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    sput-object p1, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    .line 79
    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageReceiver;->checkAllContextualPage()V

    .line 81
    return-object v0
.end method


# virtual methods
.method public checkAllContextualPage()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 203
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 204
    .local v3, isCpEnable:I
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_s_pen"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 205
    .local v4, s_pen_state:I
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_earphone"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 206
    .local v2, earphone_state:I
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_car_cradle"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, car_cardle_state:I
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_desk_cardle"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 209
    .local v1, desk_cradle_state:I
    if-nez v3, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_2

    .line 212
    if-ne v4, v7, :cond_5

    .line 213
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 217
    :cond_2
    :goto_1
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v9, :cond_3

    .line 218
    if-ne v2, v7, :cond_6

    .line 219
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v9}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 223
    :cond_3
    :goto_2
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v10, :cond_4

    .line 224
    if-ne v0, v7, :cond_7

    .line 225
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 229
    :cond_4
    :goto_3
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 230
    if-ne v1, v7, :cond_8

    .line 231
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    goto :goto_0

    .line 215
    :cond_5
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_1

    .line 221
    :cond_6
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v9}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_2

    .line 227
    :cond_7
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_3

    .line 233
    :cond_8
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_0
.end method

.method public getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, action:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v13, "contextual_page"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 97
    .local v8, isCpEnable:I
    iget-object v12, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v13, "contextual_page_s_pen"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 98
    .local v11, s_pen_state:I
    iget-object v12, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v13, "contextual_page_earphone"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 99
    .local v7, earphone_state:I
    iget-object v12, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v13, "contextual_page_car_cradle"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 100
    .local v5, car_cardle_state:I
    iget-object v12, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v13, "contextual_page_desk_cardle"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 103
    .local v6, desk_cradle_state:I
    const-string v12, "android.settings.CONTEXTUALPAGE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 104
    const-string v12, "true"

    const-string v13, "changed"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 105
    .local v3, bChanged:Z
    const-string v12, "ContextualPageReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mContextualPageReceiver: changed : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v12, "ContextualPageReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mContextualPageReceiver: setting : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v12, 0x1

    if-ne v8, v12, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageReceiver;->checkAllContextualPage()V

    .line 199
    .end local v3           #bChanged:Z
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v3       #bChanged:Z
    :cond_1
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v12}, Lcom/android/launcher2/ContextualPageManager;->removeAllContextualPage()V

    goto :goto_0

    .line 117
    .end local v3           #bChanged:Z
    :cond_2
    const-string v12, "com.samsung.pen.INSERT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 118
    const-string v12, "penInsert"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 119
    .local v4, bPluged:Z
    const-string v12, "ContextualPageReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mContextualPageReceiver: penInsert : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-nez v4, :cond_4

    .line 122
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 123
    const/4 v12, 0x1

    if-ne v8, v12, :cond_3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_3

    .line 124
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 125
    :cond_3
    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    or-int/lit8 v12, v12, 0x1

    sput v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto :goto_0

    .line 127
    :cond_4
    const/4 v12, 0x1

    if-ne v8, v12, :cond_5

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 128
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    .line 129
    :cond_5
    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, -0x2

    sput v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto :goto_0

    .line 133
    .end local v4           #bPluged:Z
    :cond_6
    const-string v12, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 134
    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v4, 0x1

    .line 135
    .restart local v4       #bPluged:Z
    :goto_1
    const-string v12, "ContextualPageReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mContextualPageReceiver: EarJack bPluged : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz v4, :cond_9

    .line 138
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 139
    const/4 v12, 0x1

    if-ne v8, v12, :cond_7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_7

    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_7

    .line 140
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 141
    :cond_7
    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    or-int/lit8 v12, v12, 0x2

    sput v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto/16 :goto_0

    .line 134
    .end local v4           #bPluged:Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    .line 143
    .restart local v4       #bPluged:Z
    :cond_9
    const/4 v12, 0x1

    if-ne v8, v12, :cond_a

    const/4 v12, 0x1

    if-ne v7, v12, :cond_a

    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, 0x2

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a

    .line 144
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    .line 145
    :cond_a
    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, -0x3

    sput v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto/16 :goto_0

    .line 149
    .end local v4           #bPluged:Z
    :cond_b
    const-string v12, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 150
    const-string v12, "android.intent.extra.DOCK_STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 152
    .local v9, mDocState:I
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_0

    .line 172
    :pswitch_0
    const-string v12, "ContextualPageReceiver"

    const-string v13, "mContextualPageReceiver: EXTRA_DOCK_STATE_UNDOCKED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v12, 0x1

    if-ne v8, v12, :cond_c

    const/4 v12, 0x1

    if-ne v5, v12, :cond_c

    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, 0x4

    const/4 v13, 0x4

    if-ne v12, v13, :cond_c

    .line 175
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    .line 177
    :cond_c
    const/4 v12, 0x1

    if-ne v8, v12, :cond_d

    const/4 v12, 0x1

    if-ne v6, v12, :cond_d

    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, 0x8

    const/16 v13, 0x8

    if-ne v12, v13, :cond_d

    .line 178
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    .line 180
    :cond_d
    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, -0x5

    sput v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    .line 181
    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, -0x9

    sput v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto/16 :goto_0

    .line 154
    :pswitch_1
    const-string v12, "ContextualPageReceiver"

    const-string v13, "mContextualPageReceiver: EXTRA_DOCK_STATE_CAR DockConnected "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 157
    const/4 v12, 0x1

    if-ne v8, v12, :cond_e

    const/4 v12, 0x1

    if-ne v5, v12, :cond_e

    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, 0x4

    if-nez v12, :cond_e

    .line 158
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 159
    :cond_e
    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    or-int/lit8 v12, v12, 0x4

    sput v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto/16 :goto_0

    .line 164
    :pswitch_2
    const-string v12, "ContextualPageReceiver"

    const-string v13, "mContextualPageReceiver: EXTRA_DOCK_STATE_DESK DockConnected "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 167
    const/4 v12, 0x1

    if-ne v8, v12, :cond_f

    const/4 v12, 0x1

    if-ne v6, v12, :cond_f

    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_f

    .line 168
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 169
    :cond_f
    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    or-int/lit8 v12, v12, 0x8

    sput v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto/16 :goto_0

    .line 184
    .end local v9           #mDocState:I
    :cond_10
    const-string v12, "com.android.music.metachanged"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    const-string v12, "com.android.music.playstatechanged"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 185
    :cond_11
    const-string v12, "artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, artist:Ljava/lang/String;
    const-string v12, "playing"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 188
    .local v10, mIsPlaying:Z
    const-string v12, "ContextualPageReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mContextualPageReceiver: META_CHANGED || PLAYSTATE_CHANGED - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", playing - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v12, v10}, Lcom/android/launcher2/ContextualPageManager;->setIsMusicPlaying(Z)V

    .line 191
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v12, v2}, Lcom/android/launcher2/ContextualPageManager;->setCurrentArtist(Ljava/lang/String;)V

    .line 193
    const/4 v12, 0x1

    if-ne v8, v12, :cond_0

    const/4 v12, 0x1

    if-ne v7, v12, :cond_0

    sget v12, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v12, v12, 0x2

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 194
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/launcher2/ContextualPageManager;->displayEmotionalTitleText(I)V

    goto/16 :goto_0

    .line 195
    .end local v2           #artist:Ljava/lang/String;
    .end local v10           #mIsPlaying:Z
    :cond_12
    const-string v12, "android.intent.action.TIME_SET"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 196
    sget-object v12, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/android/launcher2/ContextualPageManager;->displayEmotionalTitleText(I)V

    goto/16 :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method
