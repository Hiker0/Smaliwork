.class Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;
.super Ljava/lang/Object;
.source "CellLayoutWithResizableWidgets.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setResizeFrame(Lcom/android/launcher2/LauncherAppWidgetHostView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

.field final synthetic val$onFinish:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutWithResizableWidgets;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;->this$0:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iput-object p2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;->val$onFinish:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 40
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;->val$onFinish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 44
    return-void
.end method
