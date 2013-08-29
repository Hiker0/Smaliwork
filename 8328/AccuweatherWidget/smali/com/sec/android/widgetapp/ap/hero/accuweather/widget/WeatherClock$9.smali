.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;
.super Ljava/lang/Object;
.source "WeatherClock.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1317
    iput-object p1, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v6, 0x7cf

    const/16 v7, -0x7530

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1322
    .local v0, action:I
    if-nez v0, :cond_0

    .line 1323
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mDownPositionY:F

    move v3, v4

    .line 1376
    :goto_0
    return v3

    .line 1325
    :cond_0
    if-ne v0, v4, :cond_b

    .line 1326
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_9

    .line 1327
    const/4 v1, 0x0

    .line 1328
    .local v1, index:I
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1329
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1333
    :cond_1
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mDownPositionY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    const/high16 v6, 0x4120

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 1334
    const-string v3, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tEvt_U "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    .line 1336
    const/4 v1, -0x1

    .line 1338
    :cond_2
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 1339
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1302(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/lang/String;)Ljava/lang/String;

    .line 1340
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFlickingDirection:I
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2602(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)I

    .line 1341
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setUiWithDatabaseData()V

    .end local v1           #index:I
    :cond_3
    :goto_2
    move v3, v4

    .line 1374
    goto/16 :goto_0

    .line 1328
    .restart local v1       #index:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1343
    :cond_5
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget v3, v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mDownPositionY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    const/high16 v6, -0x3ee0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_7

    .line 1344
    const-string v3, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tEvt_D "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    if-nez v1, :cond_6

    .line 1346
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1347
    :cond_6
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 1348
    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mCityList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1302(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Ljava/lang/String;)Ljava/lang/String;

    .line 1349
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    const/4 v5, 0x2

    #setter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mFlickingDirection:I
    invoke-static {v3, v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2602(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;I)I

    .line 1350
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->setUiWithDatabaseData()V

    goto :goto_2

    .line 1353
    :cond_7
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->stopLoading()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 1354
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->audio:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1355
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->audio:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1357
    :cond_8
    const/4 v2, 0x0

    .line 1358
    .local v2, intent:Landroid/content/Intent;
    const-string v3, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tEvt #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "com.samsung.sec.android.widgetapp.intent.action.MENU_CITYLIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1361
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "flags"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1362
    const-string v3, "searchlocation"

    iget-object v5, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->mSelectedLocation:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$1300(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startWithLocationForResult(Landroid/content/Intent;I)V
    invoke-static {v3, v2, v7}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 1366
    .end local v1           #index:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_9
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->audio:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1367
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #getter for: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->audio:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2900(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1369
    :cond_a
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->stopLoading()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$2800(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;)V

    .line 1370
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.sec.android.widgetapp.intent.action.MENU_ADD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1371
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "flags"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1372
    iget-object v3, p0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock$9;->this$0:Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;

    #calls: Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->startWithLocationForResult(Landroid/content/Intent;I)V
    invoke-static {v3, v2, v6}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;->access$3000(Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/WeatherClock;Landroid/content/Intent;I)V

    goto/16 :goto_2

    .end local v2           #intent:Landroid/content/Intent;
    :cond_b
    move v3, v5

    .line 1376
    goto/16 :goto_0
.end method
