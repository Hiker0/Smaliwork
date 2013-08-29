.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$8;,
        Lcom/android/launcher2/Launcher$ClingCheckBoxListener;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$StateAnimatorProvider;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;,
		#huaqi start <<
		Lcom/android/launcher2/Launcher$ProximitySensorListener;,
		#huaq end >>
        Lcom/android/launcher2/Launcher$HardwareKeys;
    }
.end annotation


# static fields
#huaqi start <<
.field static final GES_POLLING_RATE:I = 0x96

.field public static  HQ_GESENSOR_SUPPORT:Z = true

.field public static  HQ_PSENSOR_SUPPORT:Z = true
#huaqi end >>
.field public static CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z = false

.field public static CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z = false

.field public static CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z = false

.field private static final DEBUGGABLE:Z = true

.field private static final EXTRA_HOME_FRAGMENT_HIDDEN:Ljava/lang/String; = "extra_home_fragment_hidden"

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final HELP_HUB_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.helphub.provider/help_page_status/"

.field private static final HELP_HUB_PATH_CLING1:Ljava/lang/String; = "homescreen_navigate"

.field private static final HELP_HUB_PATH_CLING2:Ljava/lang/String; = "notifications_access"

.field private static final HELP_HUB_PATH_CLING3:Ljava/lang/String; = "homescreen_applications"

.field private static final HELP_HUB_PATH_SHORTCUT:Ljava/lang/String; = "add_shortcut"

.field private static final HELP_HUB_PATH_WIDGET:Ljava/lang/String; = "add_widget"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field public static final MOTION_DIALOG_ON_OFF_PREF:Ljava/lang/String; = "MotionDialogOnOff"

.field static final PREFERENCES:Ljava/lang/String; = "com.android.launcher2.prefs"

.field private static final PUBLIC_PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field public static SHOW_ALL_APPS_TRANSITION_DURATION:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "Launcher"

.field public static UseContextualPageFeature:Z = false

.field public static UseLauncherHighPriority:Z = false

.field static final VIBRATE_DURATION:I = 0x23

.field static final WIDGET_RESIZE_UPDATE_PAUSE:Ljava/lang/String; = "com.sec.android.intent.action.HOME_PAUSE"

.field static final WIDGET_RESIZE_UPDATE_RESUME:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESUME"

.field private static sHwPopupMenuShowing:Z

.field public static sIsEditFromHome:Z

.field private static sIsHomeEditMode:Z

.field private static sIsHomeRemoveMode:Z

.field private static sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

.field static sMenuBgDarkenAmountNormal:F

.field private static sPopupMenuShowing:Z


# instance fields
#huaqi start <<
.field private mGesEnabled:Z

.field private mGesHandler:Landroid/os/Handler;

.field mGesPolling:Ljava/lang/Runnable;

.field private mGesPsensorObserver:Landroid/database/ContentObserver;

.field mLastEvent:I

.field mLastSleepStatus:I

.field private final mProximitySensorListener:Lcom/android/launcher2/Launcher$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/eminent/utility/ProximitySensorManager;
#huaqi end >>
.field private mActivityName:Landroid/content/ComponentName;

.field private mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

.field private mAppMarketIntent:Landroid/content/Intent;

.field public mAttached:Z

.field private mAutoRestart:Z

.field private mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

.field public mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

.field private mClingEnd:Z

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

.field private mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

.field private mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

.field private mDarkenView:Landroid/view/View;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDownloadedApp:Z

.field private mExitingAllApps:Z

.field private mFactoryModeString:Ljava/lang/String;

.field private mHasMenuKey:Z

.field mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field mInMenu:Z

.field private mIsDestroyed:Z

.field private mIsFactoryMode:Z

.field private mLocaleChanged:Z

.field private mMarketLabelName:Ljava/lang/CharSequence;

.field private mMenuButtonView:Landroid/view/View;

.field private mMenuFragment:Lcom/android/launcher2/MenuFragment;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPaused:Z

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResOrientation:I

.field private mRestoring:Z

.field private mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

.field private mShowEmptyPageMsg:Z

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTransitionAnimator:Landroid/animation/Animator;

.field private mTransitioningToAllApps:Z

.field private mWorksapceClingisShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 172
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 173
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 217
    const-wide/16 v0, 0xe6

    sput-wide v0, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    .line 227
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    .line 228
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    .line 229
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    .line 230
    sput-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    .line 231
    sput-boolean v2, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    .line 234
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 235
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    .line 237
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0, v1}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 152
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 168
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 176
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 178
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mDownloadedApp:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mClingEnd:Z

    .line 189
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorksapceClingisShow:Z

    .line 200
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 219
    new-instance v0, Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$ClingCheckBoxListener;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    .line 636
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    .line 718
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 815
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 1324
    new-instance v0, Lcom/android/launcher2/Launcher$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher ctor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	
	#huaqi start <<
	new-instance v0, Ljava/io/File;

    const-string v1, "/sys/bus/platform/drivers/als_ps/ges_enable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->HQ_GESENSOR_SUPPORT:Z

    sget-boolean v0, Lcom/android/launcher2/Launcher;->HQ_GESENSOR_SUPPORT:Z

    if-eqz v0, :zxf_cond_0

    const/4 v0, 0x0

    :zxf_goto_0
    sput-boolean v0, Lcom/android/launcher2/Launcher;->HQ_PSENSOR_SUPPORT:Z

    goto :zxf_next

    :zxf_cond_0
    const/4 v0, 0x1

    goto :zxf_goto_0
	
	:zxf_next

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mGesHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/Launcher;->mLastEvent:I

    new-instance v0, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mGesPolling:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher2/Launcher$ProximitySensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$ProximitySensorListener;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$9;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mProximitySensorListener:Lcom/android/launcher2/Launcher$ProximitySensorListener;

    new-instance v0, Lcom/android/launcher2/Launcher$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$10;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mGesPsensorObserver:Landroid/database/ContentObserver;
	#huaqi end >>

    .line 243
    return-void
.end method

.method private AllWidgetCount()I
    .locals 5

    .prologue
    .line 1351
    const/4 v3, 0x0

    .line 1353
    .local v3, total_size:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    .local v1, mWidgetProviders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidgetListProvider;>;"
    new-instance v4, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    new-instance v4, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    new-instance v4, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidgetListProvider;

    .line 1362
    .local v2, provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1364
    .end local v2           #provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_0
    return v3
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 1025
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1027
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

#huaqi start <<
.method static synthetic access$000(Lcom/android/launcher2/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGesEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue

    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mGesEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGesHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Launcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue

    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->simulateTouchEvent(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/launcher2/Launcher;)Lcom/eminent/utility/ProximitySensorManager;
    .locals 1
    .parameter "x0"

    .prologue

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mProximitySensorManager:Lcom/eminent/utility/ProximitySensorManager;

    return-object v0
.end method

#huaqi end >>

.method static synthetic access$1000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Launcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->AllWidgetCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/launcher2/Launcher$LocaleConfiguration;)Lcom/android/launcher2/Launcher$LocaleConfiguration;
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    sput-object p0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishShowAllApps()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    return-void
.end method

#huaqi start <<
.method private simulateTouchEvent(Z)V
    .locals 1
    .parameter "orientionLeft"

    .prologue
    new-instance v0, Lcom/android/launcher2/Launcher$11;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;Z)V

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$11;->start()V

    return-void
.end method
#huaqi end >>

.method private checkForLocaleChange()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 411
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 412
    new-instance v9, Lcom/android/launcher2/Launcher$1;

    invoke-direct {v9, p0}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v9, v8}, Lcom/android/launcher2/Launcher$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 431
    .local v0, configuration:Landroid/content/res/Configuration;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget-object v5, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 432
    .local v5, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, locale:Ljava/lang/String;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v6, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 435
    .local v6, previousMcc:I
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 437
    .local v3, mcc:I
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 438
    .local v7, previousMnc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 440
    .local v4, mnc:I
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v3, v6, :cond_2

    if-eq v4, v7, :cond_3

    :cond_2
    const/4 v8, 0x1

    :cond_3
    iput-boolean v8, p0, Lcom/android/launcher2/Launcher;->mLocaleChanged:Z

    .line 442
    iget-boolean v8, p0, Lcom/android/launcher2/Launcher;->mLocaleChanged:Z

    if-eqz v8, :cond_0

    .line 443
    sget-object v8, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput-object v1, v8, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 444
    sget-object v8, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v3, v8, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 445
    sget-object v8, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v4, v8, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 448
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v8}, Lcom/android/launcher2/PkgResCache;->clear()V

    .line 450
    sget-object v2, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 451
    .local v2, localeConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;
    new-instance v8, Lcom/android/launcher2/Launcher$2;

    const-string v9, "WriteLocaleConfiguration"

    invoke-direct {v8, p0, v9, v2}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher$2;->start()V

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1304
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1305
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1306
    return-void
.end method

.method private dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;IZ)V
    .locals 5
    .parameter "clingView"
    .parameter "clingPrefKey"
    .parameter "duration"
    .parameter "isChecked"

    .prologue
    .line 1840
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1841
    .local v0, anim:Landroid/animation/ObjectAnimator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1842
    new-instance v1, Lcom/android/launcher2/Launcher$7;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1868
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1869
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSaveClingCheckState()V

    .line 1870
    return-void
.end method

.method private dismissMenuCling()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2401
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2402
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher2/Cling;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2403
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->dismissAllAppsCling(Landroid/view/View;)V

    .line 2410
    :cond_0
    :goto_0
    return-void

    .line 2405
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2406
    instance-of v1, v0, Lcom/android/launcher2/Cling;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2407
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->dismissWidgetCling(Landroid/view/View;)V

    goto :goto_0
.end method

.method private exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 1455
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 1456
    .local v0, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v0, :cond_0

    .line 1457
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 1458
    :cond_0
    return-void
.end method

