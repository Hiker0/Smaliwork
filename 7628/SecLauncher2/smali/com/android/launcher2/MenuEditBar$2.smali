.class Lcom/android/launcher2/MenuEditBar$2;
.super Ljava/lang/Object;
.source "MenuEditBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuEditBar;->newPage(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuEditBar;

.field final synthetic val$menuFragment:Lcom/android/launcher2/MenuFragment;

.field final synthetic val$newScreenPos:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/MenuFragment;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBar$2;->this$0:Lcom/android/launcher2/MenuEditBar;

    iput-object p2, p0, Lcom/android/launcher2/MenuEditBar$2;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    iput p3, p0, Lcom/android/launcher2/MenuEditBar$2;->val$newScreenPos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 305
    const-string v2, "MenuEditBar"

    const-string v3, "newPage appModelUpdated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar$2;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->appModelUpdated()V

    .line 307
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar$2;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, fragView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 309
    const v2, 0x7f07005b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid;

    .line 310
    .local v1, mag:Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v1, :cond_0

    .line 311
    iget v2, p0, Lcom/android/launcher2/MenuEditBar$2;->val$newScreenPos:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageAfterLayout(II)V

    .line 314
    .end local v1           #mag:Lcom/android/launcher2/MenuAppsGrid;
    :cond_0
    return-void
.end method
