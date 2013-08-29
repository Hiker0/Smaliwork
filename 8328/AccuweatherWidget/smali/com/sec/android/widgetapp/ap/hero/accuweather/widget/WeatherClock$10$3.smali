.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$3;
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
    .line 2294
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$3;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2296
    const-string v2, "content://com.android.calendar/time/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2297
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2298
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2299
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10$3;->this$1:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;

    iget-object v2, v2, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$10;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startActivity(Landroid/content/Intent;)V

    .line 2300
    return-void
.end method
