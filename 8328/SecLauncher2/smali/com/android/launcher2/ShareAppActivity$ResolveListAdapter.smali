.class final Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ShareAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/ShareAppActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/ShareAppActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;)V
    .locals 14
    .parameter
    .parameter "context"
    .parameter "intent"
    .parameter "initialIntents"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->this$0:Lcom/android/launcher2/ShareAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 237
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    const-string v1, "layout_inflater"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 241
    #getter for: Lcom/android/launcher2/ShareAppActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/launcher2/ShareAppActivity;->access$200(Lcom/android/launcher2/ShareAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v13, 0x1

    #getter for: Lcom/android/launcher2/ShareAppActivity;->mAlwaysCheck:Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/android/launcher2/ShareAppActivity;->access$100(Lcom/android/launcher2/ShareAppActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    :goto_0
    or-int/2addr v1, v13

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 245
    .local v10, rListTemp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v2, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 248
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 264
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 241
    .end local v2           #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #i:I
    .end local v10           #rListTemp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    .restart local v2       #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8       #i:I
    .restart local v10       #rListTemp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    .line 268
    .local v7, N:I
    if-eqz v2, :cond_a

    if-lez v7, :cond_a

    .line 271
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 272
    .local v5, r0:Landroid/content/pm/ResolveInfo;
    const/4 v8, 0x1

    :goto_2
    if-ge v8, v7, :cond_4

    .line 273
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 274
    .restart local v11       #ri:Landroid/content/pm/ResolveInfo;
    const-string v1, "ResolveListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v13, v5, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "/"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v13, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, " vs "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v13, v11, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "/"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v13, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget v1, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v11, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v4, :cond_2

    iget-boolean v1, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v4, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v4, :cond_3

    .line 282
    :cond_2
    :goto_3
    if-ge v8, v7, :cond_3

    .line 283
    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 272
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 288
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v1, 0x1

    if-le v7, v1, :cond_5

    .line 289
    new-instance v9, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    #getter for: Lcom/android/launcher2/ShareAppActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/launcher2/ShareAppActivity;->access$200(Lcom/android/launcher2/ShareAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 291
    .local v9, rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    invoke-static {v2, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    .end local v9           #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 298
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #r0:Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 299
    .restart local v5       #r0:Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 300
    .local v3, start:I
    #getter for: Lcom/android/launcher2/ShareAppActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/launcher2/ShareAppActivity;->access$200(Lcom/android/launcher2/ShareAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 301
    .local v6, r0Label:Ljava/lang/CharSequence;
    const/4 v8, 0x1

    :goto_4
    if-ge v8, v7, :cond_9

    .line 302
    if-nez v6, :cond_6

    .line 303
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 305
    :cond_6
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 306
    .restart local v11       #ri:Landroid/content/pm/ResolveInfo;
    #getter for: Lcom/android/launcher2/ShareAppActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/launcher2/ShareAppActivity;->access$200(Lcom/android/launcher2/ShareAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 307
    .local v12, riLabel:Ljava/lang/CharSequence;
    if-nez v12, :cond_7

    .line 308
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 310
    :cond_7
    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 301
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 313
    :cond_8
    add-int/lit8 v4, v8, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 314
    move-object v5, v11

    .line 315
    move-object v6, v12

    .line 316
    move v3, v8

    goto :goto_5

    .line 319
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    .end local v12           #riLabel:Ljava/lang/CharSequence;
    :cond_9
    add-int/lit8 v4, v7, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 321
    .end local v3           #start:I
    .end local v5           #r0:Landroid/content/pm/ResolveInfo;
    .end local v6           #r0Label:Ljava/lang/CharSequence;
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;)V
    .locals 5
    .parameter "view"
    .parameter "info"

    .prologue
    .line 423
    const v3, 0x7f07008d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 424
    .local v1, text:Landroid/widget/TextView;
    const v3, 0x7f07008e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 425
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x7f07005a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 426
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v3, p2, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 428
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v3, p2, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :goto_0
    iget-object v3, p2, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 434
    iget-object v3, p2, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->this$0:Lcom/android/launcher2/ShareAppActivity;

    #getter for: Lcom/android/launcher2/ShareAppActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/launcher2/ShareAppActivity;->access$200(Lcom/android/launcher2/ShareAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 436
    :cond_0
    iget-object v3, p2, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    return-void

    .line 431
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 15
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter "ro"
    .parameter "roLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v11, p3, p2

    add-int/lit8 v8, v11, 0x1

    .line 327
    .local v8, num:I
    const/4 v11, 0x1

    if-ne v8, v11, :cond_1

    .line 329
    iget-object v11, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v12, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v12, v0, v1, v13, v14}, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_0
    return-void

    .line 331
    :cond_1
    const/4 v10, 0x0

    .line 332
    .local v10, usePkg:Z
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->this$0:Lcom/android/launcher2/ShareAppActivity;

    #getter for: Lcom/android/launcher2/ShareAppActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v12}, Lcom/android/launcher2/ShareAppActivity;->access$200(Lcom/android/launcher2/ShareAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 333
    .local v9, startApp:Ljava/lang/CharSequence;
    if-nez v9, :cond_2

    .line 334
    const/4 v10, 0x1

    .line 336
    :cond_2
    if-nez v10, :cond_5

    .line 338
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 340
    .local v3, duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v4, p2, 0x1

    .local v4, j:I
    :goto_0
    move/from16 v0, p3

    if-gt v4, v0, :cond_4

    .line 342
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 343
    .local v6, jRi:Landroid/content/pm/ResolveInfo;
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->this$0:Lcom/android/launcher2/ShareAppActivity;

    #getter for: Lcom/android/launcher2/ShareAppActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v12}, Lcom/android/launcher2/ShareAppActivity;->access$200(Lcom/android/launcher2/ShareAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 344
    .local v5, jApp:Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 345
    :cond_3
    const/4 v10, 0x1

    .line 352
    .end local v5           #jApp:Ljava/lang/CharSequence;
    .end local v6           #jRi:Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 354
    .end local v3           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v4           #j:I
    :cond_5
    move/from16 v7, p2

    .local v7, k:I
    :goto_1
    move/from16 v0, p3

    if-gt v7, v0, :cond_0

    .line 355
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 356
    .local v2, add:Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_7

    .line 358
    iget-object v11, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v12, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;

    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-direct {v12, v2, v0, v13, v14}, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 348
    .end local v2           #add:Landroid/content/pm/ResolveInfo;
    .end local v7           #k:I
    .restart local v3       #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v4       #j:I
    .restart local v5       #jApp:Ljava/lang/CharSequence;
    .restart local v6       #jRi:Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 362
    .end local v3           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v4           #j:I
    .end local v5           #jApp:Ljava/lang/CharSequence;
    .end local v6           #jRi:Landroid/content/pm/ResolveInfo;
    .restart local v2       #add:Landroid/content/pm/ResolveInfo;
    .restart local v7       #k:I
    :cond_7
    iget-object v11, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v12, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;

    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->this$0:Lcom/android/launcher2/ShareAppActivity;

    #getter for: Lcom/android/launcher2/ShareAppActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v14}, Lcom/android/launcher2/ShareAppActivity;->access$200(Lcom/android/launcher2/ShareAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-direct {v12, v2, v0, v13, v14}, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 406
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 412
    if-nez p2, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03003d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 418
    .local v0, view:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;)V

    .line 419
    return-object v0

    .line 416
    .end local v0           #view:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .parameter "position"

    .prologue
    .line 378
    iget-object v3, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 379
    const/4 v2, 0x0

    .line 391
    :goto_0
    return-object v2

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;

    .line 384
    .local v1, dri:Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 386
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    iget-object v3, v1, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 389
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 384
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ShareAppActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
