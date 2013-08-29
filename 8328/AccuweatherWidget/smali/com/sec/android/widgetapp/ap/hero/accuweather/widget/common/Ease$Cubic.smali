.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cubic"
.end annotation


# static fields
.field public static final easeIn:Landroid/view/animation/Interpolator;

.field public static final easeInOut:Landroid/view/animation/Interpolator;

.field public static final easeOut:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeIn:Landroid/view/animation/Interpolator;

    .line 40
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic$2;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic$2;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeOut:Landroid/view/animation/Interpolator;

    .line 45
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic$3;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic$3;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Cubic;->easeInOut:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
