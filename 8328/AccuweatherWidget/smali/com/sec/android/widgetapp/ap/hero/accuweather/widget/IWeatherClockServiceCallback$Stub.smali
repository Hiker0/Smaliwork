.class public abstract Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IWeatherClockServiceCallback.java"

# interfaces
.implements Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.widgetapp.ap.hero.accuweather.widget.IWeatherClockServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.sec.android.widgetapp.ap.hero.accuweather.widget.IWeatherClockServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.sec.android.widgetapp.ap.hero.accuweather.widget.IWeatherClockServiceCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.sec.android.widgetapp.ap.hero.accuweather.widget.IWeatherClockServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback$Stub;->valueChanged(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.sec.android.widgetapp.ap.hero.accuweather.widget.IWeatherClockServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 65
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 67
    .local v5, _arg4:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 69
    .local v6, _arg5:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, _arg6:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, _arg7:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x1

    .line 75
    .local v9, _arg8:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg9:I
    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/IWeatherClockServiceCallback$Stub;->httpResponse(IILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZI)V

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Z
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_arg7:Ljava/lang/String;
    .end local v9           #_arg8:Z
    .end local v10           #_arg9:I
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 67
    .restart local v5       #_arg4:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 73
    .restart local v6       #_arg5:Z
    .restart local v7       #_arg6:Ljava/lang/String;
    .restart local v8       #_arg7:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
