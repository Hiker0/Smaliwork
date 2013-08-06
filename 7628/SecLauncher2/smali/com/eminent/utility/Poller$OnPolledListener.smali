.class public interface abstract Lcom/eminent/utility/Poller$OnPolledListener;
.super Ljava/lang/Object;
.source "Poller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eminent/utility/Poller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPolledListener"
.end annotation


# virtual methods
.method public abstract onAlsDataChanged(III)V
.end method

.method public abstract onAlsParameterRetrieved(IIIIIIIII)V
.end method

.method public abstract onGestureChanged([I[IIII)V
.end method

.method public abstract onPsDataChanged(IIIII)V
.end method

.method public abstract onPsParameterRetrieved(III)V
.end method
