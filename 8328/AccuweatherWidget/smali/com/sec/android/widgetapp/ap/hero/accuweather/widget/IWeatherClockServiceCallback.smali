.class public interface abstract Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;
.super Ljava/lang/Object;
.source "IWeatherClockServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract httpResponse(IILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract valueChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
