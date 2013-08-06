.class Lcom/android/launcher2/FolderAnimator$3;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$a:Landroid/widget/ImageView;

.field final synthetic val$count:I

.field final synthetic val$paint:Landroid/graphics/Paint;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;ILandroid/widget/ImageView;ILandroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput p2, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    iput-object p3, p0, Lcom/android/launcher2/FolderAnimator$3;->val$a:Landroid/widget/ImageView;

    iput p4, p0, Lcom/android/launcher2/FolderAnimator$3;->val$count:I

    iput-object p5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$paint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 307
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    move-object v2, p1

    .line 308
    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 309
    .local v2, iconView:Lcom/android/launcher2/AppIconView;
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    const/4 v6, 0x0

    #calls: Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I
    invoke-static {v5, v2, v6}, Lcom/android/launcher2/FolderAnimator;->access$200(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v4

    .line 311
    .local v4, xy:[I
    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_0

    .line 312
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$a:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 315
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v4, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v4, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v6}, Lcom/android/launcher2/FolderAnimator;->access$500(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher2/Folder;->mExpandDuration:I

    iget v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/launcher2/FolderAnimator$3$1;

    invoke-direct {v6, p0, v2}, Lcom/android/launcher2/FolderAnimator$3$1;-><init>(Lcom/android/launcher2/FolderAnimator$3;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 337
    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    if-lez v5, :cond_1

    .line 338
    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    int-to-float v5, v5

    const v6, 0x3dcccccd

    mul-float v1, v5, v6

    .line 339
    .local v1, from:F
    const/4 v3, 0x0

    .line 340
    .local v3, to:F
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 341
    .local v0, anim:Landroid/animation/ValueAnimator;
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$500(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 342
    new-instance v5, Lcom/android/launcher2/FolderAnimator$3$2;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/FolderAnimator$3$2;-><init>(Lcom/android/launcher2/FolderAnimator$3;F)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 350
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 352
    .end local v0           #anim:Landroid/animation/ValueAnimator;
    .end local v1           #from:F
    .end local v3           #to:F
    :cond_1
    return-void

    .line 340
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
