.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sine"
.end annotation


# static fields
.field public static final easeIn:Landroid/view/animation/Interpolator;

.field public static final easeInOut:Landroid/view/animation/Interpolator;

.field public static final easeOut:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeIn:Landroid/view/animation/Interpolator;

    .line 120
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine$2;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine$2;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeOut:Landroid/view/animation/Interpolator;

    .line 125
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine$3;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine$3;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Sine;->easeInOut:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
