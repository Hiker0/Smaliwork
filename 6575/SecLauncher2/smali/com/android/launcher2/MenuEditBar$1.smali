.class Lcom/android/launcher2/MenuEditBar$1;
.super Ljava/lang/Object;
.source "MenuEditBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuEditBar;->delete(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuEditBar;

.field final synthetic val$item:Lcom/android/launcher2/AppItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/AppItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBar$1;->this$0:Lcom/android/launcher2/MenuEditBar;

    iput-object p2, p0, Lcom/android/launcher2/MenuEditBar$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar$1;->val$item:Lcom/android/launcher2/AppItem;

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    .line 183
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    .line 184
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar$1;->this$0:Lcom/android/launcher2/MenuEditBar;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->bindAppsUpdated()V

    .line 185
    return-void
.end method
