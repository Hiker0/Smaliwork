.class final Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ShareAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ShareAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .parameter "pri"
    .parameter "pLabel"
    .parameter "pInfo"
    .parameter "pOrigIntent"

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 223
    iput-object p2, p0, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 224
    iput-object p3, p0, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 225
    iput-object p4, p0, Lcom/android/launcher2/ShareAppActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 226
    return-void
.end method
