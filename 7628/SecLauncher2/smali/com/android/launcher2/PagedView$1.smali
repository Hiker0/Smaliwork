.class Lcom/android/launcher2/PagedView$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PagedView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/android/launcher2/PagedView$1;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 1188
    iget-object v0, p0, Lcom/android/launcher2/PagedView$1;->this$0:Lcom/android/launcher2/PagedView;

    #getter for: Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I
    invoke-static {v0}, Lcom/android/launcher2/PagedView;->access$100(Lcom/android/launcher2/PagedView;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/android/launcher2/PagedView$1;->this$0:Lcom/android/launcher2/PagedView;

    iget-object v1, p0, Lcom/android/launcher2/PagedView$1;->this$0:Lcom/android/launcher2/PagedView;

    #getter for: Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I
    invoke-static {v1}, Lcom/android/launcher2/PagedView;->access$100(Lcom/android/launcher2/PagedView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagedView$1;->this$0:Lcom/android/launcher2/PagedView;

    #getter for: Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I
    invoke-static {v2}, Lcom/android/launcher2/PagedView;->access$200(Lcom/android/launcher2/PagedView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView$1;->this$0:Lcom/android/launcher2/PagedView;

    #setter for: Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I
    invoke-static {v0, v3}, Lcom/android/launcher2/PagedView;->access$102(Lcom/android/launcher2/PagedView;I)I

    .line 1192
    return-void
.end method
