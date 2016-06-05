.class final Lcom/madhouse/android/ads/ggggg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/AdView;

.field private final synthetic __:Lcom/madhouse/android/ads/____;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/ggggg;->_:Lcom/madhouse/android/ads/AdView;

    iput-object p2, p0, Lcom/madhouse/android/ads/ggggg;->__:Lcom/madhouse/android/ads/____;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/madhouse/android/ads/ggggg;->__:Lcom/madhouse/android/ads/____;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/____;->setClickable(Z)V

    iget-object v0, p0, Lcom/madhouse/android/ads/ggggg;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/____;

    move-result-object v0

    invoke-virtual {v0}, Lcom/madhouse/android/ads/____;->_()V

    iget-object v0, p0, Lcom/madhouse/android/ads/ggggg;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/ggggg;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/____;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/AdView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/ggggg;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/ggggg;->__:Lcom/madhouse/android/ads/____;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V

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
