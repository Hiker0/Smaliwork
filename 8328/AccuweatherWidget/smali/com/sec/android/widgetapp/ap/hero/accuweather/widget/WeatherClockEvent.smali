.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
.super Ljava/lang/Object;
.source "WeatherClockEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$EventQuery;
    }
.end annotation


# instance fields
.field private bInit:Z

.field private contactCount:I

.field private contactId:J

.field private contactName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->init()V

    .line 24
    return-void
.end method


# virtual methods
.method public buildEventInfo(ZLjava/lang/String;IJ)V
    .locals 0
    .parameter "init"
    .parameter "contactName"
    .parameter "contactCount"
    .parameter "contactId"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->setInit(Z)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->setContactName(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->setContactCount(I)V

    .line 104
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->setContactId(J)V

    .line 105
    return-void
.end method

.method public extractMonthDayFromStringDate(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 8
    .parameter "date"
    .parameter "position"

    .prologue
    const/4 v7, 0x6

    const/4 v4, 0x3

    const/4 v6, 0x2

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, st:Ljava/util/StringTokenizer;
    new-array v2, v4, [Ljava/lang/String;

    .line 63
    .local v2, str:[Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    .end local v1           #st:Ljava/util/StringTokenizer;
    const-string v3, "-"

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .restart local v1       #st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 66
    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 67
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    .end local v1           #st:Ljava/util/StringTokenizer;
    const-string v3, "."

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .restart local v1       #st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_1
    aget-object v3, v2, p2

    if-nez v3, :cond_2

    .line 83
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ext SDate null tkn, d = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v3, 0x1

    if-ne p2, v3, :cond_4

    .line 85
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p2

    .line 92
    :cond_2
    :goto_2
    if-ne p2, v6, :cond_3

    aget-object v3, v2, p2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_3

    .line 93
    aget-object v3, v2, p2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p2

    .line 96
    :cond_3
    aget-object v3, v2, p2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 86
    :cond_4
    if-ne p2, v6, :cond_2

    .line 87
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p2

    goto :goto_2
.end method

.method public findContactsEvent(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "eventType"
    .parameter "eventHandler"

    .prologue
    .line 145
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$1;-><init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;ILandroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 208
    return-void
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->contactId:J

    return-wide v0
.end method

.method public getInit()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->bInit:Z

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->bInit:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->contactName:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->contactCount:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->contactId:J

    .line 31
    return-void
.end method

.method public setContactCount(I)V
    .locals 0
    .parameter "contactCount"

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->contactCount:I

    .line 50
    return-void
.end method

.method public setContactId(J)V
    .locals 0
    .parameter "contactId"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->contactId:J

    .line 56
    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0
    .parameter "contactName"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->contactName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setInit(Z)V
    .locals 0
    .parameter "bInit"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->bInit:Z

    .line 38
    return-void
.end method
