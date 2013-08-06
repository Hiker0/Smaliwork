.class public Lcom/android/launcher2/MenuEditBar;
.super Landroid/widget/LinearLayout;
.source "MenuEditBar.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuEditBar$5;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuEditBar"


# instance fields
.field private mAppInfo:Landroid/widget/TextView;

.field private mAppInfoContainer:Landroid/widget/FrameLayout;

.field private mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mDelete:Landroid/widget/TextView;

.field private mDeleteContainer:Landroid/widget/FrameLayout;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteText:Ljava/lang/String;

.field private mHideAnimator:Landroid/animation/Animator;

.field private mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mNewFolder:Landroid/widget/TextView;

.field private mNewFolderContainer:Landroid/widget/FrameLayout;

.field private mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private mNewPage:Landroid/widget/TextView;

.field private mNewPageAllowed:Z

.field private mNewPageContainer:Landroid/widget/FrameLayout;

.field private mNewPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mRes:Landroid/content/res/Resources;

.field private mShowAnimator:Landroid/animation/Animator;

.field private mUninstallText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    .line 88
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    .line 92
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteText:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mUninstallText:Ljava/lang/String;

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method

.method private appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 112
    .local v3, infoOk:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_0
    :goto_1
    :pswitch_0
    return v3

    .line 111
    .end local v3           #infoOk:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 114
    .restart local v3       #infoOk:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 118
    :pswitch_2
    if-eqz v3, :cond_0

    .line 119
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 125
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, pkgName:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 127
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    .local v10, intent:Landroid/content/Intent;
    const/high16 v0, 0x1080

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 132
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 137
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #pkgName:Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 141
    :pswitch_5
    if-eqz v3, :cond_0

    .line 142
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private delete(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 165
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v0, :cond_2

    :cond_0
    move v3, v8

    .line 167
    .local v3, deleteOk:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    :cond_1
    :goto_1
    :pswitch_0
    return v3

    .end local v3           #deleteOk:Z
    :cond_2
    move v3, v4

    .line 165
    goto :goto_0

    .line 169
    .restart local v3       #deleteOk:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 173
    :pswitch_2
    if-eqz v3, :cond_1

    .line 174
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v8

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 175
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    move v11, v8

    .line 178
    .local v11, isEmptyFolder:Z
    :goto_2
    if-eqz v11, :cond_4

    .line 179
    new-instance v0, Lcom/android/launcher2/MenuEditBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuEditBar$1;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .end local v11           #isEmptyFolder:Z
    :cond_3
    move v11, v4

    .line 175
    goto :goto_2

    .line 188
    .restart local v11       #isEmptyFolder:Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuEditBar;->showDeleteConfirmationDialog(Lcom/android/launcher2/AppItem;)V

    .line 189
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    .line 190
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDrop()V

    goto :goto_1

    .line 197
    .end local v11           #isEmptyFolder:Z
    :pswitch_3
    if-eqz v3, :cond_1

    .line 198
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 204
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 208
    :pswitch_5
    if-eqz v3, :cond_1

    .line 209
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    .line 224
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->hideEditBar(Landroid/animation/Animator;)V

    .line 226
    :cond_1
    return-void
.end method

.method private newFolder(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 13
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 243
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    .line 244
    .local v3, folderOk:Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    :cond_0
    :goto_1
    :pswitch_0
    return v3

    .line 243
    .end local v3           #folderOk:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 246
    .restart local v3       #folderOk:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 249
    :pswitch_2
    if-eqz v3, :cond_0

    .line 250
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v12

    .line 252
    .local v12, menuFragment:Lcom/android/launcher2/MenuFragment;
    invoke-virtual {v12}, Lcom/android/launcher2/MenuFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v0, p2, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v6

    const-wide/16 v8, -0x66

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v11}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZ)V

    goto :goto_1

    .line 259
    .end local v12           #menuFragment:Lcom/android/launcher2/MenuFragment;
    :pswitch_3
    if-eqz v3, :cond_0

    .line 260
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 266
    :pswitch_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 270
    :pswitch_5
    if-eqz v3, :cond_0

    .line 271
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private newPage(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 9
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 294
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    return v0

    .line 297
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 298
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 299
    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 300
    .local v7, newScreenPos:I
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p1, v7}, Lcom/android/launcher2/MenuAppModel;->editInsertItemOnNewScreen(Lcom/android/launcher2/AppItem;I)V

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v6

    .line 302
    .local v6, menuFragment:Lcom/android/launcher2/MenuFragment;
    new-instance v0, Lcom/android/launcher2/MenuEditBar$2;

    invoke-direct {v0, p0, v6, v7}, Lcom/android/launcher2/MenuEditBar$2;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/MenuFragment;I)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 324
    .end local v6           #menuFragment:Lcom/android/launcher2/MenuFragment;
    .end local v7           #newScreenPos:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v3

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 333
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setAnimatorsForOrientation()V
    .locals 5

    .prologue
    .line 512
    iget v3, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v0, v3, 0x3

    .line 514
    .local v0, barPosition:I
    packed-switch v0, :pswitch_data_0

    .line 528
    :pswitch_0
    const v1, 0x7f050015

    .line 529
    .local v1, hideAnim:I
    const v2, 0x7f050016

    .line 532
    .local v2, showAnim:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    .line 533
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 534
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/MenuEditBar$3;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuEditBar$3;-><init>(Lcom/android/launcher2/MenuEditBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 551
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    .line 552
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/MenuEditBar$4;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuEditBar$4;-><init>(Lcom/android/launcher2/MenuEditBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 563
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 564
    return-void

    .line 516
    .end local v1           #hideAnim:I
    .end local v2           #showAnim:I
    :pswitch_1
    const v1, 0x7f05000d

    .line 517
    .restart local v1       #hideAnim:I
    const v2, 0x7f05000e

    .line 518
    .restart local v2       #showAnim:I
    goto :goto_0

    .line 520
    .end local v1           #hideAnim:I
    .end local v2           #showAnim:I
    :pswitch_2
    const v1, 0x7f050013

    .line 521
    .restart local v1       #hideAnim:I
    const v2, 0x7f050014

    .line 522
    .restart local v2       #showAnim:I
    goto :goto_0

    .line 524
    .end local v1           #hideAnim:I
    .end local v2           #showAnim:I
    :pswitch_3
    const/high16 v1, 0x7f05

    .line 525
    .restart local v1       #hideAnim:I
    const v2, 0x7f050001

    .line 526
    .restart local v2       #showAnim:I
    goto :goto_0

    .line 514
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
    .line 579
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 580
    aput-object p2, p3, p4

    .line 581
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    const/4 v3, 0x3

    aget-object v3, p3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 583
    :cond_0
    return-void
.end method

.method private setDrawablesForOrientation()V
    .locals 4

    .prologue
    .line 590
    const/4 v2, 0x4

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 592
    .local v0, d:[Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v1, v2, 0x4

    .line 596
    .local v1, index:I
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 597
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 598
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 599
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 600
    return-void
.end method

.method private setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V
    .locals 0
    .parameter "fl"
    .parameter "tv"
    .parameter "enabled"
    .parameter "selected"
    .parameter "activated"

    .prologue
    .line 619
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 620
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 622
    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 623
    invoke-virtual {p1, p5}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 624
    return-void
.end method

.method private showDeleteConfirmationDialog(Lcom/android/launcher2/AppItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 669
    sget-object v0, Lcom/android/launcher2/MenuEditBar$5;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 680
    .end local p1
    :goto_0
    return-void

    .line 671
    .restart local p1
    :pswitch_0
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 676
    :pswitch_1
    check-cast p1, Lcom/android/launcher2/AppFolderItem;

    .end local p1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const v3, 0x7f0f001f

    .line 343
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 346
    .local v0, dragBar:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    .line 348
    invoke-static {v3, p0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 349
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 380
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "dragEvent"

    .prologue
    .line 399
    const/4 v6, 0x0

    .line 401
    .local v6, rc:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    .line 402
    .local v5, localState:Ljava/lang/Object;
    instance-of v7, v5, Lcom/android/launcher2/DragState;

    if-eqz v7, :cond_2

    move-object v3, v5

    .line 403
    check-cast v3, Lcom/android/launcher2/DragState;

    .line 404
    .local v3, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 405
    .local v0, action:I
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 406
    .local v1, baseItem:Lcom/android/launcher2/BaseItem;
    instance-of v7, v1, Lcom/android/launcher2/AppItem;

    if-eqz v7, :cond_1

    move-object v2, v1

    .line 407
    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 409
    .local v2, dragItem:Lcom/android/launcher2/AppItem;
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_3

    .line 410
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    .line 420
    :cond_0
    :goto_0
    const/4 v7, 0x4

    if-ne v0, v7, :cond_1

    .line 421
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 422
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->hide()V

    .line 425
    .end local v2           #dragItem:Lcom/android/launcher2/AppItem;
    :cond_1
    const/4 v7, 0x5

    if-ne v0, v7, :cond_2

    .line 426
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v4

    .line 427
    .local v4, folder:Lcom/android/launcher2/Folder;
    if-eqz v4, :cond_2

    .line 428
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    .line 432
    .end local v0           #action:I
    .end local v1           #baseItem:Lcom/android/launcher2/BaseItem;
    .end local v3           #dragState:Lcom/android/launcher2/DragState;
    .end local v4           #folder:Lcom/android/launcher2/Folder;
    :cond_2
    return v6

    .line 411
    .restart local v0       #action:I
    .restart local v1       #baseItem:Lcom/android/launcher2/BaseItem;
    .restart local v2       #dragItem:Lcom/android/launcher2/AppItem;
    .restart local v3       #dragState:Lcom/android/launcher2/DragState;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_4

    .line 412
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->delete(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_0

    .line 413
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_5

    .line 414
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->newFolder(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_0

    .line 415
    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_0

    .line 416
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->newPage(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    .line 444
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 449
    const v4, 0x7f070064

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 450
    .local v1, fl:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 451
    const v4, 0x7f070065

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 452
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 453
    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    .line 454
    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    .line 455
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 456
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    .line 460
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    const v4, 0x7f070037

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #fl:Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 461
    .restart local v1       #fl:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_1

    .line 462
    const v4, 0x7f070038

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 463
    .restart local v3       #tv:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 464
    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    .line 465
    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    .line 466
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 467
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 468
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 470
    .local v0, bin:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 471
    .local v2, lid:Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5, v6, v0, v2}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 476
    .end local v0           #bin:Landroid/graphics/drawable/Drawable;
    .end local v2           #lid:Landroid/graphics/drawable/Drawable;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f070033

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #fl:Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 477
    .restart local v1       #fl:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_2

    .line 478
    const v4, 0x7f070034

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 479
    .restart local v3       #tv:Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 480
    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    .line 481
    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    .line 482
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 483
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 485
    new-instance v4, Lcom/android/launcher2/NewFolderDrawable;

    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5}, Lcom/android/launcher2/NewFolderDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 490
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_2
    const v4, 0x7f070035

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #fl:Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 491
    .restart local v1       #fl:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_3

    .line 492
    const v4, 0x7f070036

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 493
    .restart local v3       #tv:Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 494
    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    .line 495
    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    .line 496
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 497
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 498
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 499
    new-instance v4, Lcom/android/launcher2/NewPageDrawable;

    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5}, Lcom/android/launcher2/NewPageDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 504
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setAnimatorsForOrientation()V

    .line 505
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setDrawablesForOrientation()V

    .line 506
    return-void
.end method

.method public show(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;ZZZZ)V
    .locals 7
    .parameter "grid"
    .parameter
    .parameter "newFolderAllowed"
    .parameter "isSystemApp"
    .parameter "newPageAllowed"
    .parameter "isFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    .local p2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 633
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    .line 634
    iput-boolean p5, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    .line 639
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 640
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 641
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_6

    move v0, v4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 644
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz p6, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteText:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-nez p4, :cond_8

    const/4 v3, 0x1

    :goto_2
    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 646
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-eqz p4, :cond_9

    move v0, v6

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 649
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 650
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_a

    move v0, v4

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 653
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 654
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    if-eqz p5, :cond_3

    move v6, v4

    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 657
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    .line 659
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_5
    return-void

    :cond_6
    move v0, v6

    .line 641
    goto :goto_0

    .line 644
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mUninstallText:Ljava/lang/String;

    goto :goto_1

    :cond_8
    move v3, v4

    .line 645
    goto :goto_2

    :cond_9
    move v0, v4

    .line 646
    goto :goto_3

    :cond_a
    move v0, v6

    .line 650
    goto :goto_4
.end method
