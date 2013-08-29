.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
.super Ljava/lang/Object;
.source "GeneralWeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mHighTemp:F

.field mIconNum:I

.field mLowTemp:F

.field mTempScale:I

.field mTimestamp:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IFFILjava/lang/String;)V
    .locals 0
    .parameter "tempScale"
    .parameter "highTemp"
    .parameter "lowTemp"
    .parameter "iconNum"
    .parameter "url"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mTempScale:I

    .line 18
    iput p3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mLowTemp:F

    .line 19
    iput p2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mHighTemp:F

    .line 20
    iput p4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mIconNum:I

    .line 21
    iput-object p5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mUrl:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mTimestamp:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mTempScale:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mIconNum:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mHighTemp:F

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mLowTemp:F

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mUrl:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getHighTemp()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mHighTemp:F

    return v0
.end method

.method public getIconNum()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mIconNum:I

    return v0
.end method

.method public getLowTemp()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mLowTemp:F

    return v0
.end method

.method public getTempScale()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mTempScale:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mTimestamp:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setHighTemp(F)V
    .locals 0
    .parameter "temperature"

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mHighTemp:F

    .line 45
    return-void
.end method

.method public setIconNum(I)V
    .locals 0
    .parameter "iconNum"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mIconNum:I

    .line 53
    return-void
.end method

.method public setLowTemp(F)V
    .locals 0
    .parameter "temperature"

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mLowTemp:F

    .line 37
    return-void
.end method

.method public setTempScale(I)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 68
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mTempScale:I

    .line 69
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mUrl:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mTempScale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mIconNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mHighTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 80
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mLowTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return-void
.end method
