.class public Lcom/eminent/utility/Poller;
.super Ljava/lang/Object;
.source "Poller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eminent/utility/Poller$OnModeChangedListener;,
        Lcom/eminent/utility/Poller$OnPolledListener;
    }
.end annotation


# static fields
.field public static final MODE_ALS_ONLY:I = 0x2

.field public static final MODE_DISABLE:I = 0x0

.field public static final MODE_GESTURE:I = 0x4

.field public static final MODE_INTERLEAVING:I = 0x3

.field public static final MODE_PS_ONLY:I = 0x3

.field private static sInstance:Lcom/eminent/utility/Poller;


# instance fields
.field private final POLLING_RATE:I

.field count:I

.field private mCallback:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/eminent/utility/Poller$OnPolledListener;

.field private mMode:I

.field private mModeListener:Lcom/eminent/utility/Poller$OnModeChangedListener;

.field private mPsHighThreshold:I

.field private mPsLowThreshold:I

.field private mPsValue:I

.field private mRate:I

.field private volatile mRunflag:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/eminent/utility/Poller;->mHandler:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eminent/utility/Poller;->mCallback:Ljava/lang/Runnable;

    .line 47
    iput v2, p0, Lcom/eminent/utility/Poller;->POLLING_RATE:I

    .line 48
    iput-boolean v1, p0, Lcom/eminent/utility/Poller;->mRunflag:Z

    .line 50
    iput v1, p0, Lcom/eminent/utility/Poller;->mMode:I

    .line 52
    iput v1, p0, Lcom/eminent/utility/Poller;->mPsHighThreshold:I

    .line 53
    iput v1, p0, Lcom/eminent/utility/Poller;->mPsLowThreshold:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/eminent/utility/Poller;->mPsValue:I

    .line 56
    iput v2, p0, Lcom/eminent/utility/Poller;->mRate:I

    .line 58
    iput v1, p0, Lcom/eminent/utility/Poller;->count:I

    .line 68
    new-instance v0, Lcom/eminent/utility/Poller$1;

    invoke-direct {v0, p0}, Lcom/eminent/utility/Poller$1;-><init>(Lcom/eminent/utility/Poller;)V

    iput-object v0, p0, Lcom/eminent/utility/Poller;->mCallback:Ljava/lang/Runnable;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/eminent/utility/Poller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/eminent/utility/Poller;->mRunflag:Z

    return v0
.end method

