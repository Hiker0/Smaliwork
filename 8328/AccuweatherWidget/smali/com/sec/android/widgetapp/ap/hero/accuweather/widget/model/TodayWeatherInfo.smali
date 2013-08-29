.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;
.super Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;
.source "TodayWeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCurrentTemp:F

.field mSummerTime:Ljava/lang/String;

.field mSunRiseTime:Ljava/lang/String;

.field mSunSetTime:Ljava/lang/String;

.field mTimeZone:Ljava/lang/String;

.field mUpdateDate:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field mWeatherText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(IFFIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tempScale"
    .parameter "lowTemp"
    .parameter "highTemp"
    .parameter "iconNum"
    .parameter "currentTemp"
    .parameter "timezone"
    .parameter "weathertext"
    .parameter "url"

    .prologue
    .line 23
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    .line 24
    iput p5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mCurrentTemp:F

    .line 25
    iput-object p6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 27
    iput-object p8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(ILcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "tempScale"
    .parameter "generalInfo"
    .parameter "currentTemp"
    .parameter "timezone"
    .parameter "weathertext"
    .parameter "url"

    .prologue
    .line 37
    invoke-virtual {p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->getIconNum()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;-><init>(IFFIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mCurrentTemp:F

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mHighTemp:F

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mLowTemp:F

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSummerTime:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSunRiseTime:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSunSetTime:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getCurrentTemp()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mCurrentTemp:F

    return v0
.end method

.method public getHighTemp()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mHighTemp:F

    return v0
.end method

.method public getSunRiseTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSunRiseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSunSetTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSunSetTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentTemp(F)V
    .locals 0
    .parameter "temperature"

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mCurrentTemp:F

    .line 62
    return-void
.end method

.method public setLowTemp(F)V
    .locals 0
    .parameter "temperature"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mLowTemp:F

    .line 72
    return-void
.end method

.method public setSummerTime(Ljava/lang/String;)V
    .locals 0
    .parameter "summertime"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSummerTime:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setSunRiseTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSunRiseTime:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSunSetTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSunSetTime:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "timezone"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setWeatherText(Ljava/lang/String;)V
    .locals 0
    .parameter "mWeatherText"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 128
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mCurrentTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 129
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mHighTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 130
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/GeneralWeatherInfo;->mLowTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSummerTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSunRiseTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/TodayWeatherInfo;->mSunSetTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return-void
.end method
