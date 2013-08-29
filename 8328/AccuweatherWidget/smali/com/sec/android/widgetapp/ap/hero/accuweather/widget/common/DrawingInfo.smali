.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;
.super Ljava/lang/Object;
.source "DrawingInfo.java"


# instance fields
.field private mDTS:I

.field private mIsDay:Z

.field private mWeatherIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mWeatherIcon:I

    .line 18
    iput v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mDTS:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getBackgrondImage()I
    .locals 2

    .prologue
    .line 45
    const/4 v0, -0x1

    .line 46
    .local v0, resID:I
    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mWeatherIcon:I

    packed-switch v1, :pswitch_data_0

    .line 144
    :pswitch_0
    const v0, 0x7f020003

    .line 148
    :goto_0
    return v0

    .line 54
    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_0

    .line 55
    const v0, 0x7f020027

    goto :goto_0

    .line 57
    :cond_0
    const v0, 0x7f020029

    .line 58
    goto :goto_0

    .line 66
    :pswitch_2
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_1

    .line 67
    const v0, 0x7f02001b

    goto :goto_0

    .line 69
    :cond_1
    const v0, 0x7f02001d

    .line 70
    goto :goto_0

    .line 88
    :pswitch_3
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_2

    .line 89
    const v0, 0x7f02001f

    goto :goto_0

    .line 91
    :cond_2
    const v0, 0x7f020021

    .line 92
    goto :goto_0

    .line 110
    :pswitch_4
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_3

    .line 111
    const v0, 0x7f020023

    goto :goto_0

    .line 113
    :cond_3
    const v0, 0x7f020025

    .line 114
    goto :goto_0

    .line 121
    :pswitch_5
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_4

    .line 122
    const v0, 0x7f020027

    goto :goto_0

    .line 124
    :cond_4
    const v0, 0x7f020029

    .line 125
    goto :goto_0

    .line 137
    :pswitch_6
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_5

    .line 138
    const v0, 0x7f020027

    goto :goto_0

    .line 140
    :cond_5
    const v0, 0x7f020029

    .line 141
    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getDST()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mDTS:I

    return v0
.end method

