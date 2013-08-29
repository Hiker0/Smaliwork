.class public interface abstract Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$EventQuery;
.super Ljava/lang/Object;
.source "WeatherClockEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final CONTACTS_COLUMNS:[Ljava/lang/String;

.field public static final FRIEND_VALUE:[Ljava/lang/String;

.field public static final MYPROFILE_VALUE:[Ljava/lang/String;

.field public static final PROFILE_COLUMNS:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;

.field public static final profile_uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$EventQuery;->URI:Landroid/net/Uri;

    .line 110
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "profile/data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$EventQuery;->profile_uri:Landroid/net/Uri;

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$EventQuery;->COLUMNS:[Ljava/lang/String;

    .line 121
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$EventQuery;->CONTACTS_COLUMNS:[Ljava/lang/String;

    .line 126
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data2"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$EventQuery;->PROFILE_COLUMNS:[Ljava/lang/String;

    .line 136
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/contact_event"

    aput-object v1, v0, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$EventQuery;->MYPROFILE_VALUE:[Ljava/lang/String;

    .line 138
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/contact_event"

    aput-object v1, v0, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "vnd.sec.contact.phone"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent$EventQuery;->FRIEND_VALUE:[Ljava/lang/String;

    return-void
.end method
