.class Lcom/android/launcher2/Launcher$10;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 74
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ges_p_sensor"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 77
    .local v0, value:I
    if-ne v0, v1, :cond_1

	sget-boolean v1, Lcom/android/launcher2/Launcher;->HQ_PSENSOR_SUPPORT :Z

    if-eqz v1, :zxf_cond_1
	
    .line 79
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mProximitySensorManager:Lcom/eminent/utility/ProximitySensorManager;
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$402(Lcom/android/launcher2/Launcher;)Lcom/eminent/utility/ProximitySensorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eminent/utility/ProximitySensorManager;->enable()V
	
	:zxf_cond_1
	
	sget-boolean v1, Lcom/android/launcher2/Launcher;->HQ_GESENSOR_SUPPORT :Z

    if-eqz v1, :goto_1
	
    .line 83
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mGesHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mGesPolling:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    #setter for: Lcom/android/launcher2/Launcher;->mGesEnabled:Z
    invoke-static {v3, v1}, Lcom/android/launcher2/Launcher;->access$002(Lcom/android/launcher2/Launcher;Z)Z

    .line 85
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mGesHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mGesPolling:Ljava/lang/Runnable;

    const-wide/16 v5, 0x96

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mGesEnabled:Z
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$000(Lcom/android/launcher2/Launcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/eminent/utility/Utility;->setGestureEnabled(I)V

    .line 99
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 86
    goto :goto_0

    .line 90
    :cond_1
	
	sget-boolean v1, Lcom/android/launcher2/Launcher;->HQ_PSENSOR_SUPPORT :Z

    if-eqz v1, :zxf_cond_2
	
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mProximitySensorManager:Lcom/eminent/utility/ProximitySensorManager;
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$402(Lcom/android/launcher2/Launcher;)Lcom/eminent/utility/ProximitySensorManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/eminent/utility/ProximitySensorManager;->disable(Z)V
	
	:zxf_cond_2
	
	sget-boolean v1, Lcom/android/launcher2/Launcher;->HQ_GESENSOR_SUPPORT :Z

    if-eqz v1, :goto_1

    .line 94
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    #setter for: Lcom/android/launcher2/Launcher;->mGesEnabled:Z
    invoke-static {v3, v2}, Lcom/android/launcher2/Launcher;->access$002(Lcom/android/launcher2/Launcher;Z)Z

    .line 95
    iget-object v3, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mGesEnabled:Z
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$000(Lcom/android/launcher2/Launcher;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/eminent/utility/Utility;->setGestureEnabled(I)V

    .line 96
    iget-object v1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mGesHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mGesPolling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 95
    goto :goto_2
.end method
