.class Lcom/android/launcher2/Folder$9;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->handleOrientationChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    #calls: Lcom/android/launcher2/Folder;->finishSetup()V
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$700(Lcom/android/launcher2/Folder;)V

    .line 1319
    iget-object v0, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    #calls: Lcom/android/launcher2/Folder;->showAddFolderItem()V
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$800(Lcom/android/launcher2/Folder;)V

    .line 1320
    return-void
.end method
