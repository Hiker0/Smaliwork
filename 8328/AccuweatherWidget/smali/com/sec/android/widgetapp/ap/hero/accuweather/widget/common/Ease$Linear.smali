.class Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Linear;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Linear"
.end annotation


# static fields
.field public static final easeNone:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Linear$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Linear$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/ap/hero/accuweather/widget/common/Ease$Linear;->easeNone:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method