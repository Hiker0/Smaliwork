.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$1;
.super Ljava/lang/Object;
.source "WeatherClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;)V
    .locals 0
    .parameter

    .prologue
    .line 2266
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 2268
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "profile/raw_contacts/"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2269
    .local v1, profile_uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;

    iget-object v4, v4, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mMyBirthday:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;
    invoke-static {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClockEvent;->getContactId()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2271
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2272
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2273
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$1;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;

    iget-object v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startActivity(Landroid/content/Intent;)V

    .line 2274
    return-void
.end method
