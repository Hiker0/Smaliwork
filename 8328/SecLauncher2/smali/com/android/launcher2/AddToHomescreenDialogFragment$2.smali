.class Lcom/android/launcher2/AddToHomescreenDialogFragment$2;
.super Ljava/lang/Object;
.source "AddToHomescreenDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AddToHomescreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

.field final synthetic val$launcher:Lcom/android/launcher2/Launcher;

.field final synthetic val$ws:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$launcher:Lcom/android/launcher2/Launcher;

    iput-object p3, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$ws:Lcom/android/launcher2/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss()V

    .line 111
    packed-switch p3, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$launcher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f0e0028

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x64

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZ)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$ws:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->newPage(Z)I

    move-result v8

    .line 125
    .local v8, insertAt:I
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$ws:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v8, v7}, Lcom/android/launcher2/Workspace;->snapToPageAfterLayout(II)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
