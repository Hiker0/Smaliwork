.class public Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockApplication;
.super Landroid/app/Application;
.source "WeatherClockApplication.java"


# static fields
.field public static ACTIONBAR_USE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockApplication;->ACTIONBAR_USE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 11
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockApplication;->ACTIONBAR_USE:Z

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockApplication;->ACTIONBAR_USE:Z

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 23
    return-void
.end method
