.class Lcom/eminent/utility/Poller$1;
.super Ljava/lang/Object;
.source "Poller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eminent/utility/Poller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eminent/utility/Poller;


# direct methods
.method constructor <init>(Lcom/eminent/utility/Poller;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 71
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mRunflag:Z
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$000(Lcom/eminent/utility/Poller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mRate:I
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$100(Lcom/eminent/utility/Poller;)I

    move-result v0

    if-lez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$200(Lcom/eminent/utility/Poller;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mRate:I
    invoke-static {v1}, Lcom/eminent/utility/Poller;->access$100(Lcom/eminent/utility/Poller;)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mMode:I
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$300(Lcom/eminent/utility/Poller;)I

    move-result v0

    if-eq v0, v9, :cond_3

    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mMode:I
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$300(Lcom/eminent/utility/Poller;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 81
    :cond_3
    const/4 v6, 0x0

    .line 82
    .local v6, alsCh0:I
    invoke-static {}, Lcom/eminent/utility/Utility;->getCh2()I

    move-result v7

    .line 83
    .local v7, alsCh2:I
    const/16 v0, 0x3ff

    if-eq v7, v0, :cond_4

    .line 84
    invoke-static {}, Lcom/eminent/utility/Utility;->getCh3()I

    move-result v0

    sub-int/2addr v7, v0

    .line 85
    :cond_4
    if-gez v7, :cond_5

    .line 86
    const/4 v7, 0x0

    .line 87
    :cond_5
    move v8, v7

    .line 88
    .local v8, lux:I
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$400(Lcom/eminent/utility/Poller;)Lcom/eminent/utility/Poller$OnPolledListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$400(Lcom/eminent/utility/Poller;)Lcom/eminent/utility/Poller$OnPolledListener;

    move-result-object v0

    invoke-interface {v0, v8, v6, v7}, Lcom/eminent/utility/Poller$OnPolledListener;->onAlsDataChanged(III)V

    .line 94
    .end local v6           #alsCh0:I
    .end local v7           #alsCh2:I
    .end local v8           #lux:I
    :cond_6
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mMode:I
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$300(Lcom/eminent/utility/Poller;)I

    move-result v0

    if-eq v0, v9, :cond_7

    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mMode:I
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$300(Lcom/eminent/utility/Poller;)I

    move-result v0

    if-ne v0, v9, :cond_a

    .line 96
    :cond_7
    invoke-static {}, Lcom/eminent/utility/Utility;->getCh1()I

    move-result v3

    .line 97
    .local v3, psCh1:I
    const/4 v2, 0x0

    .line 99
    .local v2, psCh0:I
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mPsHighThreshold:I
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$500(Lcom/eminent/utility/Poller;)I

    move-result v0

    if-le v3, v0, :cond_8

    .line 100
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    const/4 v1, 0x0

    #setter for: Lcom/eminent/utility/Poller;->mPsValue:I
    invoke-static {v0, v1}, Lcom/eminent/utility/Poller;->access$602(Lcom/eminent/utility/Poller;I)I

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mPsLowThreshold:I
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$700(Lcom/eminent/utility/Poller;)I

    move-result v0

    if-gt v3, v0, :cond_9

    .line 103
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    const/4 v1, 0x1

    #setter for: Lcom/eminent/utility/Poller;->mPsValue:I
    invoke-static {v0, v1}, Lcom/eminent/utility/Poller;->access$602(Lcom/eminent/utility/Poller;I)I

    .line 105
    :cond_9
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$400(Lcom/eminent/utility/Poller;)Lcom/eminent/utility/Poller$OnPolledListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 107
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$400(Lcom/eminent/utility/Poller;)Lcom/eminent/utility/Poller$OnPolledListener;

    move-result-object v0

    iget-object v1, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mPsValue:I
    invoke-static {v1}, Lcom/eminent/utility/Poller;->access$600(Lcom/eminent/utility/Poller;)I

    move-result v1

    iget-object v4, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mPsHighThreshold:I
    invoke-static {v4}, Lcom/eminent/utility/Poller;->access$500(Lcom/eminent/utility/Poller;)I

    move-result v4

    iget-object v5, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mPsLowThreshold:I
    invoke-static {v5}, Lcom/eminent/utility/Poller;->access$700(Lcom/eminent/utility/Poller;)I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/eminent/utility/Poller$OnPolledListener;->onPsDataChanged(IIIII)V

    .line 112
    .end local v2           #psCh0:I
    .end local v3           #psCh1:I
    :cond_a
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #getter for: Lcom/eminent/utility/Poller;->mMode:I
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$300(Lcom/eminent/utility/Poller;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/eminent/utility/Poller$1;->this$0:Lcom/eminent/utility/Poller;

    #calls: Lcom/eminent/utility/Poller;->readGesture()V
    invoke-static {v0}, Lcom/eminent/utility/Poller;->access$800(Lcom/eminent/utility/Poller;)V

    goto/16 :goto_0
.end method
