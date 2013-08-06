.class Lcom/android/launcher2/MenuAppsListFragment$1;
.super Ljava/lang/Object;
.source "MenuAppsListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsListFragment;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsListFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "LIST_WIDGET"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LIST_WIDGET"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->restorePopupMenu()Z

    .line 172
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    #getter for: Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsListFragment;->access$000(Lcom/android/launcher2/MenuAppsListFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 173
    const/4 v2, 0x1

    return v2
.end method
