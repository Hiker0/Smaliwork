.class Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;)V
    .locals 0
    .parameter

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->complete()V

    .line 1261
    return-void
.end method
