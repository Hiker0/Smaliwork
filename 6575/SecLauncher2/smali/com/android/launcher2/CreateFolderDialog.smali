.class public Lcom/android/launcher2/CreateFolderDialog;
.super Landroid/app/DialogFragment;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    }
.end annotation


# static fields
.field private static final FIND_NEW_POS_KEY:Ljava/lang/String; = "FIND_NEW_POSITION"

.field private static final FOLDER_TITLE_KEY:Ljava/lang/String; = "FOLDER_TITLE"

.field private static final ITEM_DESTINATION_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_DESTINATION_CONTAINER_ID"

.field private static final ITEM_ID_KEY:Ljava/lang/String; = "ITEM_ID"

.field private static final ITEM_ORIGIN_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_ORIGIN_CONTAINER_ID"

.field private static final REMOVE_ITEM_KEY:Ljava/lang/String; = "REMOVE_ITEM"

.field private static final sFragmentTag:Ljava/lang/String; = "CreateFolderDialog"


# instance fields
.field private mDestinationContainerId:J

.field private mFindNewPosition:Z

.field private mFolderChildItem:Lcom/android/launcher2/BaseItem;

.field private mFolderTitle:Landroid/widget/EditText;

.field private mItemId:J

.field private mOriginContainerId:J

.field private mRemoveItem:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 16
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    .line 35
    iput-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    .line 36
    iput-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    .line 37
    iput-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    .line 39
    iput-boolean v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    .line 40
    iput-boolean v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZ)V
    .locals 8
    .parameter "manager"
    .parameter "childItem"
    .parameter "originContainerId"
    .parameter "destinationContainerId"
    .parameter "removeItem"
    .parameter "findNewPosition"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {v0}, Lcom/android/launcher2/CreateFolderDialog;-><init>()V

    .local v0, df:Lcom/android/launcher2/CreateFolderDialog;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 81
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/CreateFolderDialog;->init(Lcom/android/launcher2/BaseItem;JJZZ)V

    .line 82
    const-string v1, "CreateFolderDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/CreateFolderDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "ft"
    .parameter "manager"

    .prologue
    .line 90
    const-string v1, "CreateFolderDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 91
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 94
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 96
    :cond_0
    return-void
.end method

.method private init(Lcom/android/launcher2/BaseItem;JJZZ)V
    .locals 2
    .parameter "childItem"
    .parameter "originContainerId"
    .parameter "destinationContainerId"
    .parameter "removeItem"
    .parameter "findNewPosition"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    .line 52
    iput-wide p2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-wide v0, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    .line 57
    :cond_0
    iput-wide p4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    .line 58
    iput-boolean p6, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    .line 59
    iput-boolean p7, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    .line 60
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .parameter "manager"

    .prologue
    .line 86
    const-string v0, "CreateFolderDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 131
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 132
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, folderTitle:Ljava/lang/String;
    const/4 v1, 0x0

    .line 138
    .local v1, item:Lcom/android/launcher2/BaseItem;
    const/4 v7, 0x0

    .line 139
    .local v7, dragOrigin:Lcom/android/launcher2/DragOrigin;
    const/4 v0, 0x0

    .line 140
    .local v0, listener:Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    .line 142
    .local v8, launcher:Lcom/android/launcher2/Launcher;
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_4

    .line 143
    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    .line 163
    :cond_0
    :goto_0
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 165
    :cond_1
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 172
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 174
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iget-boolean v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iget-boolean v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZ)V

    .line 177
    .end local v0           #listener:Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    .end local v2           #folderTitle:Ljava/lang/String;
    .end local v7           #dragOrigin:Lcom/android/launcher2/DragOrigin;
    .end local v8           #launcher:Lcom/android/launcher2/Launcher;
    :cond_3
    return-void

    .line 144
    .restart local v0       #listener:Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    .restart local v1       #item:Lcom/android/launcher2/BaseItem;
    .restart local v2       #folderTitle:Ljava/lang/String;
    .restart local v7       #dragOrigin:Lcom/android/launcher2/DragOrigin;
    .restart local v8       #launcher:Lcom/android/launcher2/Launcher;
    :cond_4
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 146
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 148
    :cond_5
    iget-object v3, v8, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeFragment;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_6
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 150
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_7
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 153
    :cond_8
    iget-object v3, v8, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeFragment;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_0

    .line 154
    :cond_9
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 155
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto :goto_0

    .line 166
    :cond_a
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 167
    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, -0x1

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 101
    .local v2, vg:Landroid/view/ViewGroup;
    const v3, 0x7f07002e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    .line 103
    if-eqz p1, :cond_0

    .line 104
    const-string v3, "ITEM_ID"

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    .line 105
    const-string v3, "ITEM_ORIGIN_CONTAINER_ID"

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    .line 108
    const-string v3, "ITEM_DESTINATION_CONTAINER_ID"

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    .line 109
    const-string v3, "REMOVE_ITEM"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    .line 110
    const-string v3, "FIND_NEW_POSITION"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    .line 111
    const-string v3, "FOLDER_TITLE"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, folderTitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .end local v1           #folderTitle:Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e00a4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e00c4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0012

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0013

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 125
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 126
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    const-string v0, "ITEM_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 184
    const-string v0, "ITEM_ORIGIN_CONTAINER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 185
    const-string v0, "ITEM_DESTINATION_CONTAINER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 186
    const-string v0, "REMOVE_ITEM"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    const-string v0, "FIND_NEW_POSITION"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    const-string v0, "FOLDER_TITLE"

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method
