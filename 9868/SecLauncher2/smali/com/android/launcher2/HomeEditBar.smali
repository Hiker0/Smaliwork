.class public Lcom/android/launcher2/HomeEditBar;
.super Landroid/widget/LinearLayout;
.source "HomeEditBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;
.implements Landroid/view/View$OnDragListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeEditBar"


# instance fields
.field private mAppInfo:Landroid/widget/TextView;

.field private mAppInfoContainer:Landroid/widget/FrameLayout;

.field private mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentAnimatorRes:I

.field private mDelete:Landroid/widget/TextView;

.field private mDeleteContainer:Landroid/widget/FrameLayout;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDropped:Z

.field private mEntered:Z

.field private mHideAnimatorRes:I

.field private mInsideDelete:Z

.field private mNewFolder:Landroid/widget/TextView;

.field private mNewFolderContainer:Landroid/widget/FrameLayout;

.field private mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private mNewPage:Landroid/widget/TextView;

.field private mNewPageContainer:Landroid/widget/FrameLayout;

.field private mNewPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPosition:I

.field private mShowAnimatorRes:I

.field private mShowPosted:Z

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HomeEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 80
    iput v2, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    .line 203
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    .line 93
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/HomeEditBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    return p1
.end method

.method private appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 137
    .local v3, infoOk:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    :cond_0
    :goto_1
    :pswitch_0
    return v3

    .line 136
    .end local v3           #infoOk:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 139
    .restart local v3       #infoOk:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 140
    if-nez v3, :cond_0

    .line 141
    new-instance v0, Lcom/android/launcher2/HomeEditBar$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeEditBar$1;-><init>(Lcom/android/launcher2/HomeEditBar;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 151
    :pswitch_2
    if-eqz v3, :cond_0

    .line 152
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 158
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, pkgName:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 160
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 161
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 163
    .local v10, intent:Landroid/content/Intent;
    const/high16 v0, 0x1080

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 170
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #pkgName:Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 9
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 316
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    return v3

    .line 318
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 319
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDelete()V

    .line 329
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 332
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 335
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 323
    .local v6, home:Lcom/android/launcher2/HomeFragment;
    if-eqz v6, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 325
    .local v7, ws:Lcom/android/launcher2/Workspace;
    if-eqz v7, :cond_1

    .line 326
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1

    .line 342
    .end local v6           #home:Lcom/android/launcher2/HomeFragment;
    .end local v7           #ws:Lcom/android/launcher2/Workspace;
    :pswitch_1
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 343
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 344
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 348
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v0, :cond_0

    .line 349
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 350
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 351
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 356
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 357
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 358
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 359
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v3

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "tv"

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    .local v0, all:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 111
    aget-object v1, v0, v2

    .line 112
    if-eqz v1, :cond_1

    .line 115
    :cond_0
    return-object v1

    .line 110
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private newFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 11
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 382
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_2

    instance-of v0, p1, Lcom/android/launcher2/HomePendingItem;

    if-nez v0, :cond_2

    :cond_0
    move v3, v8

    .line 387
    .local v3, canCreateFolder:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 424
    :cond_1
    :goto_1
    :pswitch_0
    return v3

    .end local v3           #canCreateFolder:Z
    :cond_2
    move v3, v4

    .line 382
    goto :goto_0

    .line 389
    .restart local v3       #canCreateFolder:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 390
    if-nez v3, :cond_1

    .line 391
    new-instance v0, Lcom/android/launcher2/HomeEditBar$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeEditBar$5;-><init>(Lcom/android/launcher2/HomeEditBar;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 401
    :pswitch_2
    if-eqz v3, :cond_3

    .line 402
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v8

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 403
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem()Z

    .line 405
    :cond_3
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v0, :cond_1

    .line 406
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 411
    :pswitch_3
    if-eqz v3, :cond_1

    .line 412
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 418
    :pswitch_4
    if-eqz v3, :cond_1

    .line 419
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private newPage(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 19
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    .line 442
    .local v18, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v13

    .line 444
    .local v13, cpMgr:Lcom/android/launcher2/ContextualPageManager;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v5, 0x1

    .line 446
    .local v5, canCreatePage:Z
    :goto_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_0

    .line 447
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    invoke-virtual {v13}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v5, 0x1

    .line 449
    :cond_0
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 508
    :cond_1
    :goto_2
    :pswitch_0
    return v5

    .line 444
    .end local v5           #canCreatePage:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 447
    .restart local v5       #canCreatePage:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 451
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_2

    .line 455
    :pswitch_2
    if-eqz v5, :cond_6

    .line 456
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 457
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v15, v2, 0x1

    .line 459
    .local v15, insertAt:I
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v13, v2}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 461
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    invoke-virtual {v13}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v3

    sub-int v15, v2, v3

    .line 463
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v2}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v16

    .line 464
    .local v16, newPage:Lcom/android/launcher2/CellLayout;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v2}, Lcom/android/launcher2/Workspace;->snapToPageAfterLayout(II)V

    .line 465
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/launcher2/DragState;->moveItemToWithoutAnimation(Lcom/android/launcher2/DragReceivable;III)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 466
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 468
    :cond_5
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_6

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v14, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 470
    .local v14, hf:Lcom/android/launcher2/HomeFragment;
    invoke-virtual {v14}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 471
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    .line 473
    .local v12, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    if-eqz v2, :cond_6

    .line 474
    move/from16 v17, v15

    .line 475
    .local v17, pageId:I
    new-instance v2, Lcom/android/launcher2/HomeEditBar$6;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/android/launcher2/HomeEditBar$6;-><init>(Lcom/android/launcher2/HomeEditBar;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    .line 489
    .end local v12           #cl:Lcom/android/launcher2/CellLayout;
    .end local v14           #hf:Lcom/android/launcher2/HomeFragment;
    .end local v15           #insertAt:I
    .end local v16           #newPage:Lcom/android/launcher2/CellLayout;
    .end local v17           #pageId:I
    :cond_6
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v2, :cond_1

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_2

    .line 495
    :pswitch_3
    if-eqz v5, :cond_1

    .line 496
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_2

    .line 502
    :pswitch_4
    if-eqz v5, :cond_1

    .line 503
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_2

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setAnimatorsForOrientation()V
    .locals 2

    .prologue
    .line 752
    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v0, v1, 0x3

    .line 753
    .local v0, barPosition:I
    packed-switch v0, :pswitch_data_0

    .line 767
    :pswitch_0
    const v1, 0x7f050015

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 768
    const v1, 0x7f050016

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    .line 771
    :goto_0
    return-void

    .line 755
    :pswitch_1
    const v1, 0x7f05000d

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 756
    const v1, 0x7f05000e

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    .line 759
    :pswitch_2
    const v1, 0x7f050013

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 760
    const v1, 0x7f050014

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    .line 763
    :pswitch_3
    const/high16 v1, 0x7f05

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 764
    const v1, 0x7f050001

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .parameter "tv"
    .parameter "icon"
    .parameter "d"
    .parameter "index"

    .prologue
    .line 786
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 787
    aput-object p2, p3, p4

    .line 788
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    const/4 v3, 0x3

    aget-object v3, p3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 790
    :cond_0
    return-void
.end method

.method private setDrawablesForOrientation()V
    .locals 4

    .prologue
    .line 797
    const/4 v2, 0x4

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 799
    .local v0, d:[Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v1, v2, 0x4

    .line 803
    .local v1, index:I
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 804
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 805
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 806
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 807
    return-void
.end method

.method private setInitialAnimationParameter()V
    .locals 7

    .prologue
    const v6, 0x7f0f001d

    const v5, 0x7f0f001c

    const v4, 0x7f0f001e

    const v3, 0x7f0f0013

    .line 599
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 600
    .local v0, dragBar:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    .line 601
    invoke-static {v5, p0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/LinearLayout;)V

    .line 602
    invoke-static {v5, p0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 603
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 606
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 609
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 610
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 611
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 612
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 614
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 615
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 616
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 617
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v6, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 618
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v6, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 620
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 621
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 622
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 623
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 624
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 626
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 628
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 629
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 630
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    goto :goto_0
.end method

.method private setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V
    .locals 0
    .parameter "fl"
    .parameter "tv"
    .parameter "enabled"
    .parameter "selected"
    .parameter "activated"

    .prologue
    .line 826
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 827
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 829
    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 830
    invoke-virtual {p1, p5}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 831
    return-void
.end method


# virtual methods
.method public collectPreWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    if-eqz v3, :cond_0

    .line 181
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050018

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 185
    .local v0, animator:Landroid/animation/Animator;
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 187
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 188
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05001c

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 191
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 193
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 194
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 197
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 201
    .end local v0           #animator:Landroid/animation/Animator;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2           #set:Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 222
    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 223
    iput v2, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    .line 224
    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v4, :cond_6

    .line 225
    iget v4, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    iput v4, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    .line 235
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-eqz v4, :cond_2

    .line 236
    new-instance v4, Lcom/android/launcher2/HomeEditBar$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/HomeEditBar$2;-><init>(Lcom/android/launcher2/HomeEditBar;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    .line 249
    iput-boolean v5, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    .line 295
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    if-eqz v4, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 297
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v0           #animator:Landroid/animation/Animator;
    :cond_1
    return-void

    .line 250
    :cond_2
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_4

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v3

    .line 252
    .local v3, cpMgr:Lcom/android/launcher2/ContextualPageManager;
    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v6

    if-ge v4, v6, :cond_3

    move v2, v5

    .line 253
    .local v2, canCreatePageInCPmode:Z
    :cond_3
    new-instance v4, Lcom/android/launcher2/HomeEditBar$3;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher2/HomeEditBar$3;-><init>(Lcom/android/launcher2/HomeEditBar;Z)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    .line 270
    iput-boolean v5, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    goto :goto_0

    .line 272
    .end local v2           #canCreatePageInCPmode:Z
    .end local v3           #cpMgr:Lcom/android/launcher2/ContextualPageManager;
    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v6

    if-ge v4, v6, :cond_5

    move v1, v5

    .line 273
    .local v1, canCreatePage:Z
    :goto_1
    new-instance v4, Lcom/android/launcher2/HomeEditBar$4;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher2/HomeEditBar$4;-><init>(Lcom/android/launcher2/HomeEditBar;Z)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    .line 290
    iput-boolean v5, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    goto :goto_0

    .end local v1           #canCreatePage:Z
    :cond_5
    move v1, v2

    .line 272
    goto :goto_1

    .line 292
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    if-eqz v4, :cond_0

    .line 293
    :cond_7
    iget v4, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    iput v4, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    goto :goto_0
.end method

.method public getBarPosition()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 518
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "a"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 527
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    if-ne v0, v1, :cond_4

    .line 528
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->setVisibility(I)V

    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher2/HomeEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 530
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 536
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 537
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 540
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 541
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 544
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 545
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 548
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 549
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 552
    :cond_4
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 561
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x0

    .line 572
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    .line 575
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setInitialAnimationParameter()V

    .line 576
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    .line 577
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    .line 579
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeEditBar;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 580
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/HomeEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 581
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    if-ne v0, v1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    .line 585
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 589
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 590
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setInitialAnimationParameter()V

    .line 591
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    .line 592
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    .line 593
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "dragEvent"

    .prologue
    .line 649
    const/4 v3, 0x0

    .line 650
    .local v3, rc:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    .line 651
    .local v2, localState:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/launcher2/DragState;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 652
    check-cast v1, Lcom/android/launcher2/DragState;

    .line 653
    .local v1, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 654
    .local v0, dragItem:Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_1

    .line 655
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_2

    .line 656
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    .line 666
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 667
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 670
    .end local v0           #dragItem:Lcom/android/launcher2/BaseItem;
    .end local v1           #dragState:Lcom/android/launcher2/DragState;
    :cond_1
    return v3

    .line 657
    .restart local v0       #dragItem:Lcom/android/launcher2/BaseItem;
    .restart local v1       #dragState:Lcom/android/launcher2/DragState;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_3

    .line 658
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0

    .line 659
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_4

    .line 660
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->newFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0

    .line 661
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_0

    .line 662
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->newPage(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    .line 682
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 687
    const v4, 0x7f070064

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 688
    .local v1, fl:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 689
    const v4, 0x7f070065

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 690
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 691
    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    .line 692
    iput-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    .line 693
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 694
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    .line 698
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    const v4, 0x7f070037

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #fl:Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 699
    .restart local v1       #fl:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_1

    .line 700
    const v4, 0x7f070038

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 701
    .restart local v3       #tv:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 702
    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    .line 703
    iput-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    .line 704
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 705
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 706
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 707
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 708
    .local v0, bin:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 709
    .local v2, lid:Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5, v6, v0, v2}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 714
    .end local v0           #bin:Landroid/graphics/drawable/Drawable;
    .end local v2           #lid:Landroid/graphics/drawable/Drawable;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f070033

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #fl:Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 715
    .restart local v1       #fl:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_2

    .line 716
    const v4, 0x7f070034

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 717
    .restart local v3       #tv:Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 718
    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    .line 719
    iput-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    .line 720
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 721
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 722
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 723
    new-instance v4, Lcom/android/launcher2/NewFolderDrawable;

    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5}, Lcom/android/launcher2/NewFolderDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 728
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_2
    const v4, 0x7f070035

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #fl:Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 729
    .restart local v1       #fl:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_3

    .line 730
    const v4, 0x7f070036

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 731
    .restart local v3       #tv:Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 732
    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    .line 733
    iput-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    .line 734
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 735
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 736
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 737
    new-instance v4, Lcom/android/launcher2/NewPageDrawable;

    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5}, Lcom/android/launcher2/NewPageDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 743
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    .line 744
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    .line 745
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    .line 746
    return-void
.end method