.method private finishExitAllApps()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 890
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 891
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->onFinishExitAllApps()V

    .line 892
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 893
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 894
    .local v1, transaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 895
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 896
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v2, :cond_0

    .line 897
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 900
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 901
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 902
    return-void

    .line 899
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private finishShowAllApps()V
    .locals 2

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 807
    .local v0, transaction:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 808
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 809
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 813
    :goto_0
    return-void

    .line 812
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private firstShowCling()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2231
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    if-nez v4, :cond_1

    .line 2232
    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2233
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "cling.workspace.page1.dismissed"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2234
    .local v0, page1:Z
    const-string v4, "cling.workspace.page2.dismissed"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2235
    .local v1, page2:Z
    const-string v4, "cling.workspace.page3.dismissed"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2237
    .local v2, page3:Z
    if-nez v0, :cond_2

    .line 2238
    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->nextWorkspaceCling(I)V

    .line 2244
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->onConfigurationChangedCling(Z)V

    .line 2246
    .end local v0           #page1:Z
    .end local v1           #page2:Z
    .end local v2           #page3:Z
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 2239
    .restart local v0       #page1:Z
    .restart local v1       #page2:Z
    .restart local v2       #page3:Z
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    :cond_2
    if-nez v1, :cond_3

    .line 2240
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->nextWorkspaceCling(I)V

    goto :goto_0

    .line 2241
    :cond_3
    if-nez v2, :cond_0

    .line 2242
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->nextWorkspaceCling(I)V

    goto :goto_0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWorkspaceClingVisible()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2279
    const-string v5, "com.android.launcher2.prefs"

    invoke-virtual {p0, v5, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2280
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v5, "cling.workspace.page1.dismissed"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2281
    .local v0, page1:Z
    const-string v5, "cling.workspace.page2.dismissed"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2282
    .local v1, page2:Z
    const-string v5, "cling.workspace.page3.dismissed"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2283
    .local v2, page3:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method private isFactoryMode()Z
    .locals 3

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1914
    const-string v0, "/efs/FactoryApp/factorymode"

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    .line 1915
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    .line 1917
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode returns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    return v0

    .line 1915
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactorySim()Z
    .locals 6

    .prologue
    .line 1896
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1898
    .local v2, tm:Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 1899
    .local v0, IMSI:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1900
    .local v1, imsi:Ljava/lang/String;
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFactorySim() imsi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    if-eqz v1, :cond_0

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1902
    const-string v3, "Launcher"

    const-string v4, "isFactorySim() : true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const/4 v3, 0x1

    .line 1906
    :goto_0
    return v3

    .line 1905
    :cond_0
    const-string v3, "Launcher"

    const-string v4, "isFactorySim() : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHelpHubAvailable()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2287
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2288
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "displayed"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2289
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v7

    .line 2293
    :goto_0
    return v0

    .line 2292
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 2293
    goto :goto_0
.end method

.method static isHomeEditMode()Z
    .locals 1

    .prologue
    .line 2953
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    return v0
.end method

.method static isHomeRemoveMode()Z
    .locals 1

    .prologue
    .line 2963
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    return v0
.end method

.method private isMotionDialogAvailable()Z
    .locals 3

    .prologue
    .line 2791
    const-string v0, "com.android.launcher2.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MotionDialogOnOff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMotionSettingOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2795
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isPopupMenuShowing()Z
    .locals 1

    .prologue
    .line 2697
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToShowHelpPage(Ljava/lang/String;)Z
    .locals 10
    .parameter "path"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2300
    const/4 v6, 0x0

    .line 2301
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2303
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 2305
    .local v7, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2306
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2307
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_2

    move v7, v8

    .line 2310
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 2311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2313
    :cond_1
    return v7

    :cond_2
    move v7, v9

    .line 2307
    goto :goto_0

    .line 2310
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2310
    :cond_3
    throw v0
.end method

.method private nextWorkspaceCling(I)V
    .locals 7
    .parameter "page"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 2209
    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2211
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "cling.workspace.dismissed"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2227
    :cond_0
    return-void

    .line 2215
    :cond_1
    new-array v0, v6, [Landroid/view/View;

    .line 2216
    .local v0, clingPage:[Landroid/view/View;
    const v3, 0x7f070097

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v5

    .line 2217
    const/4 v3, 0x1

    const v4, 0x7f070098

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2218
    const/4 v3, 0x2

    const v4, 0x7f070099

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2220
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 2221
    if-ne v1, p1, :cond_2

    .line 2222
    aget-object v3, v0, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2220
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2224
    :cond_2
    aget-object v3, v0, v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 469
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 470
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 471
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 472
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 478
    if-eqz v1, :cond_0

    .line 480
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v0, v1

    .line 486
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 478
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v0, :cond_2

    .line 480
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 478
    :cond_2
    :goto_3
    throw v2

    .line 473
    :catch_0
    move-exception v2

    .line 478
    :goto_4
    if-eqz v0, :cond_1

    .line 480
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto :goto_1

    .line 481
    :catch_1
    move-exception v2

    goto :goto_1

    .line 475
    :catch_2
    move-exception v2

    .line 478
    :goto_5
    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 481
    :catch_3
    move-exception v3

    goto :goto_3

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    goto :goto_0

    .line 478
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 475
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_5

    .line 473
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_4
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filepath"

    .prologue
    .line 1930
    const-string v6, ""

    .line 1931
    .local v6, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1932
    .local v0, buf:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1934
    .local v4, fr:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1935
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x1fa0

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1936
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v6

    .line 1945
    if-eqz v5, :cond_0

    .line 1946
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 1947
    :cond_0
    if-eqz v1, :cond_1

    .line 1948
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_1
    :goto_0
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .line 1954
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    if-nez v6, :cond_7

    .line 1955
    const-string v6, ""

    .line 1958
    :goto_2
    return-object v6

    .line 1937
    :catch_0
    move-exception v3

    .line 1938
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    const-string v7, "Launcher"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1945
    if-eqz v4, :cond_3

    .line 1946
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 1947
    :cond_3
    if-eqz v0, :cond_2

    .line 1948
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1949
    :catch_1
    move-exception v2

    .line 1950
    .local v2, e:Ljava/io/IOException;
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :goto_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1940
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1941
    .restart local v2       #e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    const-string v7, "Launcher"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1945
    if-eqz v4, :cond_4

    .line 1946
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 1947
    :cond_4
    if-eqz v0, :cond_2

    .line 1948
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 1949
    :catch_3
    move-exception v2

    .line 1950
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1944
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1945
    :goto_6
    if-eqz v4, :cond_5

    .line 1946
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 1947
    :cond_5
    if-eqz v0, :cond_6

    .line 1948
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1944
    :cond_6
    :goto_7
    throw v7

    .line 1957
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_2

    .line 1949
    :catch_4
    move-exception v2

    .line 1950
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "Launcher"

    const-string v9, "IOException close()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1949
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 1950
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1944
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_6

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_6

    .line 1940
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_5

    .line 1937
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private releaseShadows()V
    .locals 2

    .prologue
    .line 2909
    const-string v0, "Launcher"

    const-string v1, "releaseShadows called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->releaseShadows()V

    .line 2911
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->releaseShadows()V

    .line 2913
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->releaseShadows()V

    .line 2914
    return-void
.end method

.method static setHomeEditMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2958
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    .line 2959
    return-void
.end method

.method static setHomeRemoveMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2968
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    .line 2969
    return-void
.end method

.method private setMarketLabel()V
    .locals 6

    .prologue
    const v5, 0x7f0e003c

    .line 722
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 724
    .local v1, marketAppInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .end local v1           #marketAppInfo:Landroid/content/pm/ActivityInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 730
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    .line 732
    :cond_1
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 730
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 729
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    .line 730
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    .line 729
    :cond_2
    throw v2
.end method

.method private setupOptionsMenu(Landroid/view/Menu;)V
    .locals 24
    .parameter "menu"

    .prologue
    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v21

    .line 1616
    .local v21, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1757
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    if-eqz p1, :cond_0

    .line 1619
    const v22, 0x7f0700b0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 1620
    .local v12, market:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1621
    const v22, 0x7f0700b1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1622
    .local v5, edit:Landroid/view/MenuItem;
    const v22, 0x7f0700b6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 1623
    .local v13, search:Landroid/view/MenuItem;
    const v22, 0x7f0700b7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 1624
    .local v18, uninstall:Landroid/view/MenuItem;
    const v22, 0x7f0700b8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1625
    .local v4, downloaded:Landroid/view/MenuItem;
    const v22, 0x7f0700b9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 1626
    .local v19, viewType:Landroid/view/MenuItem;
    const v22, 0x7f0700ba

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 1627
    .local v16, shareApp:Landroid/view/MenuItem;
    const v22, 0x7f0700bb

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 1628
    .local v14, selAppsToHide:Landroid/view/MenuItem;
    const v22, 0x7f0700bc

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 1629
    .local v15, selAppsToUnHide:Landroid/view/MenuItem;
    const v22, 0x7f0700b3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1630
    .local v3, createFolder:Landroid/view/MenuItem;
    const v22, 0x7f0700b2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 1631
    .local v8, homeAddWidget:Landroid/view/MenuItem;
    const v22, 0x7f0700b4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1633
    .local v7, homeAddWallpaper:Landroid/view/MenuItem;
    const v22, 0x7f0700be

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 1634
    .local v10, homeSearch:Landroid/view/MenuItem;
    const v22, 0x7f0700b5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 1635
    .local v9, homeEdit:Landroid/view/MenuItem;
    const v22, 0x7f0700bf

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1638
    .local v11, homeSettings:Landroid/view/MenuItem;
    const v22, 0x7f0700bd

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1639
    .local v6, homeAddPage:Landroid/view/MenuItem;
    sget-object v22, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mDownloadedApp:Z

    .line 1642
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1643
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1644
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1645
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1646
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1647
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1648
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1649
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1650
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1651
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1652
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1653
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1656
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1657
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1658
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1661
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1664
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1665
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1667
    sget-boolean v22, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v22, :cond_2

    .line 1668
    if-eqz v9, :cond_2

    .line 1669
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v22

    if-nez v22, :cond_5

    .line 1670
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1671
    const v22, 0x7f0e0055

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1678
    :cond_2
    :goto_1
    sget-boolean v22, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v22, :cond_3

    .line 1679
    if-eqz v9, :cond_3

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v22

    if-eqz v22, :cond_3

    .line 1682
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1684
    sget-boolean v22, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v22, :cond_3

    .line 1685
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v22

    if-nez v22, :cond_6

    .line 1686
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1687
    const v22, 0x7f0e0055

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1696
    :cond_3
    :goto_2
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1697
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1698
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1699
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1701
    sget-boolean v22, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v22, :cond_4

    .line 1702
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1751
    :cond_4
    :goto_3
    goto/16 :goto_0

    .line 1673
    :cond_5
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1689
    :cond_6
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1704
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1706
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1707
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1708
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v20

    .line 1710
    .local v20, widgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const/16 v22, 0x0

    goto :goto_4

    .line 1715
    .end local v20           #widgets:Lcom/android/launcher2/MenuWidgets;
    :cond_9
    sget-object v22, Lcom/android/launcher2/Launcher$8;->$SwitchMap$com$android$launcher2$MenuFragment$ViewType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/MenuFragment$ViewType;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    goto/16 :goto_3

    .line 1718
    :pswitch_0
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1719
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1720
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mDownloadedApp:Z

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1721
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1722
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mDownloadedApp:Z

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1723
    sget-object v22, Lcom/android/launcher2/Launcher$8;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_1

    goto/16 :goto_3

    .line 1725
    :pswitch_1
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1726
    sget-object v22, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v2

    .line 1727
    .local v2, _tmp:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_a

    const/16 v22, 0x1

    :goto_5
    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1728
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1729
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mDownloadedApp:Z

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1730
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1731
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1732
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1733
    sget-object v22, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v17

    .line 1734
    .local v17, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v17, :cond_c

    .line 1735
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_b

    const/16 v22, 0x1

    :goto_6
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1739
    :goto_7
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1740
    sget-object v22, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppModel;->hasHiddenApps()Z

    move-result v22

    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1727
    .end local v17           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_a
    const/16 v22, 0x0

    goto :goto_5

    .line 1735
    .restart local v17       #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_b
    const/16 v22, 0x0

    goto :goto_6

    .line 1737
    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 1745
    .end local v2           #_tmp:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v17           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :pswitch_2
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1746
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1723
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static startDrag(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 2701
    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method private static final startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/launcher2/ShadowBuilder;Lcom/android/launcher2/DragState;I)Z
    .locals 25
    .parameter "inst"
    .parameter "data"
    .parameter "shadowBuilder"
    .parameter "myLocalState"
    .parameter "flags"

    .prologue
    .line 2709
    const-string v5, "Launcher"

    const-string v6, "Drag started"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    const/16 v21, 0x0

    .line 2712
    .local v21, okay:Z
    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    .line 2713
    .local v23, shadowSize:Landroid/graphics/Point;
    new-instance v24, Landroid/graphics/Point;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Point;-><init>()V

    .line 2714
    .local v24, shadowTouchPoint:Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2716
    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_1

    .line 2717
    :cond_0
    const-string v5, "Launcher"

    const-string v6, "Drag shadow touch point must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    const/4 v5, 0x0

    .line 2771
    :goto_0
    return v5

    .line 2720
    :cond_1
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_2

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_3

    .line 2721
    :cond_2
    const-string v5, "Launcher"

    const-string v6, "Drag shadow dimensions must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    const/4 v5, 0x0

    goto :goto_0

    .line 2725
    :cond_3
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 2727
    .local v8, surface:Landroid/view/Surface;
    :try_start_0
    const-class v5, Landroid/view/View;

    const-string v6, "mAttachInfo"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 2728
    .local v19, f:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2729
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 2731
    .local v17, _mAttachInfo:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mWindow"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 2732
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2733
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IWindow;

    .line 2735
    .local v4, _mWindow:Landroid/view/IWindow;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mSession"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 2736
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2737
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IWindowSession;

    .line 2739
    .local v3, _mSession:Landroid/view/IWindowSession;
    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 2741
    .local v11, token:Landroid/os/IBinder;
    if-eqz v11, :cond_4

    .line 2742
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/launcher2/ShadowBuilder;->setSurface(Landroid/view/Surface;)V

    .line 2743
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/ShadowBuilder;->draw()V

    .line 2745
    const-class v5, Landroid/view/View;

    const-string v6, "getViewRootImpl"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 2746
    .local v20, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2747
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/ViewRootImpl;

    .line 2750
    .local v22, root:Landroid/view/ViewRootImpl;
    const-class v5, Landroid/view/ViewRootImpl;

    const-string v6, "setLocalDragState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    aput-object v10, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 2751
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2752
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 2757
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v5

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v5

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 2766
    .end local v3           #_mSession:Landroid/view/IWindowSession;
    .end local v4           #_mWindow:Landroid/view/IWindow;
    .end local v11           #token:Landroid/os/IBinder;
    .end local v17           #_mAttachInfo:Ljava/lang/Object;
    .end local v19           #f:Ljava/lang/reflect/Field;
    .end local v20           #m:Ljava/lang/reflect/Method;
    .end local v22           #root:Landroid/view/ViewRootImpl;
    :cond_4
    :goto_1
    if-eqz v21, :cond_5

    .line 2767
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragState;->setShadow(Lcom/android/launcher2/ShadowBuilder;)V

    .line 2768
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragState;->onDragStartedSuccessfully()V

    .line 2770
    :cond_5
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start Drag result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v21

    .line 2771
    goto/16 :goto_0

    .line 2761
    :catch_0
    move-exception v18

    .line 2762
    .local v18, e:Ljava/lang/Exception;
    const-string v5, "Launcher"

    const-string v6, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2763
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_1
.end method

.method public static startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z
    .locals 4
    .parameter "v"
    .parameter "shadow"

    .prologue
    .line 2704
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher2/DragState;

    invoke-direct {v2, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/launcher2/ShadowBuilder;Lcom/android/launcher2/DragState;I)Z

    move-result v0

    return v0
.end method

.method private updateStatusOfHelpPage(ZLjava/lang/String;)V
    .locals 5
    .parameter "needToShowHelpPage"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 2318
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isHelpHubAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2326
    :goto_0
    return-void

    .line 2322
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2323
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "displayed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2325
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 489
    const/4 v1, 0x0

    .line 491
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 493
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 494
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 495
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 502
    if-eqz v2, :cond_0

    .line 504
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v1, v2

    .line 510
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 502
    if-eqz v1, :cond_1

    .line 504
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 505
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 502
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 504
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 502
    :cond_2
    :goto_4
    throw v3

    .line 496
    :catch_2
    move-exception v3

    .line 502
    :goto_5
    if-eqz v1, :cond_1

    .line 504
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 505
    :catch_3
    move-exception v4

    goto :goto_4

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v3

    goto :goto_0

    .line 502
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 498
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 496
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_5
.end method


# virtual methods
.method public addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    return-void
.end method

.method public bindAppsLoaded()V
    .locals 1

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->appModelLoaded()V

    .line 2642
    return-void
.end method

.method public bindAppsUpdated()V
    .locals 1

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->appModelUpdated()V

    .line 2655
    return-void
.end method

.method public bindBadgeUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2645
    .local p1, appItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .local p2, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2646
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/HomeFragment;->bindHomeItemsUpdated(Ljava/util/List;)V

    .line 2648
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2649
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->appBadgeUpdated()V

    .line 2651
    :cond_1
    return-void
.end method

.method public bindHomeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2626
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2627
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    .line 2628
    return-void
.end method

.method public bindHomeAppWidget_CP(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2672
    .local p1, homewidgetItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/HomeFragment;->bindAppWidget_CP(Ljava/util/List;I)V

    .line 2673
    return-void
.end method

.method public bindHomeBegin()V
    .locals 1

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->startBinding()V

    .line 2608
    return-void
.end method

.method public bindHomeEnd()V
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2622
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->finishBindingItems()V

    .line 2623
    return-void
.end method

.method public bindHomeFolders(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2616
    .local p1, folders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2617
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindFolders(Ljava/util/Map;)V

    .line 2618
    return-void
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2658
    .local p1, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindHomeItemsRemoved(Ljava/util/List;)V

    .line 2659
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2662
    .local p1, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindHomeItemsUpdated(Ljava/util/List;)V

    .line 2663
    return-void
.end method

.method public bindHomeSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 2631
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2632
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    .line 2633
    return-void
.end method

.method public bindHomeSamsungAppWidget_CP(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungAppWidgetInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2676
    .local p1, samsungAppWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SamsungAppWidgetInfo;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/HomeFragment;->bindSamsungAppWidget_CP(Ljava/util/List;I)V

    .line 2677
    return-void
.end method

.method public bindHomeShortcuts(Ljava/util/List;II)V
    .locals 1
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2611
    .local p1, shortcuts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2612
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/HomeFragment;->bindItems(Ljava/util/List;II)V

    .line 2613
    return-void
.end method

.method public bindHomeShortcuts_CP(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2668
    .local p1, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/HomeFragment;->bindItems_CP(Ljava/util/List;I)V

    .line 2669
    return-void
.end method

.method public bindHotseatItems(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2636
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2637
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindHotseat(Ljava/util/List;)V

    .line 2638
    return-void
.end method

.method public bindModeChange()V
    .locals 1

    .prologue
    .line 2602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 2603
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->finish()V

    .line 2604
    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 1

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->updateGlobalSearchIcon()Z

    .line 2814
    return-void
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    .prologue
    .line 2595
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    if-nez v0, :cond_0

    .line 2596
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->bindWidgetsAfterConfigChange()V

    .line 2598
    :cond_0
    return-void
.end method

.method public checkFactoryMode()Z
    .locals 1

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkShowCling(Ljava/lang/String;)Z
    .locals 5
    .parameter "clingPrefKey"

    .prologue
    const/4 v2, 0x0

    .line 1881
    const/4 v1, 0x0

    .line 1882
    .local v1, rc:Z
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1884
    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1886
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 1889
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_2

    const-string v2, "show"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cling view for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    return v1

    .restart local v0       #prefs:Landroid/content/SharedPreferences;
    :cond_1
    move v1, v2

    .line 1886
    goto :goto_0

    .line 1889
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    const-string v2, "skip"

    goto :goto_1
.end method

.method public closePopupMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1243
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 1246
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeOptionsMenu()V

    .line 1249
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 1250
    return-void
.end method

.method public createPopupMenu(Landroid/view/View;)V
    .locals 3
    .parameter "popupAnchorView"

    .prologue
    .line 1565
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    .line 1566
    if-nez p1, :cond_0

    .line 1567
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find anchor for menu button."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1569
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    .line 1570
    new-instance v0, Lcom/android/launcher2/popup/PopupMenu;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/popup/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    .line 1571
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    new-instance v1, Lcom/android/launcher2/Launcher$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/PopupMenu;->setOnDismissListener(Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;)V

    .line 1578
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    .line 1579
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f10

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1580
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/PopupMenu;->setOnMenuItemClickListener(Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;)V

    .line 1581
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)V

    .line 1582
    return-void
.end method

.method public dismissAllAppsCling(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 2073
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070075

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2075
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 2076
    .local v0, cb:Landroid/widget/CheckBox;
    iget v3, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v3, v2, :cond_2

    .line 2077
    const v3, 0x7f070016

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 2081
    .restart local v0       #cb:Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2082
    instance-of v3, v1, Lcom/android/launcher2/Cling;

    if-eqz v3, :cond_1

    .line 2083
    check-cast v1, Lcom/android/launcher2/Cling;

    .end local v1           #view:Landroid/view/View;
    const-string v3, "cling.allapps.dismissed"

    const/16 v4, 0xfa

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;IZ)V

    .line 2084
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    const-string v3, "add_shortcut"

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Launcher;->updateStatusOfHelpPage(ZLjava/lang/String;)V

    .line 2087
    :cond_1
    return-void

    .line 2078
    .restart local v1       #view:Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2079
    const v3, 0x7f070019

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .restart local v0       #cb:Landroid/widget/CheckBox;
    goto :goto_0

    .line 2084
    .end local v1           #view:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dismissOrNextWorkspaceCling(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2156
    const-string v10, "com.android.launcher2.prefs"

    invoke-virtual {p0, v10, v9}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2158
    .local v7, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "cling.workspace.dismissed"

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2205
    :cond_0
    :goto_0
    return-void

    .line 2162
    :cond_1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 2163
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .local v0, cb1:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    .local v1, cb2:Landroid/widget/CheckBox;
    const/4 v2, 0x0

    .line 2165
    .local v2, cb3:Landroid/widget/CheckBox;
    const v10, 0x7f070097

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2166
    .local v3, clingPage1:Landroid/view/View;
    const v10, 0x7f070098

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2167
    .local v4, clingPage2:Landroid/view/View;
    const v10, 0x7f070099

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2169
    .local v5, clingPage3:Landroid/view/View;
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v8, :cond_5

    .line 2170
    const v10, 0x7f07009c

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb1:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 2175
    .restart local v0       #cb1:Landroid/widget/CheckBox;
    :cond_2
    :goto_1
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v8, :cond_6

    .line 2176
    const v10, 0x7f0700a2

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #cb2:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 2181
    .restart local v1       #cb2:Landroid/widget/CheckBox;
    :cond_3
    :goto_2
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v8, :cond_7

    .line 2182
    const v10, 0x7f0700a7

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #cb3:Landroid/widget/CheckBox;
    check-cast v2, Landroid/widget/CheckBox;

    .line 2187
    .restart local v2       #cb3:Landroid/widget/CheckBox;
    :cond_4
    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_9

    .line 2188
    const-string v10, "cling.workspace.page1.dismissed"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2189
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2190
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-nez v10, :cond_8

    :goto_4
    const-string v9, "homescreen_navigate"

    invoke-direct {p0, v8, v9}, Lcom/android/launcher2/Launcher;->updateStatusOfHelpPage(ZLjava/lang/String;)V

    .line 2191
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    goto :goto_0

    .line 2171
    :cond_5
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v11, :cond_2

    .line 2172
    const v10, 0x7f07009f

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb1:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .restart local v0       #cb1:Landroid/widget/CheckBox;
    goto :goto_1

    .line 2177
    :cond_6
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v11, :cond_3

    .line 2178
    const v10, 0x7f0700a4

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #cb2:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .restart local v1       #cb2:Landroid/widget/CheckBox;
    goto :goto_2

    .line 2183
    :cond_7
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v11, :cond_4

    .line 2184
    const v10, 0x7f0700a9

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #cb3:Landroid/widget/CheckBox;
    check-cast v2, Landroid/widget/CheckBox;

    .restart local v2       #cb3:Landroid/widget/CheckBox;
    goto :goto_3

    :cond_8
    move v8, v9

    .line 2190
    goto :goto_4

    .line 2192
    :cond_9
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_b

    .line 2193
    const-string v10, "cling.workspace.page2.dismissed"

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2194
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2195
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-nez v10, :cond_a

    :goto_5
    const-string v9, "notifications_access"

    invoke-direct {p0, v8, v9}, Lcom/android/launcher2/Launcher;->updateStatusOfHelpPage(ZLjava/lang/String;)V

    .line 2196
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_a
    move v8, v9

    .line 2195
    goto :goto_5

    .line 2197
    :cond_b
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_0

    .line 2198
    const-string v10, "cling.workspace.page3.dismissed"

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2199
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2200
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-nez v10, :cond_c

    :goto_6
    const-string v9, "homescreen_applications"

    invoke-direct {p0, v8, v9}, Lcom/android/launcher2/Launcher;->updateStatusOfHelpPage(ZLjava/lang/String;)V

    .line 2201
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_c
    move v8, v9

    .line 2200
    goto :goto_6
.end method

.method public dismissWidgetCling(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 2094
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070076

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2096
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 2098
    .local v0, cb:Landroid/widget/CheckBox;
    iget v3, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v3, v2, :cond_2

    .line 2099
    const v3, 0x7f070093

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 2105
    .restart local v0       #cb:Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2106
    instance-of v3, v1, Lcom/android/launcher2/Cling;

    if-eqz v3, :cond_1

    .line 2107
    check-cast v1, Lcom/android/launcher2/Cling;

    .end local v1           #view:Landroid/view/View;
    const-string v3, "cling.widget.dismissed"

    const/16 v4, 0xfa

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;IZ)V

    .line 2108
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    const-string v3, "add_widget"

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Launcher;->updateStatusOfHelpPage(ZLjava/lang/String;)V

    .line 2111
    :cond_1
    return-void

    .line 2100
    .restart local v1       #view:Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2101
    const v3, 0x7f070096

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .restart local v0       #cb:Landroid/widget/CheckBox;
    goto :goto_0

    .line 2108
    .end local v1           #view:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dismissWorkspaceCling(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 2129
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f070044

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2131
    .local v5, view:Landroid/view/View;
    const-string v7, "com.android.launcher2.prefs"

    invoke-virtual {p0, v7, v6}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2132
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v7, "cling.workspace.dismissed"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2153
    .end local v5           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2136
    .restart local v5       #view:Landroid/view/View;
    :cond_1
    instance-of v7, v5, Lcom/android/launcher2/Cling;

    if-eqz v7, :cond_0

    .line 2137
    const/4 v0, 0x0

    .line 2138
    .local v0, bClingState:Z
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getDismissCling_Key()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2139
    const-string v7, "com.android.launcher2.prefs"

    invoke-virtual {p0, v7, v6}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2140
    const-string v7, "cling.workspace.page1.dismissed"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2141
    .local v1, page1:Z
    const-string v7, "cling.workspace.page2.dismissed"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2142
    .local v2, page2:Z
    const-string v7, "cling.workspace.page3.dismissed"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2143
    .local v3, page3:Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 2149
    .end local v1           #page1:Z
    .end local v2           #page2:Z
    .end local v3           #page3:Z
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->setDismissCling_Key(Z)V

    .line 2150
    check-cast v5, Lcom/android/launcher2/Cling;

    .end local v5           #view:Landroid/view/View;
    const-string v7, "cling.workspace.dismissed"

    const/16 v8, 0xfa

    invoke-direct {p0, v5, v7, v8, v0}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;IZ)V

    .line 2151
    iput-boolean v6, p0, Lcom/android/launcher2/Launcher;->mWorksapceClingisShow:Z

    goto :goto_0

    .restart local v1       #page1:Z
    .restart local v2       #page2:Z
    .restart local v3       #page3:Z
    .restart local v5       #view:Landroid/view/View;
    :cond_2
    move v0, v6

    .line 2143
    goto :goto_1

    .line 2146
    .end local v1           #page1:Z
    .end local v2           #page2:Z
    .end local v3           #page3:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    #huaqi start <<
    const/4 v0, 0x1
	
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :zxf_cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :zxf_pswitch_data_0

    :zxf_cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :zxf_cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :zxf_pswitch_data_1

    :zxf_cond_1
    goto :zxf_end

    :zxf_goto_0
    :zxf_pswitch_0
    return v0

    :zxf_pswitch_1
	const/4 v1, 0x01
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->simulateTouchEvent(Z)V

    goto :zxf_goto_0

    :zxf_pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->simulateTouchEvent(Z)V

    goto :zxf_goto_0

    :zxf_pswitch_data_0
    .packed-switch 0x15
        :zxf_pswitch_0
        :zxf_pswitch_0
    .end packed-switch

    :zxf_pswitch_data_1
    .packed-switch 0x15
        :zxf_pswitch_1
        :zxf_pswitch_2
    .end packed-switch
	
	:zxf_end
	#huaqi end  >>
	
    const v8, 0x7f07006c

    const v7, 0x7f070061

    const/4 v0, 0x0

    const/4 v4, 0x1
	

    .line 1032
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    .line 1033
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1161
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    :cond_1
    :goto_1
    :sswitch_0
    return v4

    .line 1036
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :sswitch_2
    move v4, v0

    .line 1043
    goto :goto_1

    .line 1045
    :sswitch_3
    const-string v5, "debug.launcher2.dumpstate"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1046
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->dumpState()V

    goto :goto_1

    .line 1054
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isShowCling()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1060
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto :goto_1

    .line 1068
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isShowCling()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1072
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1073
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1074
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto :goto_1

    .line 1080
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 1081
    .local v1, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v1, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/PagedViewWidget;

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v5, :cond_3

    move v0, v4

    .line 1083
    .local v0, allowFocus:Z
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v5, v6, :cond_0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    iget-object v5, v5, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const v6, 0x7f07007f

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1085
    .local v2, searchInput:Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 1086
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    goto/16 :goto_1

    .line 1093
    .end local v0           #allowFocus:Z
    .end local v1           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    .end local v2           #searchInput:Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1094
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_0

    .line 1153
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isShowCling()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 1097
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 1104
    :sswitch_8
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-nez v5, :cond_c

    .line 1105
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 1106
    .restart local v1       #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v5, v6, :cond_5

    move v4, v0

    .line 1107
    goto/16 :goto_1

    .line 1109
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_6

    move v4, v0

    .line 1110
    goto/16 :goto_1

    .line 1112
    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_7

    move v4, v0

    .line 1113
    goto/16 :goto_1

    .line 1116
    :cond_7
    const/4 v3, 0x0

    .line 1117
    .local v3, v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_a

    .line 1118
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_9

    .line 1119
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1121
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 1130
    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)V

    .line 1131
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 1132
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 1133
    sput-boolean v4, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto/16 :goto_1

    .line 1124
    :cond_a
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v8, :cond_9

    .line 1125
    :cond_b
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1126
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    goto :goto_2

    .line 1144
    .end local v1           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    .end local v3           #v:Landroid/view/View;
    :cond_c
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_1

    move v4, v0

    .line 1146
    goto/16 :goto_1

    .line 1033
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_1
        0x19 -> :sswitch_3
        0x42 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch

    .line 1094
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_0
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x17 -> :sswitch_7
        0x42 -> :sswitch_7
        0x52 -> :sswitch_8
    .end sparse-switch
.end method

.method public exitAllApps()V
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->exitAllApps(Z)V

    .line 821
    return-void
.end method

.method public exitAllApps(Z)V
    .locals 15
    .parameter "withDrag"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 887
    :cond_1
    :goto_0
    return-void

    .line 827
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->dismissMenuCling()V

    .line 828
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->onExitAllApps()V

    .line 830
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 834
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v6, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    .line 836
    .local v11, provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    invoke-interface {v11, v6}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectExitAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 838
    .end local v11           #provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    :cond_4
    if-nez p1, :cond_6

    .line 839
    const v14, 0x7f050008

    .line 840
    .local v14, xmlID:I
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_5

    .line 841
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    .line 842
    .local v13, ws:Lcom/android/launcher2/Workspace;
    if-eqz v13, :cond_5

    iget v0, v13, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v13, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    if-eqz v0, :cond_5

    .line 844
    const v14, 0x7f050009

    .line 847
    .end local v13           #ws:Lcom/android/launcher2/Workspace;
    :cond_5
    invoke-static {p0, v14}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v8

    .line 848
    .local v8, darkenAnimator:Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 849
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    .end local v8           #darkenAnimator:Landroid/animation/Animator;
    .end local v14           #xmlID:I
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 853
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 855
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 856
    .local v12, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 857
    const-wide/16 v0, 0x12c

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 858
    new-instance v0, Lcom/android/launcher2/Launcher$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 872
    iput-object v12, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    .line 873
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 875
    const-string v0, "com.android.launcher2.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 876
    .local v10, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->initClingCheck()V

    .line 877
    if-nez p1, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "cling.workspace.dismissed"

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 878
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 879
    .local v7, clingView:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getWorkspaceClingVisible()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 881
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const v2, 0x7f070044

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;

    .line 882
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->firstShowCling()V

    .line 886
    .end local v7           #clingView:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    goto/16 :goto_0
.end method

.method public getAnimationLayer()Lcom/android/launcher2/AnimationLayer;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-object v0
.end method

.method public getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;
    .locals 1

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    return-object v0
.end method

.method public getContextualPageReceiver()Lcom/android/launcher2/ContextualPageReceiver;
    .locals 1

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    return-object v0
.end method

.method public getDismissCling_Key()Z
    .locals 1

    .prologue
    .line 2122
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mClingEnd:Z

    return v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    return-object v0
.end method

.method public getMenuFragment()Lcom/android/launcher2/MenuFragment;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    return-object v0
.end method

.method public getQuickViewWorkspaceOpen()Z
    .locals 1

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2918
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    .line 2920
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResOrientation()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    return v0
.end method

.method public getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getShowEmptyPageMessagePref()Z
    .locals 1

    .prologue
    .line 2871
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    return v0
.end method

.method public getTextToSpeech()Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 2847
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public getTransitionToAllApps()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    return v0
.end method

.method public getWorkspaceClingState()Z
    .locals 1

    .prologue
    .line 2126
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorksapceClingisShow:Z

    return v0
.end method

.method public initClingCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2330
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isHelpHubAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2395
    :cond_0
    :goto_0
    return-void

    .line 2334
    :cond_1
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2335
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2337
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "homescreen_navigate"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "cling.workspace.page1.dismissed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2338
    const-string v2, "cling.workspace.page1.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2339
    const-string v2, "cling.workspace.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2340
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2343
    :cond_2
    const-string v2, "notifications_access"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cling.workspace.page2.dismissed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2344
    const-string v2, "cling.workspace.page2.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2345
    const-string v2, "cling.workspace.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2349
    :cond_3
    const-string v2, "homescreen_applications"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cling.workspace.page3.dismissed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2350
    const-string v2, "cling.workspace.page3.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2351
    const-string v2, "cling.workspace.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2355
    :cond_4
    const-string v2, "add_shortcut"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "cling.allapps.dismissed"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2356
    const-string v2, "cling.allapps.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2357
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2360
    :cond_5
    const-string v2, "add_widget"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "cling.widget.dismissed"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2361
    const-string v2, "cling.widget.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2365
    :cond_6
    const-string v2, "homescreen_navigate"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2366
    const-string v2, "cling.workspace.page1.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2367
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2370
    :cond_7
    const-string v2, "notifications_access"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2371
    const-string v2, "cling.workspace.page2.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2375
    :cond_8
    const-string v2, "homescreen_applications"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2376
    const-string v2, "cling.workspace.page3.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2377
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2380
    :cond_9
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getWorkspaceClingVisible()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2381
    const-string v2, "cling.workspace.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2385
    :cond_a
    const-string v2, "add_shortcut"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2386
    const-string v2, "cling.allapps.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2387
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2390
    :cond_b
    const-string v2, "add_widget"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2391
    const-string v2, "cling.widget.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public isAddToScreenDialogShowing()Z
    .locals 1

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    return v0
.end method

.method public isEmptyPage()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1165
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1166
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 1167
    .local v4, workspace:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutChildren;

    if-nez v6, :cond_1

    .line 1185
    .end local v4           #workspace:Lcom/android/launcher2/CellLayout;
    :cond_0
    :goto_0
    return v5

    .line 1170
    .restart local v4       #workspace:Lcom/android/launcher2/CellLayout;
    :cond_1
    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    .line 1171
    .local v3, parent:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v0, 0x0

    .line 1173
    .local v0, countAppIcon:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1174
    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1175
    .local v1, countItem:Landroid/view/View;
    instance-of v6, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_2

    .line 1176
    add-int/lit8 v0, v0, 0x1

    .line 1173
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1180
    .end local v1           #countItem:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    .line 1181
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isExitingAllApps()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    return v0
.end method

.method public isPageEdit()Z
    .locals 3

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    .line 1190
    .local v0, menuWidget:Lcom/android/launcher2/MenuWidgets;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_1

    .line 1193
    :cond_0
    const/4 v1, 0x1

    .line 1195
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 2787
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    return v0
.end method

.method public isShowCling()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1199
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return v5

    .line 1202
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    .line 1203
    .local v2, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f070044

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1204
    .local v4, workspaceClingView:Landroid/view/View;
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f070075

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1205
    .local v0, allAppsClingView:Landroid/view/View;
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f070076

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1208
    .local v3, widgetClingView:Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "cling.allapps.dismissed"

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1212
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v7, 0x7f070017

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1213
    .local v1, clingButton:Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 1214
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    :cond_2
    move v5, v6

    .line 1215
    goto :goto_0

    .line 1218
    .end local v1           #clingButton:Landroid/widget/Button;
    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "cling.widget.dismissed"

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1224
    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getRootView()Landroid/view/View;

    move-result-object v5

    const v7, 0x7f070094

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1225
    .restart local v1       #clingButton:Landroid/widget/Button;
    if-eqz v1, :cond_4

    .line 1226
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    :cond_4
    move v5, v6

    .line 1227
    goto/16 :goto_0

    .line 1230
    .end local v1           #clingButton:Landroid/widget/Button;
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "cling.workspace.dismissed"

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1234
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v7, 0x7f07009d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1235
    .restart local v1       #clingButton:Landroid/widget/Button;
    if-eqz v1, :cond_6

    .line 1236
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    :cond_6
    move v5, v6

    .line 1237
    goto/16 :goto_0
.end method

.method public isTransitioningToShowAllApps()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    :cond_0
    const/4 v0, 0x1

    .line 742
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public menuWidgetsUpdated(Z)V
    .locals 3
    .parameter "hasUninstallable"

    .prologue
    .line 2688
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2689
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0700b7

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2690
    .local v0, uninstall:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2691
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2694
    .end local v0           #uninstall:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1368
    const-string v1, "Launcher"

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-super {p0}, Landroid/app/ActivityGroup;->onAttachedToWindow()V

    .line 1372
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1373
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1374
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1376
    const-string v1, "android.intent.action.REQUEST_HOME_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1377
    const-string v1, "android.intent.action.REQUEST_WIDGET_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1379
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1382
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1383
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v0, :cond_3

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1257
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isShowCling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1258
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->dismissMenuCling()V

    .line 1265
    :cond_1
    :goto_0
    return-void

    .line 1260
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    goto :goto_0

    .line 1263
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->onBackPressed()Z

    goto :goto_0
.end method

.method public onClickAppMarketButton()V
    .locals 2

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1787
    :cond_0
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1775
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onClickAppMarketButton()V

    .line 1776
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1781
    :goto_0
    return-void

    .line 1778
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 1776
    nop

    :pswitch_data_0
    .packed-switch 0x7f070062
        :pswitch_0
    .end packed-switch
.end method

.method public onClickDownloadedButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->onOptionSelectedDownload()V

    .line 1791
    return-void
.end method

.method public onClickPopupMenuButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v0, :cond_0

    .line 1599
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 1607
    :goto_0
    return-void

    .line 1602
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 1604
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 1605
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 2925
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2926
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;)V

    .line 2930
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    .line 2931
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged. orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2945
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    if-eqz v1, :cond_0

    .line 2946
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/AnimationLayer;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2948
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->onConfigurationChangedCling(Z)V

    .line 2949
    return-void
.end method

.method public onConfigurationChangedCling(Z)V
    .locals 13
    .parameter "config"

    .prologue
    .line 2494
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cling.allapps.dismissed"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cling.widget.dismissed"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getWorkspaceClingVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2549
    :cond_0
    :goto_0
    return-void

    .line 2501
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v10

    .line 2502
    .local v10, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f070044

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 2503
    .local v12, workspaceClingView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f070075

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2504
    .local v6, allAppsClingView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f070076

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2505
    .local v11, widgetClingView:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, cbPort:Landroid/widget/CheckBox;
    const/4 v4, 0x0

    .line 2506
    .local v4, cbLand:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    .local v1, vPort:Landroid/view/View;
    const/4 v2, 0x0

    .line 2508
    .local v2, vLand:Landroid/view/View;
    if-eqz v6, :cond_2

    const-string v0, "cling.allapps.dismissed"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2509
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2510
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2511
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cbPort:Landroid/widget/CheckBox;
    check-cast v3, Landroid/widget/CheckBox;

    .line 2512
    .restart local v3       #cbPort:Landroid/widget/CheckBox;
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cbLand:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #cbLand:Landroid/widget/CheckBox;
    move-object v0, p0

    move v5, p1

    .line 2513
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    .line 2516
    :cond_2
    if-eqz v11, :cond_3

    const-string v0, "cling.widget.dismissed"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v10, :cond_3

    .line 2517
    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2518
    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2519
    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cbPort:Landroid/widget/CheckBox;
    check-cast v3, Landroid/widget/CheckBox;

    .line 2520
    .restart local v3       #cbPort:Landroid/widget/CheckBox;
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cbLand:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #cbLand:Landroid/widget/CheckBox;
    move-object v0, p0

    move v5, p1

    .line 2521
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    .line 2524
    :cond_3
    if-eqz v12, :cond_0

    const-string v0, "cling.workspace.dismissed"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2525
    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2526
    .local v7, clingPage1:Landroid/view/View;
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2527
    .local v8, clingPage2:Landroid/view/View;
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2529
    .local v9, clingPage3:Landroid/view/View;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2530
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2531
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2532
    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cbPort:Landroid/widget/CheckBox;
    check-cast v3, Landroid/widget/CheckBox;

    .line 2533
    .restart local v3       #cbPort:Landroid/widget/CheckBox;
    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cbLand:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #cbLand:Landroid/widget/CheckBox;
    move-object v0, p0

    move v5, p1

    .line 2534
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    goto/16 :goto_0

    .line 2535
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 2536
    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2537
    const v0, 0x7f0700a3

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2538
    const v0, 0x7f0700a2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cbPort:Landroid/widget/CheckBox;
    check-cast v3, Landroid/widget/CheckBox;

    .line 2539
    .restart local v3       #cbPort:Landroid/widget/CheckBox;
    const v0, 0x7f0700a4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cbLand:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #cbLand:Landroid/widget/CheckBox;
    move-object v0, p0

    move v5, p1

    .line 2540
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    goto/16 :goto_0

    .line 2541
    :cond_5
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2542
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2543
    const v0, 0x7f0700a8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2544
    const v0, 0x7f0700a7

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cbPort:Landroid/widget/CheckBox;
    check-cast v3, Landroid/widget/CheckBox;

    .line 2545
    .restart local v3       #cbPort:Landroid/widget/CheckBox;
    const v0, 0x7f0700a9

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cbLand:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #cbLand:Landroid/widget/CheckBox;
    move-object v0, p0

    move v5, p1

    .line 2546
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 247
    const-string v10, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate. savedInstanceState: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez p1, :cond_5

    const-string v9, "null"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", Launcher: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 251
    .local v6, res:Landroid/content/res/Resources;
    const/high16 v9, 0x7f0b

    invoke-virtual {v6, v9, v12, v12}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    sput v9, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    .line 253
    invoke-static {v6}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;)V

    .line 255
    sget-boolean v9, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    if-eqz v9, :cond_0

    .line 256
    const/4 v9, -0x4

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v9

    if-nez v9, :cond_7

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "device_provisioned"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 262
    .local v0, IsProvisioned:Z
    if-eqz v0, :cond_6

    .line 263
    const-string v9, "Launcher"

    const-string v10, "Set device_provisioned: 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "device_provisioned"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_1

    .line 266
    const-string v9, "Launcher"

    const-string v10, "Confirm device_provisioned: 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0           #IsProvisioned:Z
    :cond_1
    :goto_1
    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HOMESCREENEDITMODE="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " REPLACEHOTSEATAREAINEDITMODE="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    .line 295
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    .line 296
    .local v1, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 297
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v9, p0}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 298
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 300
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    .line 302
    const-string v9, "com.android.launcher2.prefs"

    invoke-virtual {p0, v9, v13}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 303
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v9, "SHOW_EMPTY_PAGE_MSG"

    invoke-interface {v5, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    .line 305
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 306
    const v9, 0x7f03001d

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 308
    invoke-static {p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    .line 309
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iget-boolean v10, p0, Lcom/android/launcher2/Launcher;->mLocaleChanged:Z

    invoke-virtual {v9, p0, v10}, Lcom/android/launcher2/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    .line 311
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const v10, 0x7f070059

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/HomeFragment;

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const v10, 0x7f070058

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/MenuFragment;

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    .line 313
    const v9, 0x7f070057

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    .line 319
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 320
    .local v7, transaction:Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_9

    .line 321
    const-string v9, "extra_home_fragment_hidden"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 322
    .local v8, wasHomeHidden:Z
    if-eqz v8, :cond_8

    .line 323
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7, v9}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 324
    iput-boolean v12, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 325
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7, v9}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 326
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    sget v10, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 337
    .end local v8           #wasHomeHidden:Z
    :goto_2
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 339
    iget-boolean v9, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v9, :cond_2

    .line 340
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v9, v12}, Lcom/android/launcher2/LauncherModel;->startLoader(Z)V

    .line 342
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, filter:Landroid/content/IntentFilter;
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v3}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 346
    invoke-static {p0}, Lcom/android/launcher2/BadgeCountReceiver;->initialize(Landroid/content/Context;)Lcom/android/launcher2/BadgeCountReceiver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

    .line 349
    sget-boolean v9, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v9, :cond_3

    .line 350
    new-instance v9, Lcom/android/launcher2/ContextualPageManager;

    invoke-direct {v9, p0}, Lcom/android/launcher2/ContextualPageManager;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    .line 351
    new-instance v9, Lcom/android/launcher2/ContextualPageNotification;

    invoke-direct {v9, p0}, Lcom/android/launcher2/ContextualPageNotification;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    .line 352
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/HomeFragment;->setContextualPageManager(Lcom/android/launcher2/ContextualPageManager;)V

    .line 353
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/QuickViewWorkspace;->setContextualPageManager(Lcom/android/launcher2/ContextualPageManager;)V

    .line 354
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/ContextualPageManager;->initContextualPage(Lcom/android/launcher2/HomeFragment;Lcom/android/launcher2/ContextualPageNotification;)V

    .line 355
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/ContextualPageNotification;->notificationInitialize(Lcom/android/launcher2/HomeFragment;Lcom/android/launcher2/ContextualPageManager;)V

    .line 356
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-static {p0, v9}, Lcom/android/launcher2/ContextualPageReceiver;->initialize(Landroid/content/Context;Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/ContextualPageReceiver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    .line 359
    :cond_3
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 360
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v9, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 363
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.APP_MARKET"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 366
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    .line 367
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    if-eqz v9, :cond_4

    .line 368
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 371
    :cond_4
    const v9, 0x7f070056

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AnimationLayer;

    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    .line 373
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v9, :cond_a

    .line 375
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 376
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 384
    :goto_3
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v10, 0x258

    if-ge v9, v10, :cond_b

    .line 387
    :goto_4
	#huaqi start <<
    
    new-instance v0, Lcom/eminent/utility/ProximitySensorManager;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mProximitySensorListener:Lcom/android/launcher2/Launcher$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/eminent/utility/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/eminent/utility/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mProximitySensorManager:Lcom/eminent/utility/ProximitySensorManager;
	#huaqi end >>
	
    return-void

    .line 247
    .end local v1           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #transaction:Landroid/app/FragmentTransaction;
    :cond_5
    const-string v9, "not null"

    goto/16 :goto_0

    .line 269
    .restart local v0       #IsProvisioned:Z
    .restart local v6       #res:Landroid/content/res/Resources;
    :cond_6
    :try_start_1
    const-string v9, "Launcher"

    const-string v10, "database error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 271
    .end local v0           #IsProvisioned:Z
    :catch_0
    move-exception v2

    .line 272
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error Setting device_provisioned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 276
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    const-string v9, "Launcher"

    const-string v10, "FactoryMode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 328
    .restart local v1       #app:Lcom/android/launcher2/LauncherApplication;
    .restart local v5       #prefs:Landroid/content/SharedPreferences;
    .restart local v7       #transaction:Landroid/app/FragmentTransaction;
    .restart local v8       #wasHomeHidden:Z
    :cond_8
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7, v9}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 329
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7, v9}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 330
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    .line 334
    .end local v8           #wasHomeHidden:Z
    :cond_9
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7, v9}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 335
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7, v9}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_2

    .line 378
    .restart local v3       #filter:Landroid/content/IntentFilter;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_a
    sput-boolean v13, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 379
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 380
    invoke-static {v13}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    goto :goto_3

    .line 386
    :cond_b
    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 911
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 912
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-eqz v1, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 914
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 916
    .end local v0           #menuInflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 662
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    .line 663
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy, Launcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 665
    invoke-static {}, Lcom/android/launcher2/Utilities;->onDestroy()V

    .line 667
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 668
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 670
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v2, :cond_0

    .line 672
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 673
    .local v1, tempPopupStatus:Z
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 674
    iput-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    .line 675
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 678
    .end local v1           #tempPopupStatus:Z
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_1

    .line 679
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 680
    iput-object v5, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 683
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

    invoke-virtual {v2}, Lcom/android/launcher2/BadgeCountReceiver;->unregister()V

    .line 686
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_2

    .line 687
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/ContextualPageNotification;->notificationClearAll(Landroid/content/Context;)V

    .line 688
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    invoke-virtual {v2}, Lcom/android/launcher2/ContextualPageReceiver;->unregister()V

    .line 692
    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    if-eqz v2, :cond_3

    .line 693
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 694
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    .local v0, home:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 698
    .end local v0           #home:Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowGen;->onDestroy()V

    .line 699
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1387
    const-string v0, "Launcher"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDetachedFromWindow()V

    .line 1389
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 1391
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 1396
    return-void
