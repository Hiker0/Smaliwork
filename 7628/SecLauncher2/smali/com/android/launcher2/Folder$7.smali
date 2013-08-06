.class Lcom/android/launcher2/Folder$7;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/ItemViewBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
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
    .line 903
    iput-object p1, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;
    .locals 5
    .parameter "item"
    .parameter "page"

    .prologue
    .line 906
    const/4 v0, 0x0

    .line 908
    .local v0, icon:Lcom/android/launcher2/AppIconView;
    iget-object v1, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$500(Lcom/android/launcher2/Folder;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002b

    iget-object v3, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #icon:Lcom/android/launcher2/AppIconView;
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 909
    .restart local v0       #icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 910
    iget-object v1, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$600(Lcom/android/launcher2/Folder;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    iget-object v1, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 912
    new-instance v1, Lcom/android/launcher2/FolderKeyEventListener;

    invoke-direct {v1}, Lcom/android/launcher2/FolderKeyEventListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 913
    return-object v0
.end method

.method public onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .parameter "v"
    .parameter "item"
    .parameter "page"

    .prologue
    const/4 v1, -0x1

    .line 918
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 919
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 920
    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 921
    return-void
.end method
