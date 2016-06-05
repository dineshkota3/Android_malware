.class final Lcom/madhouse/android/ads/gg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic _:Lcom/madhouse/android/ads/AdView;

.field private final synthetic __:Lcom/madhouse/android/ads/____;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/gg;->_:Lcom/madhouse/android/ads/AdView;

    iput-object p2, p0, Lcom/madhouse/android/ads/gg;->__:Lcom/madhouse/android/ads/____;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/madhouse/android/ads/gg;->__:Lcom/madhouse/android/ads/____;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/____;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/madhouse/android/ads/ggg;

    iget-object v2, p0, Lcom/madhouse/android/ads/gg;->__:Lcom/madhouse/android/ads/____;

    invoke-direct {v1, p0, v2}, Lcom/madhouse/android/ads/ggg;-><init>(Lcom/madhouse/android/ads/gg;Lcom/madhouse/android/ads/____;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/madhouse/android/ads/gg;->__:Lcom/madhouse/android/ads/____;

    invoke-virtual {v1, v0}, Lcom/madhouse/android/ads/____;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
