.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$8;
.super Ljava/lang/Object;
.source "WeatherClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$8;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1309
    const-string v2, "http://www.accuweather.com/m"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1310
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1311
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$8;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startActivity(Landroid/content/Intent;)V

    .line 1312
    return-void
.end method
