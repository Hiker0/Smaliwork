.class Lcom/android/launcher2/FolderAnimator$4;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$a:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$animateScale:Z

.field final synthetic val$from:[I

.field final synthetic val$from_alpha:F

.field final synthetic val$from_d:F

.field final synthetic val$offset:[I

.field final synthetic val$pos:I

.field final synthetic val$scale:F

.field final synthetic val$to_alpha:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;ZLcom/android/launcher2/AnimationLayer$Anim;[I[IFFFIF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$4;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-boolean p2, p0, Lcom/android/launcher2/FolderAnimator$4;->val$animateScale:Z

    iput-object p3, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p4, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    iput-object p5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    iput p6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$scale:F

    iput p7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from_alpha:F

    iput p8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$to_alpha:F

    iput p9, p0, Lcom/android/launcher2/FolderAnimator$4;->val$pos:I

    iput p10, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from_d:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11
    .parameter "animation"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 387
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 388
    .local v1, r:F
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->this$0:Lcom/android/launcher2/FolderAnimator;

    #calls: Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$600(Lcom/android/launcher2/FolderAnimator;)[I

    move-result-object v0

    .line 390
    .local v0, loc:[I
    iget-boolean v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$animateScale:Z

    if-nez v5, :cond_1

    .line 393
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v5, v5, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v6, v0, v9

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v0, v9

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    aget v8, v8, v9

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v6, v7, v1}, Lcom/android/launcher2/FolderAnimator;->mix(FFF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 394
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v5, v5, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v6, v0, v10

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v7, v7, v10

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v0, v10

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    aget v8, v8, v10

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v6, v7, v1}, Lcom/android/launcher2/FolderAnimator;->mix(FFF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 399
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 400
    .local v3, s_:F
    sget v5, Lcom/android/launcher2/FolderIconHelper;->APP_ICON_SCALE_FACTOR:F

    mul-float v2, v3, v5

    .line 401
    .local v2, s:F
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v5, v5, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$scale:F

    invoke-static {v6, v2, v1}, Lcom/android/launcher2/FolderAnimator;->mix(FFF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 402
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v5, v5, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$scale:F

    invoke-static {v6, v2, v1}, Lcom/android/launcher2/FolderAnimator;->mix(FFF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 403
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v5, v5, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from_alpha:F

    iget v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$to_alpha:F

    invoke-static {v6, v7, v1}, Lcom/android/launcher2/FolderAnimator;->mix(FFF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 404
    iget v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$pos:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    iget v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$pos:I

    if-lez v5, :cond_0

    .line 405
    iget v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$pos:I

    int-to-float v5, v5

    const v6, 0x3dcccccd

    mul-float v4, v5, v6

    .line 406
    .local v4, to:F
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from_d:F

    invoke-static {v6, v4, v1}, Lcom/android/launcher2/FolderAnimator;->mix(FFF)F

    move-result v6

    iput v6, v5, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    .line 407
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget v5, v5, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    invoke-static {v5, v6}, Lcom/android/launcher2/FolderIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 410
    .end local v4           #to:F
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v5, v5, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 411
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 412
    return-void

    .line 396
    .end local v2           #s:F
    .end local v3           #s_:F
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v5, v5, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v6, v6, v9

    int-to-float v6, v6

    aget v7, v0, v9

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    aget v8, v8, v9

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v6, v7, v1}, Lcom/android/launcher2/FolderAnimator;->mix(FFF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 397
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v5, v5, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v6, v6, v10

    int-to-float v6, v6

    aget v7, v0, v10

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    aget v8, v8, v10

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v6, v7, v1}, Lcom/android/launcher2/FolderAnimator;->mix(FFF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/16 :goto_0
.end method
