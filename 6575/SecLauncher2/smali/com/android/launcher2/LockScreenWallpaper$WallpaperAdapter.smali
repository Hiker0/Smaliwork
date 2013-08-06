.class public Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LockScreenWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LockScreenWallpaper;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$100(Lcom/android/launcher2/LockScreenWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    const-string v3, "com.sec.android.gallery3d"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "com.sec.android.app.wallpaperchooser"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "com.android.wallpaper.livepicker"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_2
    const-string v3, "com.sec.android.gallery3d"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v3, "com.sec.android.app.wallpaperchooser"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_4
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 155
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 167
    if-nez p2, :cond_3

    .line 168
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$200(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 172
    new-instance v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;

    invoke-direct {v1}, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;-><init>()V

    .line 173
    .local v1, holder:Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;
    const v3, 0x7f07008a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 174
    const v3, 0x7f07008b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->name:Landroid/widget/TextView;

    .line 176
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    :goto_0
    move v0, p1

    .line 185
    .local v0, count:I
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$100(Lcom/android/launcher2/LockScreenWallpaper;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 187
    const-string v4, "com.sec.android.gallery3d"

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "com.sec.android.app.wallpaperchooser"

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "com.android.wallpaper.livepicker"

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    :cond_0
    if-nez v0, :cond_1

    .line 191
    iget-object v4, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/launcher2/LockScreenWallpaper;->access$300(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v4, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/launcher2/LockScreenWallpaper;->access$300(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$400(Lcom/android/launcher2/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    .line 195
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 186
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 180
    .end local v0           #count:I
    .end local v1           #holder:Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;
    .end local v2           #i:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;

    .restart local v1       #holder:Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;
    goto/16 :goto_0

    .line 199
    .restart local v0       #count:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 200
    const-string v4, "com.sec.android.gallery3d"

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v4, "com.sec.android.app.wallpaperchooser"

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 202
    :cond_5
    if-nez v0, :cond_6

    .line 203
    iget-object v4, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/launcher2/LockScreenWallpaper;->access$300(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v4, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/launcher2/LockScreenWallpaper;->access$300(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$400(Lcom/android/launcher2/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    .line 207
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 199
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 212
    :cond_8
    return-object p2
.end method
