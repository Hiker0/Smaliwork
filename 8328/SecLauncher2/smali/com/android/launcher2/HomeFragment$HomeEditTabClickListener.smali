.class public Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeEditTabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3333
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;->this$0:Lcom/android/launcher2/HomeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 3336
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3337
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3346
    :cond_0
    :goto_0
    return-void

    .line 3340
    :sswitch_0
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 3341
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 3342
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;->this$0:Lcom/android/launcher2/HomeFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFragment;->showWorkspace(Z)V

    goto :goto_0

    .line 3337
    :sswitch_data_0
    .sparse-switch
        0x7f070039 -> :sswitch_0
        0x7f070054 -> :sswitch_0
    .end sparse-switch
.end method
