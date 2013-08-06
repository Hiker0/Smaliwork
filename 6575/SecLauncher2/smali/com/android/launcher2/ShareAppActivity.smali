.class public Lcom/android/launcher2/ShareAppActivity;
.super Landroid/app/Activity;
.source "ShareAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;,
        Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShareAppActivity"


# instance fields
.field private mAdapter:Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 229
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/ShareAppActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/ShareAppActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->finish()V

    .line 466
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->finish()V

    .line 475
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    if-eqz p2, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 26
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShareAppActivity;->mAdapter:Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v21

    .line 121
    .local v21, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShareAppActivity;->mAdapter:Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v14

    .line 123
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShareAppActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShareAppActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 125
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v11, filter:Landroid/content/IntentFilter;
    if-nez v14, :cond_0

    .line 211
    .end local v11           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 130
    .restart local v11       #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 131
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    :cond_1
    invoke-virtual {v14}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 134
    .local v8, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 135
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 136
    .local v7, cat:Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    .end local v7           #cat:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v23, "android.intent.category.DEFAULT"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 142
    if-eqz v21, :cond_5

    .line 143
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v23, v0

    const/high16 v24, 0xfff

    and-int v7, v23, v24

    .line 148
    .local v7, cat:I
    :goto_2
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 149
    .local v9, data:Landroid/net/Uri;
    const/high16 v23, 0x60

    move/from16 v0, v23

    if-ne v7, v0, :cond_6

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 151
    .local v15, mimeType:Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 153
    :try_start_0
    invoke-virtual {v11, v15}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v15           #mimeType:Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v11, :cond_c

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShareAppActivity;->mAdapter:Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->access$000(Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    .line 191
    .local v3, N:I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v22, v0

    .line 192
    .local v22, set:[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 193
    .local v6, bestMatch:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4
    if-ge v12, v3, :cond_b

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ShareAppActivity;->mAdapter:Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->access$000(Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    .line 195
    .local v20, r:Landroid/content/pm/ResolveInfo;
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v23, v22, v12

    .line 197
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v6, :cond_4

    move-object/from16 v0, v20

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 193
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 145
    .end local v3           #N:I
    .end local v6           #bestMatch:I
    .end local v7           #cat:I
    .end local v9           #data:Landroid/net/Uri;
    .end local v12           #i:I
    .end local v20           #r:Landroid/content/pm/ResolveInfo;
    .end local v22           #set:[Landroid/content/ComponentName;
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #cat:I
    goto :goto_2

    .line 154
    .restart local v9       #data:Landroid/net/Uri;
    .restart local v15       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 155
    .local v10, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v23, "ShareAppActivity"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    const/4 v11, 0x0

    goto :goto_3

    .line 159
    .end local v10           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v15           #mimeType:Ljava/lang/String;
    :cond_6
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_3

    if-eqz v21, :cond_3

    .line 160
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 165
    .local v5, aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_8

    .line 166
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 167
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 168
    .local v4, a:Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v23

    if-ltz v23, :cond_7

    .line 169
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v19

    .line 170
    .local v19, port:I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v24

    if-ltz v19, :cond_a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v4           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v19           #port:I
    :cond_8
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v17

    .line 177
    .local v17, pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v17, :cond_3

    .line 178
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 179
    .local v18, path:Ljava/lang/String;
    :cond_9
    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 180
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PatternMatcher;

    .line 181
    .local v16, p:Landroid/os/PatternMatcher;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 182
    invoke-virtual/range {v16 .. v16}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Landroid/os/PatternMatcher;->getType()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 170
    .end local v16           #p:Landroid/os/PatternMatcher;
    .end local v17           #pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v18           #path:Ljava/lang/String;
    .restart local v4       #a:Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v19       #port:I
    :cond_a
    const/16 v23, 0x0

    goto :goto_5

    .line 199
    .end local v4           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v5           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v19           #port:I
    .restart local v3       #N:I
    .restart local v6       #bestMatch:I
    .restart local v12       #i:I
    .restart local v22       #set:[Landroid/content/ComponentName;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ShareAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 203
    .end local v3           #N:I
    .end local v6           #bestMatch:I
    .end local v7           #cat:I
    .end local v8           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #data:Landroid/net/Uri;
    .end local v11           #filter:Landroid/content/IntentFilter;
    .end local v12           #i:I
    .end local v22           #set:[Landroid/content/ComponentName;
    :cond_c
    if-eqz v14, :cond_d

    .line 205
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/ShareAppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :cond_d
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ShareAppActivity;->finish()V

    goto/16 :goto_0

    .line 206
    :catch_1
    move-exception v10

    .line 207
    .local v10, e:Ljava/lang/Exception;
    const-string v23, "ShareAppActivity"

    const-string v24, "Selected activity for sending application has some problem."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 75
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .line 76
    .local v7, targetParcelable:Landroid/os/Parcelable;
    instance-of v0, v7, Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "ShareAppActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target is not an intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->finish()V

    .line 87
    :goto_0
    return-void

    :cond_0
    move-object v2, v7

    .line 81
    check-cast v2, Landroid/content/Intent;

    .line 83
    .local v2, target:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 85
    .local v3, title:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 86
    .local v4, initialIntents:[Landroid/content/Intent;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/ShareAppActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Z)V
    .locals 4
    .parameter "savedInstanceState"
    .parameter "intent"
    .parameter "title"
    .parameter "initialIntents"
    .parameter "alwaysUseOption"

    .prologue
    const/4 v3, 0x1

    .line 91
    new-instance v1, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/launcher2/ShareAppActivity;->mAlert:Lcom/android/internal/app/AlertController;

    .line 92
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/ShareAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ShareAppActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 99
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 100
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    new-instance v1, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

    invoke-direct {v1, p0, p0, p2, p4}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;-><init>(Lcom/android/launcher2/ShareAppActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/launcher2/ShareAppActivity;->mAdapter:Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

    .line 103
    iget-object v1, p0, Lcom/android/launcher2/ShareAppActivity;->mAdapter:Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/launcher2/ShareAppActivity;->mAdapter:Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/ShareAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->finish()V

    .line 115
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/ShareAppActivity;->mAdapter:Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/launcher2/ShareAppActivity;->mAdapter:Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 113
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/ShareAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/launcher2/ShareAppActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 114
    iget-object v1, p0, Lcom/android/launcher2/ShareAppActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1}, Lcom/android/internal/app/AlertController;->installContent()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/ShareAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 454
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 460
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
