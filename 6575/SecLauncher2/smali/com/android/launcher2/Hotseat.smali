.class public Lcom/android/launcher2/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;
.implements Lcom/android/launcher2/CellLayoutContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Hotseat$4;
    }
.end annotation


# static fields
.field private static final HOTSEAT_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Hotseat"


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field itemFromApps:Z

.field private mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

.field private mBackground:Landroid/view/View;

.field mContent:Lcom/android/launcher2/CellLayoutHotseat;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mDragInContentArea:Z

.field private mDropped:Z

.field private mEntered:Z

.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private mIsLandscape:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mPaint:Landroid/graphics/Paint;

.field private mShowHotseatTitle:Z

.field private tmp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 527
    new-instance v0, Lcom/android/launcher2/Hotseat$3;

    invoke-direct {v0}, Lcom/android/launcher2/Hotseat$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/Hotseat;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mPaint:Landroid/graphics/Paint;

    .line 76
    new-instance v0, Lcom/android/launcher2/Hotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Hotseat$1;-><init>(Lcom/android/launcher2/Hotseat;)V

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 245
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->itemFromApps:Z

    .line 451
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    .line 452
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mDropped:Z

    .line 490
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    .line 495
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    .line 71
    iput-object p2, p0, Lcom/android/launcher2/Hotseat;->attrs:Landroid/util/AttributeSet;

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Hotseat;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Hotseat;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Hotseat;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static normalizeContents(Ljava/util/List;)V
    .locals 5
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
    .line 553
    .local p0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    sget-object v4, Lcom/android/launcher2/Hotseat;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, position:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 556
    .local v1, item:Lcom/android/launcher2/HomeItem;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #position:I
    .local v3, position:I
    iput v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    move v2, v3

    .end local v3           #position:I
    .restart local v2       #position:I
    goto :goto_0

    .line 558
    .end local v1           #item:Lcom/android/launcher2/HomeItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/HomeItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutHotseat;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    return v0
.end method

.method checkHotSeatInteraction(Lcom/android/launcher2/DragState;ILandroid/view/View;)Z
    .locals 8
    .parameter "dragState"
    .parameter "action"
    .parameter "dragOverView"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 396
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    .line 397
    .local v3, view:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 398
    .local v0, dragItem:Lcom/android/launcher2/BaseItem;
    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v7, :cond_0

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_4

    :cond_0
    move v2, v5

    .line 400
    .local v2, isWidget:Z
    :goto_0
    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v7, :cond_1

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_5

    :cond_1
    move v1, v5

    .line 403
    .local v1, fromApps:Z
    :goto_1
    packed-switch p2, :pswitch_data_0

    :cond_2
    :goto_2
    move v5, v4

    .line 445
    :cond_3
    :goto_3
    return v5

    .end local v1           #fromApps:Z
    .end local v2           #isWidget:Z
    :cond_4
    move v2, v4

    .line 398
    goto :goto_0

    .restart local v2       #isWidget:Z
    :cond_5
    move v1, v4

    .line 400
    goto :goto_1

    .line 405
    .restart local v1       #fromApps:Z
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mDropped:Z

    .line 406
    instance-of v6, p3, Lcom/android/launcher2/AllappsIcon;

    if-nez v6, :cond_3

    .line 408
    if-nez v2, :cond_6

    if-nez v1, :cond_6

    if-eq p3, v3, :cond_6

    if-eqz p3, :cond_6

    .line 409
    invoke-virtual {p1, p3}, Lcom/android/launcher2/DragState;->initiateSwap(Landroid/view/View;)V

    goto :goto_3

    .line 413
    :cond_6
    if-eqz v2, :cond_2

    goto :goto_3

    .line 420
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v6, :cond_2

    .line 421
    if-nez v2, :cond_3

    if-eqz p3, :cond_2

    if-eq p3, v3, :cond_2

    goto :goto_3

    .line 429
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    .line 430
    iput-boolean v4, p0, Lcom/android/launcher2/Hotseat;->mDropped:Z

    goto :goto_2

    .line 433
    :pswitch_3
    iget-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v5, :cond_2

    .line 434
    iput-boolean v4, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    .line 435
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    goto :goto_2

    .line 438
    :pswitch_4
    iget-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mDropped:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_2

    .line 439
    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 440
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    goto :goto_2

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public collectPreWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    return-void
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v8, 0x7f050001

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 263
    .local v1, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 264
    .local v2, drag:Z
    const/4 v3, 0x0

    .line 265
    .local v3, shrink:Z
    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v6, :cond_7

    .line 266
    const/4 v3, 0x1

    .line 271
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    .line 272
    iget-object v6, p4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v7, :cond_1

    iget-object v6, p4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_9

    :cond_1
    move v6, v4

    :goto_1
    iput-boolean v6, p0, Lcom/android/launcher2/Hotseat;->itemFromApps:Z

    .line 276
    :cond_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_a

    .line 277
    :cond_3
    invoke-static {v1, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 278
    .local v0, animator:Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const v6, 0x7f05000b

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 282
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_4

    .line 285
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v4, v4}, Lcom/android/launcher2/AllappsIcon;->setDimmed(ZZ)V

    .line 286
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    .line 289
    :cond_4
    sget-boolean v6, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v6, :cond_5

    .line 290
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v7, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-eqz v6, :cond_5

    .line 291
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(ZZ)V

    .line 294
    :cond_5
    iget-boolean v6, p0, Lcom/android/launcher2/Hotseat;->itemFromApps:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 295
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(ZZ)V

    .line 319
    :cond_6
    :goto_2
    invoke-static {v1, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 320
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 322
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    return-void

    .line 267
    .end local v0           #animator:Landroid/animation/Animator;
    :cond_7
    sget-object v6, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v6, :cond_0

    .line 268
    if-eqz p4, :cond_8

    move v2, v4

    :goto_3
    goto :goto_0

    :cond_8
    move v2, v5

    goto :goto_3

    :cond_9
    move v6, v5

    .line 272
    goto :goto_1

    .line 297
    :cond_a
    const/high16 v6, 0x7f05

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 298
    .restart local v0       #animator:Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    const v6, 0x7f05000c

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 302
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 303
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_b

    .line 305
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v5, v4}, Lcom/android/launcher2/AllappsIcon;->setDimmed(ZZ)V

    .line 306
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v4}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    .line 309
    :cond_b
    sget-boolean v6, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v6, :cond_c

    .line 310
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v7, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-eqz v6, :cond_c

    .line 311
    invoke-virtual {p0, v5, v4}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(ZZ)V

    .line 314
    :cond_c
    iget-boolean v6, p0, Lcom/android/launcher2/Hotseat;->itemFromApps:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 315
    invoke-virtual {p0, v5, v4}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(ZZ)V

    .line 316
    iput-boolean v5, p0, Lcom/android/launcher2/Hotseat;->itemFromApps:Z

    goto :goto_2
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "aCanvas"

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 139
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 140
    return-void