.method static synthetic access$100(Lcom/eminent/utility/Poller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/eminent/utility/Poller;->mRate:I

    return v0
.end method

.method static synthetic access$200(Lcom/eminent/utility/Poller;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eminent/utility/Poller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/eminent/utility/Poller;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/eminent/utility/Poller;)Lcom/eminent/utility/Poller$OnPolledListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eminent/utility/Poller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/eminent/utility/Poller;->mPsHighThreshold:I

    return v0
.end method

.method static synthetic access$600(Lcom/eminent/utility/Poller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/eminent/utility/Poller;->mPsValue:I

    return v0
.end method

.method static synthetic access$602(Lcom/eminent/utility/Poller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/eminent/utility/Poller;->mPsValue:I

    return p1
.end method

.method static synthetic access$700(Lcom/eminent/utility/Poller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/eminent/utility/Poller;->mPsLowThreshold:I

    return v0
.end method

.method static synthetic access$800(Lcom/eminent/utility/Poller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/eminent/utility/Poller;->readGesture()V

    return-void
.end method

.method public static getInstance()Lcom/eminent/utility/Poller;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/eminent/utility/Poller;->sInstance:Lcom/eminent/utility/Poller;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/eminent/utility/Poller;

    invoke-direct {v0}, Lcom/eminent/utility/Poller;-><init>()V

    sput-object v0, Lcom/eminent/utility/Poller;->sInstance:Lcom/eminent/utility/Poller;

    .line 64
    :cond_0
    sget-object v0, Lcom/eminent/utility/Poller;->sInstance:Lcom/eminent/utility/Poller;

    return-object v0
.end method

.method public static meanFilter([III)[I
    .locals 8
    .parameter "data"
    .parameter "backwardOrder"
    .parameter "forwardOrder"

    .prologue
    .line 273
    array-length v7, p0

    new-array v4, v7, [I

    .line 275
    .local v4, newArray:[I
    const/4 v0, 0x0

    .line 276
    .local v0, high_idx:I
    const/16 v6, 0x14

    .line 277
    .local v6, work_threshold:I
    array-length v7, p0

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 278
    aget v7, p0, v1

    if-lt v7, v6, :cond_1

    .line 279
    add-int/lit8 v0, v1, 0x1

    .line 284
    :cond_0
    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v1, v7, 0x0

    :goto_1
    mul-int/lit8 v7, p2, 0x2

    sub-int v7, v0, v7

    if-ge v1, v7, :cond_3

    .line 285
    const/4 v3, 0x0

    .line 286
    .local v3, mean:I
    neg-int v2, p1

    .local v2, j:I
    :goto_2
    if-gt v2, p2, :cond_2

    .line 287
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v1

    aget v5, p0, v7

    .line 288
    .local v5, tmp:I
    add-int/2addr v3, v5

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 277
    .end local v2           #j:I
    .end local v3           #mean:I
    .end local v5           #tmp:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 290
    .restart local v2       #j:I
    .restart local v3       #mean:I
    :cond_2
    add-int/lit8 v7, p1, 0x1

    add-int/2addr v7, p2

    div-int v7, v3, v7

    aput v7, v4, v1

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    .end local v2           #j:I
    .end local v3           #mean:I
    :cond_3
    return-object v4
.end method

.method private readGesture()V
    .locals 6

    .prologue
    .line 227
    invoke-static {}, Lcom/eminent/utility/Utility;->getEvent()I

    move-result v3

    .line 228
    .local v3, event:I
    invoke-static {}, Lcom/eminent/utility/Utility;->getGestureSleep()I

    move-result v4

    .line 229
    .local v4, sleep:I
    invoke-static {}, Lcom/eminent/utility/Utility;->getCh0()I

    move-result v5

    .line 230
    .local v5, ch0:I
    const/4 v1, 0x0

    .line 231
    .local v1, left:[I
    const/4 v2, 0x0

    .line 265
    .local v2, right:[I
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    invoke-interface/range {v0 .. v5}, Lcom/eminent/utility/Poller$OnPolledListener;->onGestureChanged([I[IIII)V

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method public postGesture()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/eminent/utility/Poller;->readGesture()V

    .line 175
    return-void
.end method

.method public retrieveAlsParameter()V
    .locals 10

    .prologue
    const/4 v1, -0x1

    .line 143
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-interface/range {v0 .. v9}, Lcom/eminent/utility/Poller$OnPolledListener;->onAlsParameterRetrieved(IIIIIIIII)V

    .line 147
    :cond_0
    return-void
.end method

.method public retrievePsParameter()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-static {}, Lcom/eminent/utility/Utility;->getHighThreshold()I

    move-result v1

    iput v1, p0, Lcom/eminent/utility/Poller;->mPsHighThreshold:I

    .line 132
    invoke-static {}, Lcom/eminent/utility/Utility;->getLowThreshold()I

    move-result v1

    iput v1, p0, Lcom/eminent/utility/Poller;->mPsLowThreshold:I

    .line 133
    invoke-static {}, Lcom/eminent/utility/Utility;->getPsBinaryMode()I

    move-result v0

    .line 134
    .local v0, irqEnable:I
    iput v2, p0, Lcom/eminent/utility/Poller;->mPsHighThreshold:I

    .line 135
    iput v2, p0, Lcom/eminent/utility/Poller;->mPsLowThreshold:I

    .line 136
    iget-object v1, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    iget v2, p0, Lcom/eminent/utility/Poller;->mPsHighThreshold:I

    iget v3, p0, Lcom/eminent/utility/Poller;->mPsLowThreshold:I

    invoke-interface {v1, v2, v3, v0}, Lcom/eminent/utility/Poller$OnPolledListener;->onPsParameterRetrieved(III)V

    .line 140
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 178
    iput p1, p0, Lcom/eminent/utility/Poller;->mMode:I

    .line 181
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 182
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/eminent/utility/Utility;->setGestureEnabled(I)V

    .line 184
    :cond_0
    if-nez p1, :cond_2

    .line 185
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/eminent/utility/Utility;->setGestureEnabled(I)V

    .line 186
    invoke-virtual {p0}, Lcom/eminent/utility/Poller;->stop()V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mModeListener:Lcom/eminent/utility/Poller$OnModeChangedListener;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mModeListener:Lcom/eminent/utility/Poller$OnModeChangedListener;

    invoke-interface {v0, p1}, Lcom/eminent/utility/Poller$OnModeChangedListener;->onModeChanged(I)V

    .line 194
    :cond_1
    return-void

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/eminent/utility/Poller;->start()V

    goto :goto_0
.end method

.method public setOnModeChangedListener(Lcom/eminent/utility/Poller$OnModeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/eminent/utility/Poller;->mModeListener:Lcom/eminent/utility/Poller$OnModeChangedListener;

    .line 206
    return-void
.end method

.method public setOnPolledListener(Lcom/eminent/utility/Poller$OnPolledListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    .line 202
    return-void
.end method

.method public setPsHigh(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, -0x1

    .line 150
    invoke-static {p1}, Lcom/eminent/utility/Utility;->setHighThreshold(I)V

    .line 151
    invoke-static {}, Lcom/eminent/utility/Utility;->getHighThreshold()I

    move-result v0

    iput v0, p0, Lcom/eminent/utility/Poller;->mPsHighThreshold:I

    .line 152
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    iget v1, p0, Lcom/eminent/utility/Poller;->mPsHighThreshold:I

    invoke-interface {v0, v1, v2, v2}, Lcom/eminent/utility/Poller$OnPolledListener;->onPsParameterRetrieved(III)V

    .line 155
    :cond_0
    return-void
.end method

.method public setPsIrqEnabled(I)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, -0x1

    .line 166
    invoke-static {p1}, Lcom/eminent/utility/Utility;->setPsBinaryMode(I)V

    .line 167
    invoke-static {}, Lcom/eminent/utility/Utility;->getPsBinaryMode()I

    move-result p1

    .line 168
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    invoke-interface {v0, v1, v1, p1}, Lcom/eminent/utility/Poller$OnPolledListener;->onPsParameterRetrieved(III)V

    .line 171
    :cond_0
    return-void
.end method

.method public setPsLow(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, -0x1

    .line 158
    invoke-static {p1}, Lcom/eminent/utility/Utility;->setLowThreshold(I)V

    .line 159
    invoke-static {}, Lcom/eminent/utility/Utility;->getLowThreshold()I

    move-result v0

    iput v0, p0, Lcom/eminent/utility/Poller;->mPsLowThreshold:I

    .line 160
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mListener:Lcom/eminent/utility/Poller$OnPolledListener;

    iget v1, p0, Lcom/eminent/utility/Poller;->mPsLowThreshold:I

    invoke-interface {v0, v2, v1, v2}, Lcom/eminent/utility/Poller$OnPolledListener;->onPsParameterRetrieved(III)V

    .line 163
    :cond_0
    return-void
.end method

.method public setRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 197
    iput p1, p0, Lcom/eminent/utility/Poller;->mRate:I

    .line 198
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eminent/utility/Poller;->mRunflag:Z

    .line 121
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/eminent/utility/Poller;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/eminent/utility/Poller;->mCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eminent/utility/Poller;->mRunflag:Z

    .line 127
    iget-object v0, p0, Lcom/eminent/utility/Poller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/eminent/utility/Poller;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method writeValue([I)V
    .locals 9
    .parameter "data"

    .prologue
    .line 211
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/mnt/sdcard/%02d.txt"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/eminent/utility/Poller;->count:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/eminent/utility/Poller;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, fw:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 214
    .local v0, bw:Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 215
    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #fw:Ljava/io/FileWriter;
    .end local v3           #i:I
    :goto_1
    return-void

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
