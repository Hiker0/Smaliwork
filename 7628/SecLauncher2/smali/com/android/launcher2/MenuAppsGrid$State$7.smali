.class final enum Lcom/android/launcher2/MenuAppsGrid$State$7;
.super Lcom/android/launcher2/MenuAppsGrid$State;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 851
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppsGrid$State;-><init>(Ljava/lang/String;ILcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    const-string v0, "SHARE_SELECT"

    return-object v0
.end method

.method protected getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "this_"

    .prologue
    .line 854
    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;
    invoke-static {p1}, Lcom/android/launcher2/MenuAppsGrid;->access$1300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    move-result-object v0

    return-object v0
.end method