.end method

.method getAllappsIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method getCellXFromOrder(I)I
    .locals 1
    .parameter "rank"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 2
    .parameter "rank"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    .line 154
    .local v0, c:I
    iget-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v1, :cond_0

    sub-int v1, v0, p1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "v"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 388
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method getLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    .line 146
    .local v0, c:I
    iget-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v1, :cond_0

    sub-int v1, v0, p2

    add-int/lit8 p1, v1, -0x1

    .end local p1
    :cond_0
    return p1
.end method

.method isLandscape()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 332
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "a"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 341
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 343
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 344
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 345
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 346
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 357
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6
    .parameter "a"

    .prologue
    const/4 v5, 0x2

    .line 366
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 367
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 368
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 369
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 372
    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 382
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 383
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 500
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 520
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    return v1

    .line 502
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    if-nez v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher2/CellLayoutHotseat;->pointToCellExact(II[I)V

    .line 504
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->cellToPosition(II)I

    move-result v0

    .line 506
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    goto :goto_0

    .line 513
    .end local v0           #pos:I
    :sswitch_1
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iput-boolean v5, v1, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 514
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    goto :goto_0

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 377
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 378
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 163
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    .line 164
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-static {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->create(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/HotseatSwapAnimator;

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 168
    return-void
.end method

.method public removeAllItemsWithoutAllApps()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 457
    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 459
    .local v3, itemCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 460
    iget-boolean v4, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4, v5, v2}, Lcom/android/launcher2/CellLayoutHotseat;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 461
    .local v0, base:Lcom/android/launcher2/BaseItem;
    :goto_1
    if-eqz v0, :cond_0

    .line 462
    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;Z)V

    .line 459
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    .end local v0           #base:Lcom/android/launcher2/BaseItem;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4, v2, v5}, Lcom/android/launcher2/CellLayoutHotseat;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    goto :goto_1

    .line 466
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutHotseat;->getDragState()Lcom/android/launcher2/DragState;

    move-result-object v1

    .line 467
    .local v1, ds:Lcom/android/launcher2/DragState;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v4, v4, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v4, :cond_3

    .line 468
    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;Z)V

    .line 469
    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 471
    :cond_3
    return-void
.end method

.method resetLayout()V
    .locals 10

    .prologue
    const v9, 0x7f0e002b

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 171
    const-string v3, "Hotseat"

    const-string v4, "resetLayout()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->removeAllViewsInLayout()V

    .line 175
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3, v7, v7}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 180
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030003

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AllappsIcon;

    iput-object v3, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    .line 184
    if-eqz v1, :cond_1

    .line 185
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v3, v6, v1, v6, v6}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 193
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f090006

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    .line 196
    iget-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v3, v9}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v4, Lcom/android/launcher2/HotseatIconKeyEventListener;

    invoke-direct {v4}, Lcom/android/launcher2/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 203
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v4, Lcom/android/launcher2/Hotseat$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Hotseat$2;-><init>(Lcom/android/launcher2/Hotseat;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v5, v8, v8, v7, v7}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    return-void

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v6, v6}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 193
    :cond_2
    const v3, 0x7f090005

    goto :goto_1
.end method

.method public setDimHotseatItems(ZZ)V
    .locals 4
    .parameter "isDim"
    .parameter "isEnable"

    .prologue
    .line 480
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v2

    .line 481
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 482
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 483
    .local v0, app:Lcom/android/launcher2/AppIconView;
    if-eqz v0, :cond_0

    .line 484
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    .line 485
    invoke-virtual {v0, p2}, Lcom/android/launcher2/AppIconView;->setEnabled(Z)V

    .line 481
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    .end local v0           #app:Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method setDragInContentArea(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    .line 493
    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeFragment;)V
    .locals 7
    .parameter "homeFragment"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 113
    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 114
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayoutHotseat;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 115
    new-instance v3, Lcom/android/launcher2/HotseatIconKeyEventListener;

    invoke-direct {v3}, Lcom/android/launcher2/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 117
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/CellLayoutHotseat;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 120
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->attrs:Landroid/util/AttributeSet;

    sget-object v6, Lcom/sec/android/app/launcher/R$styleable;->Hotseat:[I

    invoke-virtual {v1, v3, v6, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    .line 125
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 127
    .local v2, maxCellCount:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-boolean v4, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher2/CellLayoutHotseat;->setup(ZI)V

    .line 130
    return-void

    .end local v2           #maxCellCount:I
    :cond_0
    move v3, v5

    .line 122
    goto :goto_0
.end method