.end method

.method public onInit(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 2820
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v2, :cond_1

    .line 2844
    :cond_0
    :goto_0
    return-void

    .line 2824
    :cond_1
    if-nez p1, :cond_4

    .line 2826
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 2827
    .local v0, result:I
    if-eq v0, v5, :cond_2

    if-ne v0, v4, :cond_0

    .line 2830
    :cond_2
    const-string v2, "Launcher"

    const-string v3, "Language is not available defaulting to US english."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v1

    .line 2832
    .local v1, result2:I
    if-eq v1, v5, :cond_3

    if-ne v1, v4, :cond_0

    .line 2834
    :cond_3
    const-string v2, "Launcher"

    const-string v3, "Could not initialize TextToSpeech US language"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2842
    .end local v0           #result:I
    .end local v1           #result2:I
    :cond_4
    const-string v2, "Launcher"

    const-string v3, "Could not initialize TextToSpeech."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v10, 0x12

    const/4 v9, 0x7

    const/4 v6, 0x1

    .line 977
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    .line 978
    .local v5, uniChar:I
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 979
    .local v2, handled:Z
    if-lez v5, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v6

    .line 980
    .local v3, isKeyNotWhitespace:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 982
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 983
    if-lt p1, v9, :cond_4

    if-gt p1, v10, :cond_4

    .line 984
    const/4 v4, 0x0

    .line 985
    .local v4, myIntentDial:Landroid/content/Intent;
    if-lt p1, v9, :cond_2

    const/16 v7, 0x10

    if-gt p1, v7, :cond_2

    .line 986
    new-instance v4, Landroid/content/Intent;

    .end local v4           #myIntentDial:Landroid/content/Intent;
    const-string v6, "android.intent.action.DIAL"

    const-string v7, "tel:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 996
    .restart local v4       #myIntentDial:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 997
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 1022
    .end local v2           #handled:Z
    .end local v4           #myIntentDial:Landroid/content/Intent;
    :cond_0
    :goto_2
    return v2

    .line 979
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v3           #isKeyNotWhitespace:Z
    .restart local v2       #handled:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 988
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v3       #isKeyNotWhitespace:Z
    .restart local v4       #myIntentDial:Landroid/content/Intent;
    :cond_2
    if-ne p1, v10, :cond_3

    .line 989
    new-instance v4, Landroid/content/Intent;

    .end local v4           #myIntentDial:Landroid/content/Intent;
    const-string v7, "android.intent.action.DIAL"

    const-string v8, "tel:"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 991
    .restart local v4       #myIntentDial:Landroid/content/Intent;
    const-string v7, "isPoundKey"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 993
    :cond_3
    new-instance v4, Landroid/content/Intent;

    .end local v4           #myIntentDial:Landroid/content/Intent;
    const-string v6, "android.intent.action.DIAL"

    const-string v7, "tel:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #myIntentDial:Landroid/content/Intent;
    goto :goto_1

    .line 1003
    .end local v4           #myIntentDial:Landroid/content/Intent;
    :cond_4
    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v3, :cond_5

    .line 1004
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v8, v9, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1006
    .local v1, gotKey:Z
    if-eqz v1, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 1013
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v2

    goto :goto_2

    .line 1018
    .end local v1           #gotKey:Z
    :cond_5
    const/16 v7, 0x52

    if-ne p1, v7, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v6

    .line 1019
    goto :goto_2
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1766
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/high16 v6, 0x40

    const/4 v3, 0x0

    .line 1403
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 1405
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 1407
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->setIntent(Landroid/content/Intent;)V

    .line 1408
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1409
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1411
    .local v1, notiID:I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v6

    if-eq v4, v6, :cond_6

    .line 1413
    const-string v4, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1414
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1415
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->onHomePressed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1416
    const-string v4, "streetlife"

    const-string v5, "onNewIntent exitAllApps"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    .line 1427
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 1428
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1429
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1431
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1438
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 1440
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->closeSystemDialogs()V

    .line 1442
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    if-eqz v3, :cond_2

    .line 1443
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mContextualPageNotification:Lcom/android/launcher2/ContextualPageNotification;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/ContextualPageNotification;->notificationGoContextualPage(I)V

    .line 1445
    .end local v1           #notiID:I
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 1409
    goto :goto_0

    .line 1420
    .restart local v1       #notiID:I
    :cond_4
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v5, :cond_0

    .line 1421
    :cond_5
    if-nez v1, :cond_0

    .line 1422
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->onHomePressed()Z

    goto :goto_1

    .line 1433
    :cond_6
    const-string v3, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1434
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    goto :goto_2

    .line 1436
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    .line 1473
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 1474
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->invalidateOptionsMenu()V

    .line 1476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1548
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1478
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onClickAppMarketButton()V

    .line 1479
    const/4 v1, 0x1

    goto :goto_0

    .line 1481
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1482
    const/4 v1, 0x1

    goto :goto_0

    .line 1484
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->onOptionSelectedSearch()V

    .line 1485
    const/4 v1, 0x1

    goto :goto_0

    .line 1487
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->onOptionSelectedUninstall()V

    .line 1488
    const/4 v1, 0x1

    goto :goto_0

    .line 1490
    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->onOptionSelectedDownload()V

    .line 1491
    const/4 v1, 0x1

    goto :goto_0

    .line 1493
    :pswitch_5
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->chooseViewType()V

    .line 1494
    const/4 v1, 0x1

    goto :goto_0

    .line 1496
    :pswitch_6
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1497
    const/4 v1, 0x1

    goto :goto_0

    .line 1499
    :pswitch_7
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1500
    const/4 v1, 0x1

    goto :goto_0

    .line 1502
    :pswitch_8
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1503
    const/4 v1, 0x1

    goto :goto_0

    .line 1507
    :pswitch_9
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1508
    .local v0, searchManager:Landroid/app/SearchManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1509
    const/4 v1, 0x1

    goto :goto_0

    .line 1512
    .end local v0           #searchManager:Landroid/app/SearchManager;
    :pswitch_a
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->openQuickViewWorkspace(Landroid/os/Bundle;Z)V

    .line 1513
    const/4 v1, 0x1

    goto :goto_0

    .line 1516
    :pswitch_b
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_0

    .line 1517
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 1518
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeFragment;->showWorkspaceEditmode(Z)V

    .line 1522
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1520
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->openQuickViewWorkspace(Landroid/os/Bundle;Z)V

    goto :goto_1

    .line 1524
    :pswitch_c
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1525
    .local v9, i:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1526
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1528
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1530
    .end local v9           #i:Landroid/content/Intent;
    :pswitch_d
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v5, -0x66

    .line 1533
    .local v5, container:J
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZ)V

    .line 1534
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1530
    .end local v5           #container:J
    :cond_1
    const-wide/16 v5, -0x64

    goto :goto_2

    .line 1542
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 1543
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1545
    :pswitch_f
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeFragment;->startWallpaper(I)V

    .line 1546
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1476
    :pswitch_data_0
    .packed-switch 0x7f0700b0
        :pswitch_0
        :pswitch_1
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 965
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 966
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->invalidateOptionsMenu()V

    .line 967
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 968
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 514
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 519
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 520
    .local v0, pauseIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.HOME_PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

	#huaqi start <<
	
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mGesEnabled:Z

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGesEnabled:Z

    if-eqz v0, :zxf_cond_0

    const/4 v0, 0x1

    :zxf_goto_0
    invoke-static {v0}, Lcom/eminent/utility/Utility;->setGestureEnabled(I)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGesHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mGesPolling:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mProximitySensorManager:Lcom/eminent/utility/ProximitySensorManager;

    invoke-virtual {v0, v1}, Lcom/eminent/utility/ProximitySensorManager;->disable(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGesPsensorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :zxf_end

    :zxf_cond_0
    move v0, v1
    goto :zxf_goto_0
	
	:zxf_end
	
	.line 522
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 921
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 923
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v1

    .line 927
    :cond_1
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_2

    .line 928
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 932
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v3

    if-nez v3, :cond_3

    .line 933
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 934
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    .line 935
    .local v0, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v0, :cond_3

    .line 936
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v3, v4, :cond_0

    .line 947
    .end local v0           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    :cond_3
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eq v3, v2, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    if-eq v3, v2, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    .line 957
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-eqz v1, :cond_4

    .line 958
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)V

    .line 959
    :cond_4
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    move v1, v2

    .line 960
    goto :goto_0

    .line 940
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_3

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 406
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-super {p0}, Landroid/app/ActivityGroup;->onRestart()V

    .line 408
    return-void
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f070044

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 526
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume, Launcher: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 528
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 529
    const-string v0, "com.android.launcher2.prefs"

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 531
    .local v10, prefs:Landroid/content/SharedPreferences;
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v0, :cond_1

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0, v12}, Lcom/android/launcher2/LauncherModel;->startLoader(Z)V

    .line 534
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 535
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 537
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 539
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, action:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 541
    const-string v0, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v0, :cond_8

    .line 544
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 545
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 551
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 555
    :cond_3
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 556
    .local v11, resumeIntent:Landroid/content/Intent;
    const-string v0, "com.sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->initClingCheck()V

    .line 559
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cling.workspace.dismissed"

    invoke-interface {v10, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 562
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 563
    .local v8, clingView:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getWorkspaceClingVisible()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-boolean v0, v0, Lcom/android/launcher2/HomeFragment;->mHomeKeyPress:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 569
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v0

    if-nez v0, :cond_4

    .line 570
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;

    .line 571
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->firstShowCling()V

    .line 576
    .end local v8           #clingView:Landroid/view/View;
    :cond_5
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageManager;->getHasPostWork()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 577
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageReceiver;->checkAllContextualPage()V

    .line 578
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/ContextualPageManager;->setHasPostWork(Z)V

    .line 581
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iput-boolean v4, v0, Lcom/android/launcher2/HomeFragment;->mHomeKeyPress:Z

    .line 582
    sput-boolean v4, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 583
    const/4 v6, 0x0

    .line 585
    .local v6, accessibilityEnabled:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    .line 586
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACCESSIBILITY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_1
    if-ne v6, v12, :cond_9

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_9

    .line 592
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 597
    :cond_7
    :goto_2
		#huaqi start <<
	const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ges_p_sensor"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, value:I
    if-ne v0, v1, :zxf_cond_1
	
	sget-boolean v1, Lcom/android/launcher2/Launcher;->HQ_PSENSOR_SUPPORT :Z

    if-eqz v1, :zxf_cond_3

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mProximitySensorManager:Lcom/eminent/utility/ProximitySensorManager;

    invoke-virtual {v3}, Lcom/eminent/utility/ProximitySensorManager;->enable()V
	
	:zxf_cond_3
	
	sget-boolean v1, Lcom/android/launcher2/Launcher;->HQ_GESENSOR_SUPPORT :Z

    if-eqz v1, :zxf_goto_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mGesHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGesPolling:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mGesEnabled:Z

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mGesHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGesPolling:Ljava/lang/Runnable;

    const-wide/16 v5, 0x96

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mGesEnabled:Z

    if-eqz v3, :zxf_cond_0

    :zxf_goto_0
    invoke-static {v1}, Lcom/eminent/utility/Utility;->setGestureEnabled(I)V

    :zxf_goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ges_p_sensor"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGesPsensorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

	goto :zxf_end

    :zxf_cond_0
    move v1, v2

    goto :zxf_goto_0

    :zxf_cond_1
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mProximitySensorManager:Lcom/eminent/utility/ProximitySensorManager;

    invoke-virtual {v3, v2}, Lcom/eminent/utility/ProximitySensorManager;->disable(Z)V

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mGesEnabled:Z

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mGesEnabled:Z

    if-eqz v3, :zxf_cond_2

    :zxf_goto_2
    invoke-static {v1}, Lcom/eminent/utility/Utility;->setGestureEnabled(I)V

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGesHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mGesPolling:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :zxf_goto_1

    :zxf_cond_2
    move v1, v2

    goto :zxf_goto_2
	
	:zxf_end
	#huaqi end >>
	
    return-void

    .line 546
    .end local v6           #accessibilityEnabled:I
    .end local v11           #resumeIntent:Landroid/content/Intent;
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    goto/16 :goto_0

    .line 587
    .restart local v6       #accessibilityEnabled:I
    .restart local v11       #resumeIntent:Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 588
    .local v9, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error finding setting, default accessibility to not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 593
    .end local v9           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_9
    if-nez v6, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_7

    .line 594
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 595
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    goto :goto_2
.end method

.method public onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V
    .locals 4
    .parameter "port"
    .parameter "land"
    .parameter "cbPort"
    .parameter "cbLand"
    .parameter "config"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2553
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2554
    iget v0, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2555
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2556
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2557
    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 2558
    invoke-virtual {p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2569
    :cond_0
    :goto_0
    return-void

    .line 2561
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2562
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2563
    if-eqz p5, :cond_0

    if-eqz p3, :cond_0

    .line 2564
    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onSaveClingCheckState()V
    .locals 19

    .prologue
    .line 2414
    const-string v17, "com.android.launcher2.prefs"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 2415
    .local v13, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 2416
    .local v11, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .local v5, cb1:Landroid/widget/CheckBox;
    const/4 v6, 0x0

    .local v6, cb2:Landroid/widget/CheckBox;
    const/4 v7, 0x0

    .local v7, cb3:Landroid/widget/CheckBox;
    const/4 v4, 0x0

    .local v4, appsCb:Landroid/widget/CheckBox;
    const/4 v14, 0x0

    .line 2418
    .local v14, widgetCb:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v12

    .line 2419
    .local v12, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v17

    const v18, 0x7f070044

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 2420
    .local v16, workspaceClingView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v17

    const v18, 0x7f070075

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2421
    .local v3, allAppsClingView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v17

    const v18, 0x7f070076

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 2422
    .local v15, widgetClingView:Landroid/view/View;
    const v17, 0x7f070097

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2423
    .local v8, clingPage1:Landroid/view/View;
    const v17, 0x7f070098

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2424
    .local v9, clingPage2:Landroid/view/View;
    const v17, 0x7f070099

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 2426
    .local v10, clingPage3:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2427
    const v17, 0x7f07009c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #cb1:Landroid/widget/CheckBox;
    check-cast v5, Landroid/widget/CheckBox;

    .line 2432
    .restart local v5       #cb1:Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2433
    const v17, 0x7f0700a2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #cb2:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .line 2438
    .restart local v6       #cb2:Landroid/widget/CheckBox;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2439
    const v17, 0x7f0700a7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #cb3:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .line 2445
    .restart local v7       #cb3:Landroid/widget/CheckBox;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 2446
    const v17, 0x7f070093

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #widgetCb:Landroid/widget/CheckBox;
    check-cast v14, Landroid/widget/CheckBox;

    .line 2451
    .restart local v14       #widgetCb:Landroid/widget/CheckBox;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 2452
    const v17, 0x7f070016

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #appsCb:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .line 2457
    .restart local v4       #appsCb:Landroid/widget/CheckBox;
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2460
    const-string v17, "cling.allapps.checked"

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2461
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2464
    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_6

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2468
    const-string v17, "cling.widget.checked"

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2469
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2473
    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2476
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_d

    .line 2478
    const-string v17, "cling.workspace.page1.checked"

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2479
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2490
    :cond_7
    :goto_5
    return-void

    .line 2428
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2429
    const v17, 0x7f07009f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #cb1:Landroid/widget/CheckBox;
    check-cast v5, Landroid/widget/CheckBox;

    .restart local v5       #cb1:Landroid/widget/CheckBox;
    goto/16 :goto_0

    .line 2434
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2435
    const v17, 0x7f0700a4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #cb2:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .restart local v6       #cb2:Landroid/widget/CheckBox;
    goto/16 :goto_1

    .line 2440
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2441
    const v17, 0x7f0700a9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #cb3:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .restart local v7       #cb3:Landroid/widget/CheckBox;
    goto/16 :goto_2

    .line 2447
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 2448
    const v17, 0x7f070096

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #widgetCb:Landroid/widget/CheckBox;
    check-cast v14, Landroid/widget/CheckBox;

    .restart local v14       #widgetCb:Landroid/widget/CheckBox;
    goto/16 :goto_3

    .line 2453
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2454
    const v17, 0x7f070019

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #appsCb:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #appsCb:Landroid/widget/CheckBox;
    goto/16 :goto_4

    .line 2480
    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_e

    .line 2482
    const-string v17, "cling.workspace.page2.checked"

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2483
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5

    .line 2484
    :cond_e
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_7

    .line 2486
    const-string v17, "cling.workspace.page3.checked"

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2487
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 2776
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2777
    const-string v0, "extra_home_fragment_hidden"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->isHidden()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2779
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isShowCling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2780
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSaveClingCheckState()V

    .line 2782
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1269
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1271
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    .line 1272
    return v2
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 400
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 402
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 624
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 627
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 628
    .local v0, priority:I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    if-eqz v1, :cond_0

    .line 629
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 632
    :cond_0
    sget-object v1, Lcom/android/launcher2/AvailableAppWidgetListProvider;->CACHED_PREVIEW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 633
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 2880
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory. Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    sparse-switch p1, :sswitch_data_0

    .line 2906
    :goto_0
    :sswitch_0
    return-void

    .line 2885
    :sswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->releaseShadows()V

    goto :goto_0

    .line 2892
    :sswitch_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->releaseShadows()V

    goto :goto_0

    .line 2881
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x3c -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    const-string v1, "doom-lockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged hasFocus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "update_status_bar_black"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "update_status_bar_transparent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 714
    return-void
.end method

.method public restorePopupMenu()Z
    .locals 4

    .prologue
    .line 604
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v2, :cond_2

    .line 605
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-nez v2, :cond_0

    .line 606
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_1

    .line 607
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 609
    .local v0, downloadPopupButton:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 616
    .end local v0           #downloadPopupButton:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 617
    const/4 v2, 0x1

    .line 619
    :goto_1
    return v2

    .line 611
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f07006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 613
    .local v1, popupButton:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    goto :goto_0

    .line 619
    .end local v1           #popupButton:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setContextualPageReceiver(Lcom/android/launcher2/ContextualPageReceiver;)V
    .locals 0
    .parameter "cpReceiver"

    .prologue
    .line 2980
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    .line 2981
    return-void
.end method

.method public setDismissCling_Key(Z)V
    .locals 0
    .parameter "keyevnet"

    .prologue
    .line 2118
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mClingEnd:Z

    .line 2119
    return-void
.end method

.method public setEnableMenuButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1590
    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2587
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2588
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 2591
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowEmptyPageMessagePref(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 2875
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    .line 2876
    return-void
.end method

.method public setTextToSpeechLanguage()V
    .locals 2

    .prologue
    .line 2851
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 2852
    .local v0, ttsLocale:Ljava/util/Locale;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setTextToSpeechLanguage(Ljava/util/Locale;)V

    .line 2853
    return-void
.end method

.method public setTextToSpeechLanguage(Ljava/util/Locale;)V
    .locals 6
    .parameter "ttsLocale"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 2856
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 2858
    .local v0, result:I
    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_2

    .line 2861
    :cond_0
    const-string v2, "Launcher"

    const-string v3, "Language is not available defaulting to US english."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v1

    .line 2863
    .local v1, result2:I
    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_2

    .line 2865
    :cond_1
    const-string v2, "Launcher"

    const-string v3, "Could not initialize TextToSpeech US language"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    .end local v1           #result2:I
    :cond_2
    return-void
.end method

.method public showAllApps()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 746
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 804
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 750
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 751
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/HomeFragment;->closeQuickViewWorkspace(Z)V

    .line 752
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 755
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 756
    const v7, 0x7f070044

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 757
    .local v1, clingView:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 758
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 761
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->onShowAllApps()V

    .line 763
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v7, :cond_2

    .line 764
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 767
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v0, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    .line 769
    .local v5, provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    invoke-interface {v5, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectShowAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 772
    .end local v5           #provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v7, v8, :cond_4

    .line 773
    const v7, 0x7f050005

    invoke-static {p0, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 774
    .local v2, darkenAnimator:Landroid/animation/Animator;
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 775
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    .end local v2           #darkenAnimator:Landroid/animation/Animator;
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 779
    .local v4, menuView:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 781
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 782
    .local v6, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 783
    sget-wide v7, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 784
    new-instance v7, Lcom/android/launcher2/Launcher$3;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 800
    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    .line 801
    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 802
    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    .line 803
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public showAllAppsCling([I)V
    .locals 7
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 2249
    const-string v0, "com.android.launcher2.prefs"

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2250
    .local v6, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->initClingCheck()V

    .line 2251
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cling.allapps.dismissed"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2255
    if-nez p1, :cond_0

    .line 2256
    const/4 v0, 0x2

    new-array p1, v0, [I

    .end local p1
    fill-array-data p1, :array_0

    .line 2259
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    const v2, 0x7f070075

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;

    .line 2261
    :cond_1
    return-void

    .line 2256
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;
    .locals 12
    .parameter "fragment"
    .parameter "clingViewId"
    .parameter "positionData"
    .parameter "animate"
    .parameter "delay"

    .prologue
    .line 1979
    const/4 v2, 0x0

    .line 1980
    .local v2, clingView:Lcom/android/launcher2/Cling;
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    if-nez v9, :cond_c

    .line 1981
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1982
    .local v4, view:Landroid/view/View;
    instance-of v9, v4, Landroid/view/ViewStub;

    if-eqz v9, :cond_d

    .line 1983
    check-cast v4, Landroid/view/ViewStub;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .end local v2           #clingView:Lcom/android/launcher2/Cling;
    check-cast v2, Lcom/android/launcher2/Cling;

    .line 1988
    .restart local v2       #clingView:Lcom/android/launcher2/Cling;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Cling;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    .line 1989
    invoke-virtual {v2, p1, p3}, Lcom/android/launcher2/Cling;->init(Landroid/app/Fragment;[I)V

    .line 1990
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Cling;->setVisibility(I)V

    .line 1991
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lcom/android/launcher2/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1992
    if-nez p4, :cond_e

    .line 1993
    const/high16 v9, 0x3f80

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    .line 2001
    :cond_1
    :goto_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mWorksapceClingisShow:Z

    .line 2003
    const/4 v6, 0x0

    .local v6, workCb1:Landroid/widget/CheckBox;
    const/4 v7, 0x0

    .local v7, workCb2:Landroid/widget/CheckBox;
    const/4 v8, 0x0

    .local v8, workCb3:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    .local v1, appsCb:Landroid/widget/CheckBox;
    const/4 v5, 0x0

    .line 2005
    .local v5, widgetCb:Landroid/widget/CheckBox;
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 2006
    const v9, 0x7f07009c

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #workCb1:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .line 2011
    .restart local v6       #workCb1:Landroid/widget/CheckBox;
    :cond_2
    :goto_2
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 2012
    const v9, 0x7f0700a2

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #workCb2:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .line 2017
    .restart local v7       #workCb2:Landroid/widget/CheckBox;
    :cond_3
    :goto_3
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    .line 2018
    const v9, 0x7f0700a7

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #workCb3:Landroid/widget/CheckBox;
    check-cast v8, Landroid/widget/CheckBox;

    .line 2023
    .restart local v8       #workCb3:Landroid/widget/CheckBox;
    :cond_4
    :goto_4
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 2024
    const v9, 0x7f070016

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #appsCb:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 2029
    .restart local v1       #appsCb:Landroid/widget/CheckBox;
    :cond_5
    :goto_5
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 2030
    const v9, 0x7f070093

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #widgetCb:Landroid/widget/CheckBox;
    check-cast v5, Landroid/widget/CheckBox;

    .line 2035
    .restart local v5       #widgetCb:Landroid/widget/CheckBox;
    :cond_6
    :goto_6
    const-string v9, "com.android.launcher2.prefs"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2036
    .local v3, prefs:Landroid/content/SharedPreferences;
    if-eqz v6, :cond_7

    .line 2037
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2038
    const-string v9, "cling.workspace.page1.checked"

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2040
    :cond_7
    if-eqz v7, :cond_8

    .line 2041
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2042
    const-string v9, "cling.workspace.page2.checked"

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2044
    :cond_8
    if-eqz v8, :cond_9

    .line 2045
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2046
    const-string v9, "cling.workspace.page3.checked"

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2048
    :cond_9
    if-eqz v1, :cond_a

    .line 2049
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2050
    const-string v9, "cling.allapps.checked"

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2052
    :cond_a
    if-eqz v5, :cond_b

    .line 2053
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2054
    const-string v9, "cling.widget.checked"

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2057
    :cond_b
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->onConfigurationChangedCling(Z)V

    .line 2059
    .end local v1           #appsCb:Landroid/widget/CheckBox;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #widgetCb:Landroid/widget/CheckBox;
    .end local v6           #workCb1:Landroid/widget/CheckBox;
    .end local v7           #workCb2:Landroid/widget/CheckBox;
    .end local v8           #workCb3:Landroid/widget/CheckBox;
    :cond_c
    return-object v2

    .line 1984
    .restart local v4       #view:Landroid/view/View;
    :cond_d
    instance-of v9, v4, Lcom/android/launcher2/Cling;

    if-eqz v9, :cond_0

    move-object v2, v4

    .line 1985
    check-cast v2, Lcom/android/launcher2/Cling;

    goto/16 :goto_0

    .line 1995
    .end local v4           #view:Landroid/view/View;
    :cond_e
    invoke-virtual {v2}, Lcom/android/launcher2/Cling;->buildLayer()V

    .line 1996
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    .line 1997
    invoke-virtual {v2}, Lcom/android/launcher2/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v10, 0x226

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    move/from16 v0, p5

    int-to-long v10, v0

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    .line 2007
    .restart local v1       #appsCb:Landroid/widget/CheckBox;
    .restart local v5       #widgetCb:Landroid/widget/CheckBox;
    .restart local v6       #workCb1:Landroid/widget/CheckBox;
    .restart local v7       #workCb2:Landroid/widget/CheckBox;
    .restart local v8       #workCb3:Landroid/widget/CheckBox;
    :cond_f
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 2008
    const v9, 0x7f07009f

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #workCb1:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .restart local v6       #workCb1:Landroid/widget/CheckBox;
    goto/16 :goto_2

    .line 2013
    :cond_10
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 2014
    const v9, 0x7f0700a4

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #workCb2:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .restart local v7       #workCb2:Landroid/widget/CheckBox;
    goto/16 :goto_3

    .line 2019
    :cond_11
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 2020
    const v9, 0x7f0700a9

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #workCb3:Landroid/widget/CheckBox;
    check-cast v8, Landroid/widget/CheckBox;

    .restart local v8       #workCb3:Landroid/widget/CheckBox;
    goto/16 :goto_4

    .line 2025
    :cond_12
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 2026
    const v9, 0x7f070019

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #appsCb:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .restart local v1       #appsCb:Landroid/widget/CheckBox;
    goto/16 :goto_5

    .line 2031
    :cond_13
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 2032
    const v9, 0x7f070096

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #widgetCb:Landroid/widget/CheckBox;
    check-cast v5, Landroid/widget/CheckBox;

    .restart local v5       #widgetCb:Landroid/widget/CheckBox;
    goto/16 :goto_6
.end method

.method protected showMotionDialog()Z
    .locals 1

    .prologue
    .line 2806
    const/4 v0, 0x0

    return v0
.end method

.method public showWidgetCling([I)V
    .locals 7
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 2264
    const-string v0, "com.android.launcher2.prefs"

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2265
    .local v6, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->initClingCheck()V

    .line 2266
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cling.widget.dismissed"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2270
    if-nez p1, :cond_0

    .line 2271
    const/4 v0, 0x2

    new-array p1, v0, [I

    .end local p1
    fill-array-data p1, :array_0

    .line 2274
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    const v2, 0x7f070076

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;

    .line 2276
    :cond_1
    return-void

    .line 2271
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method startActivitySafely(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const v3, 0x7f0e0003

    const/4 v1, 0x0

    .line 1812
    const/high16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1814
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1815
    const/4 v1, 0x1

    .line 1822
    :goto_0
    return v1

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1819
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1820
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .parameter "intent"
    .parameter "tag"

    .prologue
    const v3, 0x7f0e0003

    const/4 v1, 0x0

    .line 1794
    const/high16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1796
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1797
    const/4 v1, 0x1

    .line 1808
    :goto_0
    return v1

    .line 1798
    :catch_0
    move-exception v0

    .line 1799
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1800
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1801
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1802
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1803
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1284
    if-nez p1, :cond_0

    .line 1286
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1288
    :cond_0
    if-nez p3, :cond_1

    .line 1289
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1290
    .restart local p3
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1295
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1297
    return-void
.end method
