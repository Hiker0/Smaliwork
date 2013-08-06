.class Lcom/android/launcher2/Workspace$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onPageEndMoving()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$qlCamera:Lcom/android/launcher2/QuickLaunch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/QuickLaunch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$6;->val$qlCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/launcher2/Workspace$6;->val$qlCamera:Lcom/android/launcher2/QuickLaunch;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 703
    return-void
.end method
