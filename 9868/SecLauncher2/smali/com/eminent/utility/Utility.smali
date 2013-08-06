.class public Lcom/eminent/utility/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "alspsjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCh0()I
.end method

.method public static native getCh1()I
.end method

.method public static native getCh2()I
.end method

.method public static native getCh3()I
.end method

.method public static native getEvent()I
.end method

.method public static native getGestureSleep()I
.end method

.method public static native getHighThreshold()I
.end method

.method public static native getLowThreshold()I
.end method

.method public static native getOperationMode()I
.end method

.method public static native getPsBinaryMode()I
.end method

.method public static native getRaws()[I
.end method

.method public static native setGestureAutoIntTime(I)V
.end method

.method public static native setGestureEnabled(I)V
.end method

.method public static native setGestureIntTime(I)V
.end method

.method public static native setGesturePollingMode(I)V
.end method

.method public static native setGesturePollingTime(I)V
.end method

.method public static native setGestureSleep(I)V
.end method

.method public static native setHighThreshold(I)V
.end method

.method public static native setLowThreshold(I)V
.end method

.method public static native setOperationMode(I)V
.end method

.method public static native setPsBinaryMode(I)V
.end method

.method public static native setReg1Als(I)V
.end method

.method public static native setReg1Color(I)V
.end method

.method public static native setReg1Ps(I)V
.end method
