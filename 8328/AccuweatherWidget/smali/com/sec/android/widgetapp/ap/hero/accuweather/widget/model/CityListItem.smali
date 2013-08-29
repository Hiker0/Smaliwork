.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;
.super Ljava/lang/Object;
.source "CityListItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mLatitude:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field mMainDefault:[Z

.field mRealLocation:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field mSummerTime:Ljava/lang/String;

.field private mSunRiseTime:Ljava/lang/String;

.field private mSunSetTime:Ljava/lang/String;

.field private mTempScale:I

.field private mTemperature:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;

.field provider:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "cityName"
    .parameter "state"
    .parameter "location"
    .parameter "isMainDefault"
    .parameter "isSummerTime"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "provider"
    .parameter "realLocation"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mTemperature:Ljava/lang/String;

    .line 11
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mMainDefault:[Z

    .line 17
    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mSunRiseTime:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mSunSetTime:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mCityName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mState:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mLocation:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mLatitude:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mLongitude:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mMainDefault:[Z

    const/4 v1, 0x0

    aput-boolean p4, v0, v1

    .line 27
    iput-object p5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mSummerTime:Ljava/lang/String;

    .line 28
    iput p8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->provider:I

    .line 29
    iput-object p9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mRealLocation:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mTemperature:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mTimeZone:Ljava/lang/String;

    .line 32
    iput v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mTempScale:I

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getRealLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mRealLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getSummerTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mSummerTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSunRiseTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mSunRiseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSunSetTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mSunSetTime:Ljava/lang/String;

    return-object v0
.end method

.method public setSunRiseTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mSunRiseTime:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSunSetTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mSunSetTime:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTempScale(I)V
    .locals 0
    .parameter "tempScale"

    .prologue
    .line 105
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mTempScale:I

    .line 106
    return-void
.end method

.method public setTemperature(Ljava/lang/String;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mTemperature:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "timeZone"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mTimeZone:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "CityListItem >> \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityListItem.getCity() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityListItem.getLocation() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityListItem.getLatitude() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mLatitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityListItem.getLongitude() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mLongitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityListItem.getProvider() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->provider:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityListItem.getState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityListItem.getRealLocation() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mRealLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mLatitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mLongitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mMainDefault:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mSummerTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->provider:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mTemperature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mTimeZone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->mTempScale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return-void
.end method
