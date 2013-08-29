.class final Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo$1;
.super Ljava/lang/Object;
.source "GeneralWeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 95
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 99
    new-array v0, p1, [Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo$1;->newArray(I)[Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;

    move-result-object v0

    return-object v0
.end method