.method public getIconImage()I
    .locals 2

    .prologue
    .line 379
    const/4 v0, -0x1

    .line 380
    .local v0, resID:I
    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mWeatherIcon:I

    packed-switch v1, :pswitch_data_0

    .line 501
    :pswitch_0
    const v0, 0x7f02002a

    .line 505
    :goto_0
    return v0

    .line 384
    :pswitch_1
    const v0, 0x7f02002a

    .line 385
    goto :goto_0

    .line 391
    :pswitch_2
    const v0, 0x7f02002b

    .line 392
    goto :goto_0

    .line 398
    :pswitch_3
    const v0, 0x7f02002c

    .line 399
    goto :goto_0

    .line 403
    :pswitch_4
    const v0, 0x7f02002d

    .line 404
    goto :goto_0

    .line 411
    :pswitch_5
    const v0, 0x7f02002e

    .line 412
    goto :goto_0

    .line 416
    :pswitch_6
    const v0, 0x7f02002f

    .line 417
    goto :goto_0

    .line 421
    :pswitch_7
    const v0, 0x7f020032

    .line 422
    goto :goto_0

    .line 428
    :pswitch_8
    const v0, 0x7f020030

    .line 429
    goto :goto_0

    .line 434
    :pswitch_9
    const v0, 0x7f020031

    .line 435
    goto :goto_0

    .line 440
    :pswitch_a
    const v0, 0x7f020033

    .line 441
    goto :goto_0

    .line 446
    :pswitch_b
    const v0, 0x7f020034

    .line 447
    goto :goto_0

    .line 453
    :pswitch_c
    const v0, 0x7f020035

    .line 454
    goto :goto_0

    .line 458
    :pswitch_d
    const v0, 0x7f020037

    .line 459
    goto :goto_0

    .line 465
    :pswitch_e
    const v0, 0x7f020036

    .line 466
    goto :goto_0

    .line 469
    :pswitch_f
    const v0, 0x7f020038

    .line 470
    goto :goto_0

    .line 473
    :pswitch_10
    const v0, 0x7f020039

    .line 474
    goto :goto_0

    .line 478
    :pswitch_11
    const v0, 0x7f02003a

    .line 479
    goto :goto_0

    .line 484
    :pswitch_12
    const v0, 0x7f02003b

    .line 485
    goto :goto_0

    .line 492
    :pswitch_13
    const v0, 0x7f02003c

    .line 493
    goto :goto_0

    .line 497
    :pswitch_14
    const v0, 0x7f02003d

    .line 498
    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public getIsRain()Z
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, resID:Z
    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mWeatherIcon:I

    sparse-switch v1, :sswitch_data_0

    .line 173
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    .line 170
    :sswitch_0
    const/4 v0, 0x1

    .line 171
    goto :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public getLandBackgrondImage()I
    .locals 2

    .prologue
    .line 181
    const v0, 0x7f020019

    .line 183
    .local v0, resID:I
    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mWeatherIcon:I

    packed-switch v1, :pswitch_data_0

    .line 280
    :pswitch_0
    const v0, 0x7f020019

    .line 284
    :goto_0
    return v0

    .line 191
    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_0

    .line 192
    const v0, 0x7f020026

    goto :goto_0

    .line 194
    :cond_0
    const v0, 0x7f020028

    .line 195
    goto :goto_0

    .line 203
    :pswitch_2
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_1

    .line 204
    const v0, 0x7f02001a

    goto :goto_0

    .line 206
    :cond_1
    const v0, 0x7f02001c

    .line 207
    goto :goto_0

    .line 224
    :pswitch_3
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_2

    .line 225
    const v0, 0x7f02001e

    goto :goto_0

    .line 227
    :cond_2
    const v0, 0x7f020020

    .line 228
    goto :goto_0

    .line 246
    :pswitch_4
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_3

    .line 247
    const v0, 0x7f020022

    goto :goto_0

    .line 249
    :cond_3
    const v0, 0x7f020024

    .line 250
    goto :goto_0

    .line 257
    :pswitch_5
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_4

    .line 258
    const v0, 0x7f020026

    goto :goto_0

    .line 260
    :cond_4
    const v0, 0x7f020028

    .line 261
    goto :goto_0

    .line 273
    :pswitch_6
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_5

    .line 274
    const v0, 0x7f020026

    goto :goto_0

    .line 276
    :cond_5
    const v0, 0x7f020028

    .line 277
    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getWindowBackgrondImage()I
    .locals 2

    .prologue
    .line 288
    const/4 v0, -0x1

    .line 290
    .local v0, resID:I
    iget v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mWeatherIcon:I

    packed-switch v1, :pswitch_data_0

    .line 366
    :pswitch_0
    const/4 v0, -0x1

    .line 370
    :goto_0
    return v0

    .line 304
    :pswitch_1
    const/4 v0, -0x1

    .line 305
    goto :goto_0

    .line 322
    :pswitch_2
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_0

    .line 323
    const v0, 0x7f02003f

    goto :goto_0

    .line 325
    :cond_0
    const v0, 0x7f020040

    .line 326
    goto :goto_0

    .line 344
    :pswitch_3
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    if-eqz v1, :cond_1

    .line 345
    const v0, 0x7f020041

    goto :goto_0

    .line 347
    :cond_1
    const v0, 0x7f020042

    .line 348
    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public isDay()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    return v0
.end method

.method public setDTS(I)V
    .locals 0
    .parameter "dts"

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mDTS:I

    .line 38
    return-void
.end method

.method public setDayOrNight(Z)V
    .locals 0
    .parameter "isDay"

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mIsDay:Z

    .line 518
    return-void
.end method

.method public setWeatherIcon(I)V
    .locals 0
    .parameter "iconIndex"

    .prologue
    .line 509
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/DrawingInfo;->mWeatherIcon:I

    .line 510
    return-void
.end method
