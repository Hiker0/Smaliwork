.class Lcom/android/launcher2/Folder$FolderVertScroller;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderVertScroller"
.end annotation


# static fields
.field public static final DIR_DOWN:I = 0x1

.field public static final DIR_UP:I = -0x1

.field public static final SCROLL_DELAY:I = 0x19


# instance fields
.field private mDir:I

.field private mInQueue:Z

.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object p1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    .line 192
    iput-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    .line 195
    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollUp()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 236
    iput-boolean v3, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    .line 237
    iget v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    mul-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollBy(II)V

    .line 239
    iget v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollUp()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    .line 241
    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    const-wide/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher2/Folder;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    :cond_2
    return-void
.end method

.method public scrollDown()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelRealTimeReorder()V

    .line 200
    iput v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    .line 201
    iget-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    if-nez v0, :cond_0

    .line 202
    iput-boolean v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    .line 203
    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    const-wide/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher2/Folder;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_0
    return-void
.end method

.method public scrollUp()V
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelRealTimeReorder()V

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    .line 227
    iget-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    .line 229
    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    const-wide/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher2/Folder;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :cond_0
    return-void
.end method

.method public unQueue()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Folder;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    .line 213
    :cond_0
    return-void
.end method
