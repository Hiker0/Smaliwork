.class Lcom/android/launcher2/DeltaVisualizer$5;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeltaVisualizer;->bounceListner(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeltaVisualizer;

.field final synthetic val$a:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$al:Lcom/android/launcher2/AnimationLayer;

.field final synthetic val$from:[I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;[ILandroid/view/View;Lcom/android/launcher2/AnimationLayer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer$5;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iput-object p2, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    iput-object p4, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$v:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$al:Lcom/android/launcher2/AnimationLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13
    .parameter "animation"

    .prologue
    .line 206
    iget-object v10, p0, Lcom/android/launcher2/DeltaVisualizer$5;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    #getter for: Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z
    invoke-static {v10}, Lcom/android/launcher2/DeltaVisualizer;->access$400(Lcom/android/launcher2/DeltaVisualizer;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 231
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v10, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v7

    .line 208
    .local v7, to:[I
    const/4 v10, 0x0

    aget v10, v7, v10

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int/2addr v10, v11

    int-to-float v1, v10

    .line 209
    .local v1, dx:F
    const/4 v10, 0x1

    aget v10, v7, v10

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    int-to-float v2, v10

    .line 210
    .local v2, dy:F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v3, v10

    .line 211
    .local v3, m:F
    div-float/2addr v1, v3

    .line 212
    div-float/2addr v2, v3

    .line 214
    iget-object v10, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    .line 215
    .local v0, animIcon:Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 216
    .local v4, p:F
    const/high16 v10, 0x3f00

    const/high16 v11, 0x3f00

    sub-float v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    mul-float v4, v10, v11

    .line 217
    const/4 v10, 0x0

    aget v10, v7, v10

    int-to-float v10, v10

    mul-float v11, v1, v4

    const/high16 v12, 0x4100

    mul-float/2addr v11, v12

    add-float v8, v10, v11

    .line 218
    .local v8, x:F
    const/4 v10, 0x1

    aget v10, v7, v10

    int-to-float v10, v10

    mul-float v11, v2, v4

    const/high16 v12, 0x4100

    mul-float/2addr v11, v12

    add-float v9, v10, v11

    .line 220
    .local v9, y:F
    iget-object v10, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 221
    iget-object v10, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F

    move-result v10

    const v11, 0x3cf5c28f

    mul-float/2addr v11, v4

    add-float v5, v10, v11

    .line 222
    .local v5, sx:F
    iget-object v10, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleY()F

    move-result v10

    const v11, 0x3cf5c28f

    mul-float/2addr v11, v4

    add-float v6, v10, v11

    .line 223
    .local v6, sy:F
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 224
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 225
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 226
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 229
    .end local v5           #sx:F
    .end local v6           #sy:F
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 230
    iget-object v10, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$al:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    goto/16 :goto_0
.end method
