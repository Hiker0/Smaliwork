.class Lcom/android/launcher2/DeltaVisualizer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeltaVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeltaVisualizer;->finishOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeltaVisualizer;

.field final synthetic val$a:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeltaVisualizer;Landroid/view/View;Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer$3;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iput-object p2, p0, Lcom/android/launcher2/DeltaVisualizer$3;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/DeltaVisualizer$3;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$3;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$3;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    .line 179
    return-void
.end method
