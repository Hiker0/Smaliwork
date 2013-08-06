.class public Lcom/android/launcher2/ContextualPageManager;
.super Ljava/lang/Object;
.source "ContextualPageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    }
.end annotation


# static fields
.field public static CP_DARKEN_AMOUNT:F = 0.0f

.field static final CSC_FILE_WORKSPACE_CP:Ljava/lang/String; = "/system/csc/default_workspace_cp.xml"

.field public static final IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_CONTEXTUALPAGE_NUM:I = 0x4

.field public static final NOTI_CLEAR:Ljava/lang/String; = "com.android.launcher2.ContextualPageManager.NOTI_CLEAR"

.field private static final STATUS_CARCRADLE_URI:Landroid/net/Uri; = null

.field private static final STATUS_DESKCRADLE_URI:Landroid/net/Uri; = null

.field private static final STATUS_EARPHONE_URI:Landroid/net/Uri; = null

.field private static final STATUS_SPEN_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ContextualPageManager"

.field private static awareHotseatItemsMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final caNotificationID:I = 0x7f020069

.field private static mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

.field private static mLaunchableHotseatItemsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private currentArtist:Ljava/lang/String;

.field private isMusicPlaying:Z

.field private mHasPostWork:Z

.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private final mHotseatItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private postActCPIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "content://com.sec.android.providers.insight/app_usage/recent/spen"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_SPEN_URI:Landroid/net/Uri;

    .line 79
    const-string v0, "content://com.sec.android.providers.insight/app_usage/recent/earphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_EARPHONE_URI:Landroid/net/Uri;

    .line 80
    const-string v0, "content://com.sec.android.providers.insight/app_usage/recent/carcradle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_CARCRADLE_URI:Landroid/net/Uri;

    .line 81
    const-string v0, "content://com.sec.android.providers.insight/app_usage/recent/deskcradle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_DESKCRADLE_URI:Landroid/net/Uri;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    .line 698
    new-instance v0, Lcom/android/launcher2/ContextualPageManager$6;

    invoke-direct {v0}, Lcom/android/launcher2/ContextualPageManager$6;-><init>()V

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/ContextualPageManager;->postActCPIndex:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    .line 89
    iput-boolean v1, p0, Lcom/android/launcher2/ContextualPageManager;->isMusicPlaying:Z

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    .line 99
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/HomeFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/ContextualPageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/launcher2/ContextualPageManager;->postActCPIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method private getEmotionalTitleText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 8
    .parameter "eTitle"

    .prologue
    .line 795
    iget-object v6, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 796
    .local v3, r:Landroid/content/res/Resources;
    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 797
    .local v4, splitTitle:[Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 798
    .local v5, title:Landroid/text/SpannableStringBuilder;
    if-eqz v4, :cond_1

    .line 799
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_1

    .line 800
    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 802
    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 803
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 804
    .local v2, idxColorStart:I
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 805
    .local v1, idxColorEnd:I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, 0x7f080013

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v2, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 799
    .end local v1           #idxColorEnd:I
    .end local v2           #idxColorStart:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    .end local v0           #i:I
    :cond_1
    return-object v5
.end method

.method private loadHotseatItem()Z
    .locals 17

    .prologue
    .line 487
    const/4 v8, 0x0

    .line 489
    .local v8, isCSC:Z
    const/4 v10, 0x0

    .line 490
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    .line 492
    .local v11, resParser:Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 493
    .local v3, cscFileChk:Ljava/io/File;
    const/4 v1, 0x0

    .line 496
    .local v1, cscFile:Ljava/io/FileReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 498
    new-instance v4, Ljava/io/File;

    const-string v13, "/system/csc/default_workspace_cp.xml"

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 500
    .end local v3           #cscFileChk:Ljava/io/File;
    .local v4, cscFileChk:Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_4

    .line 502
    new-instance v2, Ljava/io/FileReader;

    const-string v13, "/system/csc/default_workspace_cp.xml"

    invoke-direct {v2, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 504
    .end local v1           #cscFile:Ljava/io/FileReader;
    .local v2, cscFile:Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 505
    .local v7, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 506
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 508
    invoke-interface {v10, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 509
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_9

    .line 511
    const/4 v8, 0x1

    move-object v1, v2

    .line 519
    .end local v2           #cscFile:Ljava/io/FileReader;
    .end local v7           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    :goto_0
    :try_start_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 522
    .local v5, depth:I
    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_8

    move-result v13

    if-le v13, v5, :cond_2

    :cond_1
    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    .line 524
    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 538
    :cond_2
    const/4 v13, 0x1

    .line 549
    if-eqz v1, :cond_3

    .line 551
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_3
    :goto_2
    move-object v3, v4

    .line 558
    .end local v4           #cscFileChk:Ljava/io/File;
    .end local v5           #depth:I
    .end local v12           #type:I
    .restart local v3       #cscFileChk:Ljava/io/File;
    :goto_3
    return v13

    .line 513
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060003

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 515
    const-string v13, "favorites"

    invoke-static {v11, v13}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 516
    move-object v10, v11

    goto :goto_0

    .line 527
    .restart local v5       #depth:I
    .restart local v12       #type:I
    :cond_5
    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 531
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 532
    .local v9, name:Ljava/lang/String;
    const-string v13, "hotseat"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 533
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v8}, Lcom/android/launcher2/ContextualPageManager;->loadHotseatItemContainer(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 535
    :cond_6
    const-string v13, "ContextualPageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid tag <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "> detected while parsing favorites at line "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_1

    .line 540
    .end local v5           #depth:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #type:I
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 541
    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_6
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 549
    if-eqz v1, :cond_7

    .line 551
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 558
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_7
    :goto_5
    const/4 v13, 0x0

    goto :goto_3

    .line 543
    :catch_1
    move-exception v6

    .line 544
    .local v6, e:Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 549
    if-eqz v1, :cond_7

    .line 551
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 552
    :catch_2
    move-exception v6

    .line 553
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    :goto_7
    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 546
    .end local v6           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 547
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :goto_8
    :try_start_a
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 549
    if-eqz v1, :cond_7

    .line 551
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_5

    .line 552
    :catch_4
    move-exception v6

    .line 553
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    goto :goto_7

    .line 549
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_9
    if-eqz v1, :cond_8

    .line 551
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 549
    :cond_8
    :goto_a
    throw v13

    .line 552
    :catch_5
    move-exception v6

    .line 553
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v14, "ContextualPageManager"

    const-string v15, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 552
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v6

    .line 553
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    goto :goto_7

    .line 552
    .end local v3           #cscFileChk:Ljava/io/File;
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #cscFileChk:Ljava/io/File;
    .restart local v5       #depth:I
    .restart local v12       #type:I
    :catch_7
    move-exception v6

    .line 553
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v14, "ContextualPageManager"

    const-string v15, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 549
    .end local v5           #depth:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v12           #type:I
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_9

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catchall_2
    move-exception v13

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_9

    .line 546
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_8

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_9
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_8

    .line 543
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_a
    move-exception v6

    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_6

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_b
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_6

    .line 540
    :catch_c
    move-exception v6

    goto :goto_4

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_d
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_4
.end method

.method private loadHotseatItemContainer(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 14
    .parameter "ctx"
    .parameter "parser"
    .parameter "isCSC"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 568
    .local v2, attrs:Landroid/util/AttributeSet;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 571
    .local v8, startDepth:I
    const/4 v6, 0x0

    .line 572
    .local v6, pkgName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 573
    .local v3, className:Ljava/lang/String;
    const/4 v7, 0x0

    .line 574
    .local v7, screen:Ljava/lang/String;
    const/4 v10, 0x0

    .line 576
    .local v10, x:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, type:I
    const/4 v11, 0x3

    if-ne v9, v11, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v8, :cond_2

    .line 577
    :cond_1
    const/4 v11, 0x1

    if-ne v9, v11, :cond_3

    .line 613
    :cond_2
    return-void

    .line 580
    :cond_3
    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 583
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, name:Ljava/lang/String;
    const-string v11, "ContextualPageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadHotseatItemContainer. Process tag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_4

    .line 589
    const/4 v1, 0x0

    .line 590
    .local v1, a:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    const-string v12, "packageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 591
    const/4 v11, 0x0

    const-string v12, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 592
    const/4 v11, 0x0

    const-string v12, "screen"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 593
    const/4 v11, 0x0

    const-string v12, "x"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 603
    :goto_1
    const-string v11, "favorite"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 604
    new-instance v4, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v4, v6, v3, v11, v12}, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 605
    .local v4, hotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    iget-object v11, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    .end local v4           #hotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    :goto_2
    const/4 v11, 0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_0

    .line 610
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 596
    .end local v1           #a:Landroid/content/res/TypedArray;
    :cond_4
    sget-object v11, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    invoke-virtual {p1, v2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 597
    .restart local v1       #a:Landroid/content/res/TypedArray;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 598
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 599
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 600
    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 607
    :cond_5
    const-string v11, "ContextualPageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid tag <"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "> detected while parsing favorites at line "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setLaunchableHotsetItems(I)V
    .locals 9
    .parameter "CPType"

    .prologue
    .line 623
    sget-object v7, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ContextualPageManager;->getHotseatItems(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 625
    .local v1, hotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v2, hsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeShortcutItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 627
    new-instance v5, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v5, v7}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 628
    .local v5, item:Lcom/android/launcher2/HomeShortcutItem;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v8, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-direct {v0, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .local v0, cpName:Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 631
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x1020

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 636
    new-instance v6, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v6}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 637
    .local v6, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget-object v7, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 638
    iget-object v7, v6, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v7, v5, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 639
    iget-object v7, v6, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v7, v5, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 640
    iput-object v4, v5, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 641
    const-wide/16 v7, -0x65

    iput-wide v7, v5, Lcom/android/launcher2/HomeItem;->container:J

    .line 642
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/launcher2/HomeItem;->isContextualAwareHotseat:Z

    .line 643
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 645
    .end local v0           #cpName:Landroid/content/ComponentName;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #item:Lcom/android/launcher2/HomeShortcutItem;
    .end local v6           #titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :cond_0
    sget-object v7, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    return-void
.end method


# virtual methods
.method public addContextualPage(I)Z
    .locals 18
    .parameter "CPType"

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v14, :cond_0

    .line 112
    const-string v14, "ContextualPageManager"

    const-string v15, "addContextualPage : Workspace is NULL!!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v14, 0x0

    .line 220
    :goto_0
    return v14

    .line 116
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 117
    const-string v14, "ContextualPageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Already added - CPType : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v14, 0x0

    goto :goto_0

    .line 121
    :cond_1
    const-string v14, "ContextualPageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "addContextualPage : CPType : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getOrientation()I

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 125
    .local v9, screenHeight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 126
    .local v10, screenWidth:I
    if-le v10, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->isResumed()Z

    move-result v14

    if-nez v14, :cond_2

    .line 127
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    .line 128
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 131
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f030046

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 134
    .local v4, cellContext:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setContextualPageType(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 137
    .local v8, res:Landroid/content/res/Resources;
    const v14, 0x7f0a003c

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    const v15, 0x7f0a003d

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    invoke-virtual {v4, v14, v15}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setGridSize(II)V

    .line 139
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 140
    .local v6, lpContext:Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_3

    .line 141
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .end local v6           #lpContext:Landroid/view/ViewGroup$LayoutParams;
    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v6, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 146
    .restart local v6       #lpContext:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const v14, 0x7f0700ad

    invoke-virtual {v4, v14}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 147
    .local v11, setting_icon:Landroid/widget/ImageView;
    new-instance v14, Lcom/android/launcher2/ContextualPageManager$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/launcher2/ContextualPageManager$1;-><init>(Lcom/android/launcher2/ContextualPageManager;)V

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v14, 0x7f0700af

    invoke-virtual {v4, v14}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 158
    .local v13, work_state_title:Landroid/widget/TextView;
    const v14, 0x7f0700ae

    invoke-virtual {v4, v14}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 160
    .local v12, work_emotional_title:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/android/launcher2/ContextualPageManager;->displayEmotionalTitleText(Landroid/widget/TextView;I)V

    .line 179
    sget-object v14, Lcom/android/launcher2/ContextualPageManager;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    move/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/launcher2/ContextualPageNotification;->notificationSend(Landroid/content/Context;I)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v14

    if-lez v14, :cond_4

    .line 182
    sget-object v14, Lcom/android/launcher2/ContextualPageManager;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const v16, 0x7f020069

    sget-object v17, Lcom/android/launcher2/ContextualPageManager;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/ContextualPageNotification;->getLastNotificationType()I

    move-result v17

    add-int v16, v16, v17

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/android/launcher2/ContextualPageNotification;->notificationClear(Landroid/content/Context;IZ)V

    .line 184
    :cond_4
    sget-object v14, Lcom/android/launcher2/ContextualPageManager;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher2/ContextualPageNotification;->setLastNotificationType(I)V

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, addedCP:Z
    const/4 v2, 0x0

    .line 188
    .local v2, addPageIdx:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v15

    sub-int v7, v14, v15

    .line 189
    .local v7, normalPageCount:I
    const/4 v5, 0x1

    .local v5, i:I
    :goto_2
    move/from16 v0, p1

    if-ge v5, v0, :cond_6

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 191
    const/4 v3, 0x1

    .line 192
    add-int/lit8 v2, v2, 0x1

    .line 189
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 162
    .end local v2           #addPageIdx:I
    .end local v3           #addedCP:Z
    .end local v5           #i:I
    .end local v7           #normalPageCount:I
    :pswitch_0
    const v14, 0x7f0e00af

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 165
    :pswitch_1
    const v14, 0x7f0e00b0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 168
    :pswitch_2
    const v14, 0x7f0e00b1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 171
    :pswitch_3
    const v14, 0x7f0e00b2

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 196
    .restart local v2       #addPageIdx:I
    .restart local v3       #addedCP:Z
    .restart local v5       #i:I
    .restart local v7       #normalPageCount:I
    :cond_6
    if-eqz v3, :cond_b

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int v15, v7, v2

    invoke-virtual {v14, v4, v15, v6}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 201
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeFragment;->getWorkspaceLoading()Z

    move-result v14

    if-nez v14, :cond_7

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeFragment;->getLauncherModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher2/LauncherModel;->bindContextualPageItems(I)V

    .line 204
    :cond_7
    const-string v14, "ContextualPageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CP Page Add = Total : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Contexutal : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/ContextualPageManager;->postActCPIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v14

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v15

    if-eq v14, v15, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/ContextualPageManager;->postActCPIndex:I

    move/from16 v0, p1

    if-eq v0, v14, :cond_9

    .line 207
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v15

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/launcher2/HomeFragment;->onPageSwitch(Landroid/view/View;I)V

    .line 209
    :cond_9
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/ContextualPageManager;->postActCPIndex:I

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v14

    if-nez v14, :cond_a

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v15, Lcom/android/launcher2/ContextualPageManager$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/launcher2/ContextualPageManager$2;-><init>(Lcom/android/launcher2/ContextualPageManager;)V

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v14 .. v17}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 199
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14, v4, v7, v6}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public displayEmotionalTitleText(I)V
    .locals 3
    .parameter "CPType"

    .prologue
    .line 714
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 715
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    if-nez v0, :cond_0

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    const v2, 0x7f0700ae

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 718
    .local v1, emotionalTitle:Landroid/widget/TextView;
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher2/ContextualPageManager;->displayEmotionalTitleText(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public displayEmotionalTitleText(Landroid/widget/TextView;I)V
    .locals 20
    .parameter "work_emotional_title"
    .parameter "CPType"

    .prologue
    .line 723
    const-string v11, ""

    .line 724
    .local v11, eTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 725
    .local v14, r:Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 790
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/ContextualPageManager;->getEmotionalTitleText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    return-void

    .line 727
    :pswitch_0
    const v1, 0x7f0e00bb

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 728
    goto :goto_0

    .line 730
    :pswitch_1
    const v1, 0x7f0e00bf

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 731
    .local v18, strPlaying:Ljava/lang/String;
    const v1, 0x7f0e00c0

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 732
    .local v17, strPause:Ljava/lang/String;
    const v1, 0x7f0e00bc

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 733
    .local v16, strDefaultVar:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v16, v1, v3

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 736
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/ContextualPageManager;->isMusicPlaying:Z

    if-eqz v1, :cond_3

    .line 737
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    aput-object v4, v1, v3

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 739
    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    aput-object v4, v1, v3

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 741
    goto :goto_0

    .line 743
    .end local v16           #strDefaultVar:Ljava/lang/String;
    .end local v17           #strPause:Ljava/lang/String;
    .end local v18           #strPlaying:Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f0e00bd

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 744
    goto :goto_0

    .line 746
    :pswitch_3
    const-string v10, ""

    .line 748
    .local v10, deskString:Ljava/lang/String;
    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 749
    .local v9, date:Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MM"

    invoke-static {v3, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dd"

    invoke-static {v3, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 750
    .local v12, mDate:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype=\'vnd.android.cursor.item/contact_event\' AND data2 = 3 AND data1 LIKE \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 760
    .local v8, contactCursor:Landroid/database/Cursor;
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 761
    .local v19, time:Landroid/text/format/Time;
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    .line 762
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object/from16 v0, v19

    iget-wide v5, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v15

    .line 763
    .local v15, startDay:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .local v13, path:Ljava/lang/StringBuilder;
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    const/16 v1, 0x2f

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 769
    .local v2, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 771
    .local v7, calendarCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 772
    const v1, 0x7f0e00c1

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 773
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 774
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 785
    :goto_1
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 786
    :cond_4
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 775
    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 776
    const v1, 0x7f0e00c3

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 777
    move-object v11, v10

    goto :goto_1

    .line 778
    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_7

    .line 779
    const v1, 0x7f0e00c2

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 780
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 782
    :cond_7
    const v1, 0x7f0e00be

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getContextualPage(I)Lcom/android/launcher2/CellLayout;
    .locals 5
    .parameter "CPType"

    .prologue
    const/4 v3, 0x0

    .line 415
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_0

    .line 416
    const-string v2, "ContextualPageManager"

    const-string v4, "getContextualPage : Workspace is NULL!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 427
    :goto_0
    return-object v2

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 421
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 422
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 423
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 421
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 427
    goto :goto_0
.end method

.method public getContextualPageIndex(I)I
    .locals 5
    .parameter "CPType"

    .prologue
    const/4 v3, -0x1

    .line 432
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    .line 433
    const-string v2, "ContextualPageManager"

    const-string v4, "getContextualPageIndex : Workspace is NULL!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 444
    :cond_0
    :goto_0
    return v1

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 438
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 439
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 444
    goto :goto_0
.end method

.method public getContextualPageType(I)I
    .locals 4
    .parameter "pageIndex"

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    .line 468
    const-string v2, "ContextualPageManager"

    const-string v3, "getContextualPageType : Workspace is NULL!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    :goto_0
    return v1

    .line 472
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 473
    .local v0, cpCell:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v1

    goto :goto_0
.end method

.method public getHasPostWork()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    return v0
.end method

.method public getHotseatAwareItems(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    sget-object v0, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 617
    const/4 v0, 0x0

    .line 619
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getHotseatItems(I)Ljava/util/ArrayList;
    .locals 12
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 650
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v2, hotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v1, awareHotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    sget-object v7, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #awareHotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 654
    .restart local v1       #awareHotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    const/4 v4, 0x0

    .line 655
    .local v4, j:I
    if-nez v1, :cond_1

    move v0, v8

    .line 657
    .local v0, awareHotseatCnt:I
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 658
    iget-object v7, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->cpType:I

    if-ne v7, p1, :cond_4

    .line 659
    if-lez v0, :cond_2

    .line 660
    add-int/lit8 v5, v4, 0x1

    .end local v4           #j:I
    .local v5, j:I
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    .line 663
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v11, :cond_6

    move v4, v5

    .line 693
    .end local v5           #j:I
    .restart local v4       #j:I
    :cond_0
    sget-object v7, Lcom/android/launcher2/ContextualPageManager;->IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 695
    return-object v2

    .line 655
    .end local v0           #awareHotseatCnt:I
    .end local v3           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 666
    .restart local v0       #awareHotseatCnt:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    .line 667
    .local v6, tmphotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    packed-switch v4, :pswitch_data_0

    .line 684
    :cond_3
    iget v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->screen:I

    if-nez v1, :cond_5

    move v7, v8

    :goto_2
    add-int/2addr v7, v9

    iput v7, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->screen:I

    .line 685
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v11, :cond_0

    .line 657
    .end local v6           #tmphotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 669
    .restart local v6       #tmphotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    :pswitch_0
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 673
    :pswitch_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 678
    :pswitch_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 684
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_2

    .end local v4           #j:I
    .end local v6           #tmphotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    .restart local v5       #j:I
    :cond_6
    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    goto :goto_3

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTotalContextualPageCount()I
    .locals 5

    .prologue
    .line 449
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    .line 450
    const-string v3, "ContextualPageManager"

    const-string v4, "getTotalContextualPageCount : Workspace is NULL!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v1, -0x1

    .line 462
    :cond_0
    return v1

    .line 454
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 455
    .local v2, totalpages:I
    const/4 v1, 0x0

    .line 456
    .local v1, totalCP:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 457
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v3

    if-eqz v3, :cond_2

    .line 458
    add-int/lit8 v1, v1, 0x1

    .line 456
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initContextualPage(Lcom/android/launcher2/HomeFragment;Lcom/android/launcher2/ContextualPageNotification;)V
    .locals 3
    .parameter "hf"
    .parameter "cpNoti"

    .prologue
    const/4 v2, 0x1

    .line 103
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 105
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/android/launcher2/ContextualPageManager;->CP_DARKEN_AMOUNT:F

    .line 106
    invoke-direct {p0}, Lcom/android/launcher2/ContextualPageManager;->loadHotseatItem()Z

    .line 107
    sput-object p2, Lcom/android/launcher2/ContextualPageManager;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    .line 108
    return-void
.end method

.method isContextualPageHotseat(Landroid/view/View;)Z
    .locals 1
    .parameter "layout"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reconfigurationContextualPageLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 12
    .parameter "cl"

    .prologue
    const v11, 0x7f0c00b6

    const/4 v10, 0x0

    .line 814
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 816
    .local v4, r:Landroid/content/res/Resources;
    const v9, 0x7f0700ab

    invoke-virtual {p1, v9}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 817
    .local v8, work_title_area:Landroid/widget/RelativeLayout;
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 818
    .local v0, lp2:Landroid/view/ViewGroup$LayoutParams;
    const v9, 0x7f0c00ad

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 819
    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    const v9, 0x7f0700ac

    invoke-virtual {p1, v9}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 822
    .local v5, setting_icon_area:Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 823
    .local v1, lp3:Landroid/view/ViewGroup$MarginLayoutParams;
    const v9, 0x7f0c00ae

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 824
    const v9, 0x7f0c00af

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 825
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    const v9, 0x7f0700ae

    invoke-virtual {p1, v9}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 828
    .local v6, work_emotional_title:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 829
    .local v2, lp4:Landroid/view/ViewGroup$MarginLayoutParams;
    const v9, 0x7f0c00b0

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 830
    const v9, 0x7f0c00b1

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 831
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 832
    const v9, 0x7f0c00b2

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 833
    const v9, 0x7f0c00b3

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 834
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    const v9, 0x7f0700af

    invoke-virtual {p1, v9}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 837
    .local v7, work_state_title:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 838
    .local v3, lp5:Landroid/view/ViewGroup$MarginLayoutParams;
    const v9, 0x7f0c00b4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 839
    const v9, 0x7f0c00b5

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 840
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 841
    const v9, 0x7f0c00b7

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 842
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    return-void
.end method

.method public removeAllContextualPage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 391
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    .line 392
    const-string v3, "ContextualPageManager"

    const-string v4, "removeContextualPage : Workspace is NULL!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    return-void

    .line 396
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 397
    .local v1, count:I
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v4

    sub-int v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_2

    .line 398
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    .line 400
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 401
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    .line 402
    .local v0, CPType:I
    if-eqz v0, :cond_3

    .line 403
    sget-object v3, Lcom/android/launcher2/ContextualPageManager;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    iget-object v4, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const v5, 0x7f020069

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/ContextualPageNotification;->notificationClear(Landroid/content/Context;IZ)V

    .line 404
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->removeViewAt(I)V

    .line 405
    add-int/lit8 v2, v2, -0x1

    .line 406
    add-int/lit8 v1, v1, -0x1

    .line 400
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeContextualPage(I)Z
    .locals 13
    .parameter "CPType"

    .prologue
    .line 225
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v9, :cond_0

    .line 226
    const-string v9, "ContextualPageManager"

    const-string v10, "removeContextualPage : Workspace is NULL!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v9, 0x0

    .line 305
    :goto_0
    return v9

    .line 230
    :cond_0
    const-string v9, "ContextualPageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeContextualPage CPType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v9, Lcom/android/launcher2/ContextualPageManager;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    iget-object v10, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const v11, 0x7f020069

    add-int/2addr v11, p1

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/launcher2/ContextualPageNotification;->notificationClear(Landroid/content/Context;IZ)V

    .line 234
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeFragment;->getContextualPageMarker()Ljava/util/ArrayList;

    move-result-object v8

    .line 235
    .local v8, vPmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v7, v9

    .line 236
    .local v7, vPm:Landroid/view/View;
    :goto_1
    if-eqz v7, :cond_1

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 239
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v9

    sub-int v6, v0, v9

    .line 240
    .local v6, normalPageCount:I
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    .line 241
    .local v4, focusIdx:I
    move v3, v6

    .line 242
    .local v3, firstCPIdx:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    .line 251
    .local v1, defaultPageIdx:I
    move v5, v3

    .local v5, i:I
    :goto_2
    if-ge v5, v0, :cond_9

    .line 252
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v9

    if-ne v9, p1, :cond_8

    .line 253
    move v2, v5

    .line 255
    .local v2, deleteIdx:I
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v2}, Lcom/android/launcher2/Workspace;->removeViewAt(I)V

    .line 258
    if-ge v4, v6, :cond_4

    .line 301
    :cond_2
    :goto_3
    const/4 v9, 0x1

    goto :goto_0

    .line 235
    .end local v0           #count:I
    .end local v1           #defaultPageIdx:I
    .end local v2           #deleteIdx:I
    .end local v3           #firstCPIdx:I
    .end local v4           #focusIdx:I
    .end local v5           #i:I
    .end local v6           #normalPageCount:I
    .end local v7           #vPm:Landroid/view/View;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 262
    .restart local v0       #count:I
    .restart local v1       #defaultPageIdx:I
    .restart local v2       #deleteIdx:I
    .restart local v3       #firstCPIdx:I
    .restart local v4       #focusIdx:I
    .restart local v5       #i:I
    .restart local v6       #normalPageCount:I
    .restart local v7       #vPm:Landroid/view/View;
    :cond_4
    if-le v4, v2, :cond_5

    .line 263
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 264
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v10, Lcom/android/launcher2/ContextualPageManager$3;

    invoke-direct {v10, p0, v4}, Lcom/android/launcher2/ContextualPageManager$3;-><init>(Lcom/android/launcher2/ContextualPageManager;I)V

    const-wide/16 v11, 0x12c

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 272
    :cond_5
    if-ne v4, v2, :cond_2

    .line 273
    sub-int v9, v0, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 274
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/launcher2/HomeFragment;->setDarkenViewIfneed(Z)V

    .line 275
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 276
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v10, Lcom/android/launcher2/ContextualPageManager$4;

    invoke-direct {v10, p0, v1}, Lcom/android/launcher2/ContextualPageManager$4;-><init>(Lcom/android/launcher2/ContextualPageManager;I)V

    const-wide/16 v11, 0x12c

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 284
    :cond_6
    if-eq v2, v3, :cond_7

    .line 285
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v3}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 287
    :cond_7
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v10, Lcom/android/launcher2/ContextualPageManager$5;

    invoke-direct {v10, p0, v3, v2}, Lcom/android/launcher2/ContextualPageManager$5;-><init>(Lcom/android/launcher2/ContextualPageManager;II)V

    const-wide/16 v11, 0x12c

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 251
    .end local v2           #deleteIdx:I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 305
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public setCurrentArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    .line 711
    return-void
.end method

.method public setHasPostWork(Z)V
    .locals 0
    .parameter "postWork"

    .prologue
    .line 862
    iput-boolean p1, p0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    .line 863
    return-void
.end method

.method public setIsMusicPlaying(Z)V
    .locals 0
    .parameter "isPlaying"

    .prologue
    .line 706
    iput-boolean p1, p0, Lcom/android/launcher2/ContextualPageManager;->isMusicPlaying:Z

    .line 707
    return-void
.end method

.method public setupContextualAwareHotSeat(Landroid/content/Context;I)V
    .locals 17
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 869
    const/4 v3, 0x0

    .line 870
    .local v3, modeUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 872
    .local v10, contextualCnt:I
    packed-switch p2, :pswitch_data_0

    .line 883
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 885
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 886
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 887
    const-string v2, "ContextualPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor rowcount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v8, awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    const/4 v13, 0x0

    .line 893
    .local v13, i:I
    :cond_0
    const-string v2, "package_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 894
    .local v15, idxCol_pkg:I
    const-string v2, "class_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 895
    .local v14, idxCol_cls:I
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 896
    .local v16, pkgName:Ljava/lang/String;
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 898
    .local v9, clsName:Ljava/lang/String;
    const-string v2, "ContextualPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v2, "ContextualPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor class name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    if-eqz v16, :cond_1

    const-string v2, "com.sec.android.app.launcher"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 902
    :cond_1
    const-string v2, "ContextualPageManager"

    const-string v4, "Launcherable pacakge name not fount! or Launcher itself"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    if-lt v13, v2, :cond_0

    .line 911
    :cond_2
    sget-object v2, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v2, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    .end local v8           #awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    .end local v9           #clsName:Ljava/lang/String;
    .end local v13           #i:I
    .end local v14           #idxCol_cls:I
    .end local v15           #idxCol_pkg:I
    .end local v16           #pkgName:Ljava/lang/String;
    :goto_2
    if-eqz v12, :cond_3

    .line 919
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher2/ContextualPageManager;->setLaunchableHotsetItems(I)V

    .line 922
    return-void

    .line 874
    .end local v12           #cursor:Landroid/database/Cursor;
    :pswitch_0
    sget-object v3, Lcom/android/launcher2/ContextualPageManager;->STATUS_SPEN_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 876
    :pswitch_1
    sget-object v3, Lcom/android/launcher2/ContextualPageManager;->STATUS_EARPHONE_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 878
    :pswitch_2
    sget-object v3, Lcom/android/launcher2/ContextualPageManager;->STATUS_CARCRADLE_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 880
    :pswitch_3
    sget-object v3, Lcom/android/launcher2/ContextualPageManager;->STATUS_DESKCRADLE_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 906
    .restart local v8       #awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    .restart local v9       #clsName:Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v13       #i:I
    .restart local v14       #idxCol_cls:I
    .restart local v15       #idxCol_pkg:I
    .restart local v16       #pkgName:Ljava/lang/String;
    :cond_4
    new-instance v11, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-direct {v11, v0, v9, v13, v1}, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 907
    .local v11, cptemp:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 915
    .end local v8           #awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    .end local v9           #clsName:Ljava/lang/String;
    .end local v11           #cptemp:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    .end local v13           #i:I
    .end local v14           #idxCol_cls:I
    .end local v15           #idxCol_pkg:I
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_5
    const-string v2, "ContextualPageManager"

    const-string v4, "[OOPS] Fail to get cursor because DB empty. "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 872
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
