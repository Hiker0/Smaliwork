.class public interface abstract Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService;
.super Ljava/lang/Object;
.source "IWeatherClockService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
