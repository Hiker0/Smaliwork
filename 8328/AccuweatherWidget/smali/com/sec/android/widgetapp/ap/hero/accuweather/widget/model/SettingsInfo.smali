.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;
.super Ljava/lang/Object;
.source "SettingsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field mAutoRefreshSetting:I

.field mAutoScroll:I

.field mCheckCurLoc:I

.field mContactsBirthday:I

.field mCurrentLoccation:I

.field mLastSelectLocation:Ljava/lang/String;

.field mMyBirthday:I

.field mNeedLocation:I

.field mNewyear:I

.field mNextAutoRefreshTime:J

.field mTempScale:Ljava/lang/String;

.field mTempScaleSetting:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(IIIIIIIIJLjava/lang/String;I)V
    .locals 0
    .parameter "mTempScaleSetting"
    .parameter "mAutoRefreshSetting"
    .parameter "mCurrentLoccation"
    .parameter "mAutoScroll"
    .parameter "mNewyear"
    .parameter "mMyBirthday"
    .parameter "mContactsBirthday"
    .parameter "mNeedLocation"
    .parameter "mNextAutoRefreshTime"
    .parameter "lastLocation"
    .parameter "checkcurloc"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mTempScaleSetting:I

    .line 21
    iput p2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mAutoRefreshSetting:I

    .line 22
    iput p3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mCurrentLoccation:I

    .line 23
    iput p4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mAutoScroll:I

    .line 24
    iput p5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mNewyear:I

    .line 25
    iput p6, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mMyBirthday:I

    .line 26
    iput p7, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mContactsBirthday:I

    .line 27
    iput p8, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mNeedLocation:I

    .line 28
    iput-wide p9, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mNextAutoRefreshTime:J

    .line 29
    iput-object p11, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mLastSelectLocation:Ljava/lang/String;

    .line 30
    iput p12, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mCheckCurLoc:I

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getCheckCurLoc()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mCheckCurLoc:I

    return v0
.end method

.method public getmAutoRefreshSetting()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mAutoRefreshSetting:I

    return v0
.end method

.method public getmAutoScroll()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mAutoScroll:I

    return v0
.end method

.method public getmContactsBirthday()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mContactsBirthday:I

    return v0
.end method

.method public getmCurrentLoccation()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mCurrentLoccation:I

    return v0
.end method

.method public getmLastSelectLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mLastSelectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getmMyBirthday()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mMyBirthday:I

    return v0
.end method

.method public getmNeedLocation()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mNeedLocation:I

    return v0
.end method

.method public getmNewyear()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mNewyear:I

    return v0
.end method

.method public getmTempScaleSetting()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mTempScaleSetting:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mTempScale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mAutoRefreshSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/SettingsInfo;->mCurrentLoccation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void
.end method
