.class Lcom/android/launcher2/AddToHomescreenDialogFragment$1;
.super Ljava/lang/Object;
.source "AddToHomescreenDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;->val$c:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss()V

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;->val$c:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFragment;->startWallpaper(I)V

    .line 78
    return-void
.end method
