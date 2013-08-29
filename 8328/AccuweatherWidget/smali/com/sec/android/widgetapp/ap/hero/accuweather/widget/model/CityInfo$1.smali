.class final Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo$1;
.super Ljava/lang/Object;
.source "CityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;
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
        "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 186
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 190
    new-array v0, p1, [Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo$1;->newArray(I)[Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityInfo;

    move-result-object v0

    return-object v0
.end method
