.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/HomeFolderItem$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Folder$FolderNameChangeListener;,
        Lcom/android/launcher2/Folder$FolderVertScroller;,
        Lcom/android/launcher2/Folder$FolderManager;
    }
.end annotation


# static fields
.field public static final FOLDER_TCHEVHDL_CLOSED:I = 0x2

.field public static final FOLDER_TCHEVHDL_EDIT_CANCELLED:I = 0x1

.field public static final FOLDER_TCHEVHDL_UNPROCESSED:I = 0x3

.field static final ON_EXIT_CLOSE_DELAY:I = 0x320

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sHintText:Ljava/lang/String;


# instance fields
.field folderLocation:[I

.field iconLocation:[I

.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

.field protected mContent:Lcom/android/launcher2/CellLayoutNoGap;

.field mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

.field mDragState:Lcom/android/launcher2/DragState;

.field mExpandDuration:I

.field mFixedWidth:I

.field mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

.field private mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

.field mFolderName:Lcom/android/launcher2/FolderEditText;

.field private mFolderNameChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/Folder$FolderNameChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderNameHeight:I

.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private mIgnoreShrinkingFolder:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/android/launcher2/FolderItem;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMaxCountX:I

.field private mMaxFolderVisibleCols:I

.field private mMaxFolderVisibleRows:I

.field mMenu:Lcom/android/launcher2/MenuAppsGrid;

.field final mOnExitAlarm:Lcom/android/launcher2/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field mOtherParent:Landroid/view/ViewGroup;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScrollView:Landroid/view/View;

.field private final mShowHotseatTitle:Z

.field mSuppressOnAdd:Z

.field private mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 91
    new-instance v1, Lcom/android/launcher2/Alarm;

    invoke-direct {v1}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    .line 97
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 102
    iput v3, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    .line 103
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    .line 114
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mPaint:Landroid/graphics/Paint;

    .line 247
    new-instance v1, Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$FolderVertScroller;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    .line 338
    new-instance v1, Lcom/android/launcher2/Folder$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$4;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 727
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    .line 728
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    .line 903
    new-instance v1, Lcom/android/launcher2/Folder$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$7;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 1038
    new-instance v1, Lcom/android/launcher2/Folder$8;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$8;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090006

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mShowHotseatTitle:Z

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    .line 123
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    .line 125
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 131
    const v1, 0x7f0e0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    return-void

    .line 118
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const v1, 0x7f090005

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/Folder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Folder;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/Folder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/Folder;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Folder;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Folder;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishSetup()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->showAddFolderItem()V

    return-void
.end method

.method private animateOpen()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 787
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setVisibility(I)V

    .line 788
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 789
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->prepareForOpenAnimate()V

    .line 791
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->animateOpen()V

    .line 793
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/Folder$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$5;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 805
    return-void
.end method

.method private finishSetup()V
    .locals 6

    .prologue
    const/high16 v5, 0x4000

    .line 321
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    .line 323
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v1

    .line 324
    .local v1, maxHtAllowed:I
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredWidthForColumns(I)I

    move-result v2

    .line 325
    .local v2, maxWdAllowed:I
    const v3, 0x7f07008f

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    .line 326
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 328
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 330
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;
    .locals 3
    .parameter "context"

    .prologue
    .line 708
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method private getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 4
    .parameter "item"

    .prologue
    .line 1174
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1176
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 1177
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1182
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_2
    return-object v2

    .line 1175
    .restart local v0       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1174
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1182
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private notifyFolderNameChangeListeners(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1228
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder$FolderNameChangeListener;

    .line 1229
    .local v1, listener:Lcom/android/launcher2/Folder$FolderNameChangeListener;
    invoke-interface {v1, p1}, Lcom/android/launcher2/Folder$FolderNameChangeListener;->onFolderNameChange(Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    .end local v1           #listener:Lcom/android/launcher2/Folder$FolderNameChangeListener;
    :cond_0
    return-void
.end method

.method private onCloseComplete()V
    .locals 2

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1139
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearFocus()V

    .line 1143
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1145
    return-void
.end method

.method private openFolderWithoutAnimation()V
    .locals 0

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 783
    return-void
.end method

.method private prepareForOpenAnimate()V
    .locals 8

    .prologue
    const v7, 0x3f4ccccd

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 730
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 732
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/DragLayer$LayoutParams;

    move-result-object v0

    .line 734
    .local v0, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 735
    iget-object v2, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v3, v2, v6

    iget v4, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    add-int/2addr v3, v4

    aput v3, v2, v6

    .line 736
    iget-object v2, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v3, v2, v5

    iget v4, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    add-int/2addr v3, v4

    aput v3, v2, v5

    .line 739
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/MenuTabHost;

    if-eqz v2, :cond_0

    .line 741
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 742
    .local v1, otherParentLoc:[I
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 743
    iget-object v2, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v3, v1, v5

    aput v3, v2, v5

    .line 746
    .end local v1           #otherParentLoc:[I
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v3, v3, v6

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->setPivotX(F)V

    .line 747
    iget-object v2, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v3, v3, v5

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->setPivotY(F)V

    .line 749
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->setScaleX(F)V

    .line 750
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->setScaleY(F)V

    .line 751
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->setAlpha(F)V

    .line 752
    return-void
.end method

.method private scrollIfNeeded(Landroid/view/DragEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 991
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-gt v8, v9, :cond_1

    :cond_0
    move v6, v7

    .line 1010
    :goto_0
    return v6

    .line 994
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    .line 995
    .local v5, y:F
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v1

    .line 996
    .local v1, cellHt:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v8

    div-int/lit8 v9, v1, 0x3

    add-int v4, v8, v9

    .line 997
    .local v4, topScrollCutOff:I
    int-to-float v8, v4

    cmpg-float v8, v5, v8

    if-gez v8, :cond_2

    .line 998
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollUp()V

    goto :goto_0

    .line 1001
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getMeasuredHeight()I

    move-result v2

    .line 1002
    .local v2, mh:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v3

    .line 1004
    .local v3, pb:I
    sub-int v8, v2, v3

    div-int/lit8 v9, v1, 0x3

    sub-int v0, v8, v9

    .line 1005
    .local v0, bottomScrollCutOff:I
    int-to-float v8, v0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    .line 1006
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollDown()V

    goto :goto_0

    .line 1009
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    move v6, v7

    .line 1010
    goto :goto_0
.end method

.method private setupContentDimensions(I)V
    .locals 7
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 1056
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    .line 1057
    .local v0, countX:I
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v1

    .line 1058
    .local v1, countY:I
    iget v6, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    if-lez v6, :cond_0

    .line 1059
    iget v0, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    .line 1061
    :cond_0
    const/4 v2, 0x0

    .line 1063
    .local v2, done:Z
    :goto_0
    if-nez v2, :cond_7

    .line 1064
    move v3, v0

    .line 1065
    .local v3, oldCountX:I
    move v4, v1

    .line 1066
    .local v4, oldCountY:I
    mul-int v6, v0, v1

    if-ge v6, p1, :cond_3

    .line 1068
    iget v6, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    if-gtz v6, :cond_2

    if-gt v0, v1, :cond_2

    iget v6, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    if-ge v0, v6, :cond_2

    .line 1069
    add-int/lit8 v0, v0, 0x1

    .line 1073
    :goto_1
    if-nez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 1079
    :cond_1
    :goto_2
    if-ne v0, v3, :cond_6

    if-ne v1, v4, :cond_6

    const/4 v2, 0x1

    .line 1080
    :goto_3
    goto :goto_0

    .line 1071
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1074
    :cond_3
    add-int/lit8 v6, v1, -0x1

    mul-int/2addr v6, v0

    if-lt v6, p1, :cond_5

    iget v6, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    if-gtz v6, :cond_4

    if-lt v1, v0, :cond_5

    .line 1075
    :cond_4
    add-int/lit8 v6, v1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 1076
    :cond_5
    iget v6, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    if-gtz v6, :cond_1

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v6, v1

    if-lt v6, p1, :cond_1

    .line 1077
    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_6
    move v2, v5

    .line 1079
    goto :goto_3

    .line 1081
    .end local v3           #oldCountX:I
    .end local v4           #oldCountY:I
    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 1082
    return-void
.end method

.method private setupContentForNumItems(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 1117
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/DragLayer;

    if-nez v0, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    goto :goto_0
.end method

.method private showAddFolderItem()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 613
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 615
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v8, 0x7f070030

    invoke-virtual {v7, v8}, Lcom/android/launcher2/CellLayoutNoGap;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 616
    .local v1, button:Landroid/view/View;
    const/4 v0, 0x0

    .line 620
    .local v0, addButtonExists:Z
    if-nez v1, :cond_1

    .line 621
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03000d

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7, v8, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 622
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    new-instance v7, Lcom/android/launcher2/FolderAddItemKeyEventListener;

    invoke-direct {v7}, Lcom/android/launcher2/FolderAddItemKeyEventListener;-><init>()V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 632
    :goto_0
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 633
    .local v4, pixel:[I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v2

    .line 634
    .local v2, cell:I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v7

    rem-int v5, v2, v7

    .line 635
    .local v5, x:I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v7

    div-int v7, v2, v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v6, v7

    .line 636
    .local v6, y:I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7, v5, v6, v4}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPoint(II[I)V

    .line 637
    new-instance v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v3, v11, v11, v10, v10}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 638
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    aget v7, v4, v12

    iput v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 639
    aget v7, v4, v10

    iput v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 640
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getCellWidth()I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 641
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 645
    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->requestLayout()V

    .line 652
    .end local v0           #addButtonExists:Z
    .end local v1           #button:Landroid/view/View;
    .end local v2           #cell:I
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v4           #pixel:[I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_0
    return-void

    .line 625
    .restart local v0       #addButtonExists:Z
    .restart local v1       #button:Landroid/view/View;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 648
    .restart local v2       #cell:I
    .restart local v3       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v4       #pixel:[I
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7, v1, v3}, Lcom/android/launcher2/CellLayoutNoGap;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private updateLayout()V
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 1268
    :cond_0
    return-void
.end method

.method private updateTextViewFocus()V
    .locals 4

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    .line 1151
    .local v1, lastChild:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 1152
    .local v0, firstChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    .line 1153
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusDownId(I)V

    .line 1155
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusRightId(I)V

    .line 1156
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusLeftId(I)V

    .line 1157
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusUpId(I)V

    .line 1159
    :cond_0
    return-void
.end method


# virtual methods
.method public addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    return-void
.end method

.method beginHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iget v1, v1, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/FolderAnimator;->bounceItemInIconAt(Lcom/android/launcher2/BaseItem;I)V

    .line 1015
    return-void
.end method

.method bind(Lcom/android/launcher2/FolderItem;)V
    .locals 9
    .parameter "info"

    .prologue
    .line 655
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    .line 656
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    .line 657
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v6, overflow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/BaseItem;>;"
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    .line 660
    .local v5, numContentItems:I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_0

    .line 661
    add-int/lit8 v5, v5, 0x1

    .line 663
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 665
    const/4 v1, 0x0

    .line 666
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 667
    invoke-interface {p1, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 668
    .local v0, child:Lcom/android/launcher2/BaseItem;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 669
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 671
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 674
    .end local v0           #child:Lcom/android/launcher2/BaseItem;
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 678
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 679
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 684
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    .line 685
    .local v4, item:Lcom/android/launcher2/BaseItem;
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7, v4}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 687
    instance-of v7, v4, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_4

    .line 688
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    .line 692
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 693
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7, p0}, Lcom/android/launcher2/FolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 695
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v8}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 696
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->showAddFolderItem()V

    .line 697
    return-void
.end method

.method public cancelCloseFolderAlarm()V
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 1053
    return-void
.end method

.method cancelHotseatSwapAnimation()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancelBouncingItem()V

    .line 1021
    return-void
.end method

.method public centerAboutIcon()V
    .locals 12

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1088
    .local v7, realParent:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    .line 1089
    .local v2, icon:Landroid/view/View;
    const/4 v10, 0x2

    new-array v3, v10, [I

    .line 1090
    .local v3, iconLocation:[I
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/DragLayer$LayoutParams;

    move-result-object v5

    .line 1094
    .local v5, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredWidth()I

    move-result v11

    add-int v9, v10, v11

    .line 1095
    .local v9, width:I
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeight()I

    move-result v0

    .line 1096
    .local v0, contentHt:I
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v11, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    invoke-virtual {v10, v11}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v6

    .line 1097
    .local v6, maxHtAllowed:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    add-int v1, v10, v11

    .line 1100
    .local v1, height:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    div-int/lit8 v4, v10, 0x2

    .line 1101
    .local v4, left:I
    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v8, v10, v11

    .line 1103
    .local v8, top:I
    add-int v10, v8, v1

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBottom()I

    move-result v11

    if-le v10, v11, :cond_0

    .line 1104
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBottom()I

    move-result v10

    sub-int v8, v10, v1

    .line 1107
    :cond_0
    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1108
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1109
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1110
    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1111
    iput v4, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 1112
    iput v8, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 1113
    return-void
.end method

.method public close(Z)V
    .locals 7
    .parameter "commitEdit"

    .prologue
    const/high16 v5, 0x3f80

    const v4, 0x3f4ccccd

    .line 808
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 849
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 810
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->setVisibility(I)V

    .line 812
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 817
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 819
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderAnimator;->animateClose(Lcom/android/launcher2/DragState;)V

    .line 822
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 823
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/Folder$6;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Folder$6;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 840
    iget-boolean v2, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    if-nez v2, :cond_2

    .line 841
    const-wide/16 v0, 0x64

    .line 842
    .local v0, kExtraDurationOnClose:J
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v3, v3

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 848
    .end local v0           #kExtraDurationOnClose:J
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v2}, Lcom/android/launcher2/Folder$FolderManager;->onFolderClose()V

    goto :goto_0
.end method

.method public completeDragExit()V
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 1047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 1048
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->close(Z)V

    .line 1049
    return-void
.end method

.method protected createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 900
    const/4 v0, 0x1

    return v0
.end method

.method public disableChildBadges()V
    .locals 3

    .prologue
    .line 1213
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1214
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1215
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->hideBadge()V

    .line 1213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    :cond_0
    return-void
.end method

.method public dismissEditingName(Z)V
    .locals 3
    .parameter "commitChange"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 476
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 1025
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1026
    .local v0, r:Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1032
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 1034
    :cond_1
    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "aCanvas"

    .prologue
    .line 986
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 987
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 988
    return-void
.end method

.method public doneEditingFolderName(Z)V
    .locals 9
    .parameter "commit"

    .prologue
    const/4 v8, 0x0

    .line 479
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v7, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/Folder;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 482
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v8}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 483
    if-eqz p1, :cond_2

    .line 487
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, newFolderName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 489
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lcom/android/launcher2/FolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, v3}, Lcom/android/launcher2/Folder;->notifyFolderNameChangeListeners(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 495
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 496
    .local v5, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const-string v6, "Folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, folder:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 505
    .end local v0           #folder:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 507
    .end local v5           #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 508
    .local v4, tag:Ljava/lang/Object;
    iget-boolean v6, p0, Lcom/android/launcher2/Folder;->mShowHotseatTitle:Z

    if-nez v6, :cond_2

    instance-of v6, v4, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v6, :cond_2

    .line 509
    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/android/launcher2/HomeFolderItem;->getContainer()J

    move-result-wide v1

    .line 510
    .local v1, folderContainer:J
    const-wide/16 v6, -0x65

    cmp-long v6, v1, v6

    if-nez v6, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v6, v8}, Lcom/android/launcher2/FolderIconView;->setTextVisible(Z)V

    .line 515
    .end local v1           #folderContainer:J
    .end local v3           #newFolderName:Ljava/lang/String;
    :cond_2
    iput-boolean v8, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 516
    return-void
.end method

.method public enableChildBadges()V
    .locals 3

    .prologue
    .line 1206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1207
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1208
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 1206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1210
    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    :cond_0
    return-void
.end method

.method finishHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "swapWith"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderAnimator;->finishBouncingItem(Lcom/android/launcher2/BaseItem;)V

    .line 1018
    return-void
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method getCustomLayoutParams()Lcom/android/launcher2/DragLayer$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    check-cast v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 720
    .restart local v0       #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    :goto_0
    return-object v0

    .line 716
    :cond_0
    new-instance v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .end local v0           #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-direct {v0, v2, v2}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .line 717
    .restart local v0       #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 718
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "v"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 448
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getEditTextRegion()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    return-object v0
.end method

.method public getFolderIconOrigin([I)V
    .locals 6
    .parameter "xy"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1271
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1272
    .local v0, iconLocation:[I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1274
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/DragLayer$LayoutParams;

    move-result-object v1

    .line 1276
    .local v1, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    aget v2, v0, v4

    iget v3, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, p1, v4

    .line 1277
    aget v2, v0, v5

    iget v3, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aput v2, p1, v5

    .line 1278
    return-void
.end method

.method public getIconId()J
    .locals 4

    .prologue
    .line 155
    const-wide/16 v0, -0x1

    .line 156
    .local v0, id:J
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v3}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-wide v0, v3, Lcom/android/launcher2/BaseItem;->mId:J

    .line 162
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-wide v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getInfo()Lcom/android/launcher2/FolderItem;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemViews()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1134
    new-instance v0, Lcom/android/launcher2/ChildIterable;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/ChildIterable;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public handleOrientationChange()V
    .locals 14

    .prologue
    const v13, 0x7f0f0019

    .line 1281
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1282
    .local v10, res:Landroid/content/res/Resources;
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v12, 0x7f0c0020

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/CellLayoutNoGap;->setCellWidth(I)V

    .line 1283
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v12, 0x7f0c0021

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/CellLayoutNoGap;->setCellHeight(I)V

    .line 1284
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v12, 0x7f0c0070

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/CellLayoutNoGap;->setGapX(I)V

    .line 1285
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v12, 0x7f0c0071

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/CellLayoutNoGap;->setGapY(I)V

    .line 1286
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutNoGap;->refreshCellDimension()V

    .line 1287
    const v11, 0x7f0a0039

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    .line 1289
    const v11, 0x7f0c0072

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1290
    .local v7, paddingL:I
    const/4 v9, 0x0

    .line 1291
    .local v9, paddingT:I
    const v11, 0x7f0c0073

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1292
    .local v8, paddingR:I
    const v11, 0x7f0c0074

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1293
    .local v6, paddingB:I
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v11, v7, v9, v8, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setPadding(IIII)V

    .line 1295
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1296
    .local v4, context:Landroid/content/Context;
    sget-object v11, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v4, v13, v11}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1298
    .local v0, aivTextView:Landroid/content/res/TypedArray;
    sget-object v11, Landroid/R$styleable;->View:[I

    invoke-virtual {v4, v13, v11}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1301
    .local v1, aivView:Landroid/content/res/TypedArray;
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 1303
    .local v3, clChildren:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 1304
    invoke-virtual {v3, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1305
    .local v2, child:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 1306
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #child:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 1303
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1309
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateLayout()V

    .line 1312
    new-instance v11, Lcom/android/launcher2/Folder$9;

    invoke-direct {v11, p0}, Lcom/android/launcher2/Folder$9;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->post(Ljava/lang/Runnable;)Z

    .line 1323
    return-void
.end method

.method public handleTouchOutsideBounds(Landroid/view/MotionEvent;Landroid/view/ViewGroup;)I
    .locals 7
    .parameter "ev"
    .parameter "caller"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 858
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getHeight()I

    move-result v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 860
    .local v1, folderRect:Landroid/graphics/Rect;
    invoke-virtual {p2, p0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 861
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 862
    .local v0, evPt:Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 863
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 864
    const/4 v2, 0x3

    .line 865
    .local v2, res:I
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 867
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 868
    const/4 v2, 0x1

    .line 874
    :cond_0
    :goto_0
    return v2

    .line 870
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->close(Z)V

    .line 871
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public ignoreShrinkingFolder()V
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 779
    return-void
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->removeAllViews()V

    .line 881
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 882
    return-void
.end method

.method notifyFolderIconChanged(Lcom/android/launcher2/FolderIconView;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    .line 892
    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 1163
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1238
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1239
    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder::onAttachedToWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1241
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1242
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1243
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 1247
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1248
    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder::onDetachedFromWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1250
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1251
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1252
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 1253
    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 442
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 443
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 945
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-nez v2, :cond_0

    .line 981
    :goto_0
    return v5

    .line 946
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 948
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 950
    :pswitch_0
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    .line 951
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v2}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/FolderIconView;->setDraggedIconId(J)V

    goto :goto_0

    .line 954
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 955
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 956
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    goto :goto_0

    .line 959
    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    .line 962
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->scrollIfNeeded(Landroid/view/DragEvent;)Z

    goto :goto_0

    .line 965
    :pswitch_4
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    .line 966
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    .line 969
    :pswitch_5
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    .line 970
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-ne v2, v3, :cond_2

    .line 973
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 975
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v2}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    const-wide/32 v3, -0x80000000

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/FolderIconView;->setDraggedIconId(J)V

    .line 976
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 977
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 978
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v2, v0, v5}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;Z)V

    .line 979
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    goto/16 :goto_0

    .line 948
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 437
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 438
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 520
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 521
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 252
    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutNoGap;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    .line 253
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iput-object p0, v1, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    .line 254
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iput-boolean v4, v1, Lcom/android/launcher2/CellLayout;->mIgnoreOccupied:Z

    .line 255
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v2, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 256
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutNoGap;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 257
    const v1, 0x7f070089

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderEditText;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 258
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderEditText;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 259
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v2, Lcom/android/launcher2/Folder$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$1;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 273
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v2, Lcom/android/launcher2/Folder$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$2;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v2, Lcom/android/launcher2/Folder$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$3;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, measureSpec:I
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, v0, v0}, Lcom/android/launcher2/FolderEditText;->measure(II)V

    .line 302
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderEditText;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 305
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 306
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 308
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 309
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 311
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderEditText;->getInputType()I

    move-result v2

    or-int/lit16 v2, v2, 0x4000

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setInputType(I)V

    .line 313
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishSetup()V

    .line 314
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    .line 541
    const/4 v2, 0x0

    .line 542
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_4

    .line 543
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 544
    .local v1, hitRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/FolderEditText;->getHitRect(Landroid/graphics/Rect;)V

    .line 545
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 546
    .local v0, evPt:Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 549
    const/4 v2, 0x1

    .line 568
    .end local v0           #evPt:Landroid/graphics/Point;
    .end local v1           #hitRect:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v2

    .line 553
    .restart local v0       #evPt:Landroid/graphics/Point;
    .restart local v1       #hitRect:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v3

    if-nez v3, :cond_2

    .line 554
    const/4 v2, 0x1

    goto :goto_0

    .line 556
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 557
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 559
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    goto :goto_0

    .line 563
    .end local v0           #evPt:Landroid/graphics/Point;
    .end local v1           #hitRect:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 1188
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 1189
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 16
    .parameter "v"

    .prologue
    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 362
    .local v8, tag:Ljava/lang/Object;
    instance-of v13, v8, Lcom/android/launcher2/BaseItem;

    if-eqz v13, :cond_8

    move-object v4, v8

    .line 363
    check-cast v4, Lcom/android/launcher2/BaseItem;

    .line 364
    .local v4, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v13

    if-nez v13, :cond_0

    .line 365
    const/4 v13, 0x0

    .line 430
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    :goto_0
    return v13

    .line 368
    .restart local v4       #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    .line 372
    sget-boolean v13, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v13, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v13

    if-nez v13, :cond_5

    .line 376
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 377
    const v9, 0x7f0e00ad

    .line 381
    .local v9, textId:I
    :goto_1
    new-instance v5, Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 382
    .local v5, myToast:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030010

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 383
    .local v6, myToastView:Landroid/view/View;
    const v13, 0x7f07003b

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 384
    .local v10, tv:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00a5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 386
    .local v11, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00a6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 387
    .local v3, h:I
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    .end local v3           #h:I
    .end local v11           #w:I
    :cond_1
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(I)V

    .line 392
    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00a1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 395
    .local v7, posY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00a2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 397
    .local v12, yGap:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    .line 398
    .local v2, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v2, :cond_3

    .line 399
    iget v1, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 400
    .local v1, cellY:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/launcher2/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x4

    if-le v1, v13, :cond_2

    .line 403
    const/4 v1, 0x4

    .line 404
    add-int/lit8 v7, v7, 0x46

    .line 406
    :cond_2
    mul-int v13, v1, v12

    add-int/2addr v7, v13

    .line 410
    .end local v1           #cellY:I
    :cond_3
    const/16 v13, 0x30

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 411
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 413
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 379
    .end local v2           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .end local v5           #myToast:Landroid/widget/Toast;
    .end local v6           #myToastView:Landroid/view/View;
    .end local v7           #posY:I
    .end local v9           #textId:I
    .end local v10           #tv:Landroid/widget/TextView;
    .end local v12           #yGap:I
    :cond_4
    const v9, 0x7f0e00ab

    .restart local v9       #textId:I
    goto/16 :goto_1

    .line 417
    .end local v9           #textId:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v13, :cond_7

    .line 419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v13

    sget-object v14, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v13, v14, :cond_6

    .line 421
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    .line 423
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v13

    goto/16 :goto_0

    .line 426
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;)Z

    .line 428
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    const-string v14, "vibrator"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    const-wide/16 v14, 0x23

    invoke-virtual {v13, v14, v15}, Landroid/os/Vibrator;->vibrate(J)V

    .line 430
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    :cond_8
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public onRemove(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 1168
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->removeView(Landroid/view/View;)V

    .line 1171
    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1193
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 3
    .parameter "isInTouchMode"

    .prologue
    .line 1257
    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder::onTouchModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    if-nez p1, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 1262
    :cond_0
    return-void
.end method

.method public open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V
    .locals 2
    .parameter "realParent"
    .parameter "pseudoParent"
    .parameter "animate"

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 759
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 763
    :cond_0
    iput-object p2, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    .line 765
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 766
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 767
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateCustomViewToCellLayout()V

    .line 768
    if-eqz p3, :cond_1

    .line 769
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->animateOpen()V

    .line 773
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 774
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->onFolderOpen()V

    .line 775
    return-void

    .line 771
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->openFolderWithoutAnimation()V

    goto :goto_0
.end method

.method public parentLayoutEntered()V
    .locals 3

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 936
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 938
    :cond_0
    return-void
.end method

.method public refreshIconView()V
    .locals 3

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v0

    .line 1197
    .local v0, icon:Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1199
    check-cast v1, Lcom/android/launcher2/FolderIconView;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIconView;->setFolderIcon(Lcom/android/launcher2/FolderItem;)Z

    .line 1200
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1201
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0           #icon:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 1203
    :cond_0
    return-void
.end method

.method public removeFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1225
    return-void
.end method

.method public restoreText(Ljava/lang/String;II)Z
    .locals 3
    .parameter "text"
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    const/4 v1, 0x1

    .line 166
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    .line 168
    .local v0, textArea:Landroid/widget/EditText;
    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 171
    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 181
    .end local v0           #textArea:Landroid/widget/EditText;
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    .line 610
    return-void
.end method

.method setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    .line 573
    new-instance v1, Lcom/android/launcher2/FolderAnimator;

    invoke-interface {p1}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/FolderAnimator;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    .line 574
    invoke-interface {p1}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/FolderIconView;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 575
    return-void
.end method

.method public setHomeFragment(Lcom/android/launcher2/HomeFragment;)V
    .locals 1
    .parameter "home"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 335
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 336
    return-void
.end method

.method public setItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 597
    return-void
.end method

.method public startEditingFolderName()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 470
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 471
    return-void
.end method

.method public startEditingFolderName(Z)V
    .locals 1
    .parameter "giveFocusToEditText"

    .prologue
    .line 460
    if-eqz p1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 464
    return-void
.end method

.method public updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    .line 579
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderAnimator;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    .line 580
    invoke-virtual {p1, p0}, Lcom/android/launcher2/FolderIconView;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 581
    return-void
.end method
