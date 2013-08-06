.class public Lcom/android/launcher2/AddToHomescreenDialogFragment;
.super Landroid/app/DialogFragment;
.source "AddToHomescreenDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AddToHomeScreenDialogFragment"

.field private static final sFragmentTag:Ljava/lang/String; = "AddToHomescreen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;-><init>()V

    .line 34
    .local v0, f:Lcom/android/launcher2/AddToHomescreenDialogFragment;
    const-string v1, "AddToHomescreen"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "ft"
    .parameter "manager"

    .prologue
    .line 42
    const-string v1, "AddToHomescreen"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 43
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 45
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 47
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .parameter "manager"

    .prologue
    .line 38
    const-string v0, "AddToHomescreen"

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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 57
    .local v2, c:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    .line 58
    .local v8, launcher:Lcom/android/launcher2/Launcher;
    const v12, 0x7f030007

    const/4 v13, 0x0

    invoke-static {v2, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 59
    .local v9, layout:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v12, 0x7f0e001d

    invoke-virtual {p0, v12}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 63
    .local v6, dialog:Landroid/app/Dialog;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    iget-object v12, v8, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    .line 66
    .local v11, ws:Lcom/android/launcher2/Workspace;
    iget-object v12, v8, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v5

    .line 67
    .local v5, cpMgr:Lcom/android/launcher2/ContextualPageManager;
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v12

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v13

    if-ge v12, v13, :cond_2

    const/4 v3, 0x1

    .line 68
    .local v3, canCreatePage:Z
    :goto_0
    sget-boolean v12, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v12, :cond_0

    .line 69
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v12

    invoke-virtual {v5}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v13

    if-ge v12, v13, :cond_3

    const/4 v3, 0x1

    .line 71
    :cond_0
    :goto_1
    const v12, 0x7f07001f

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    new-instance v13, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;

    invoke-direct {v13, p0, v2}, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;-><init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0018

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0019

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    if-eqz v3, :cond_1

    .line 88
    sget-boolean v12, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v12, :cond_4

    .line 89
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 91
    .local v4, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v12

    if-nez v12, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e001a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenSmall()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 99
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v12, 0x1090003

    invoke-direct {v0, v2, v12, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 103
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_3
    const v12, 0x7f070021

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 104
    .local v10, lv:Landroid/widget/ListView;
    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    new-instance v12, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;

    invoke-direct {v12, p0, v8, v11}, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;-><init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v10, v12}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    return-object v6

    .line 67
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v3           #canCreatePage:Z
    .end local v7           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #lv:Landroid/widget/ListView;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 69
    .restart local v3       #canCreatePage:Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 94
    .restart local v7       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e001a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    :cond_5
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v12, 0x7f030001

    invoke-direct {v0, v2, v12, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto :goto_3
.end method
