.class final Lcom/madhouse/android/ads/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/j;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/j;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/k;->_:Lcom/madhouse/android/ads/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/madhouse/android/ads/k;->_:Lcom/madhouse/android/ads/j;

    iget v0, v0, Lcom/madhouse/android/ads/j;->__:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/k;->_:Lcom/madhouse/android/ads/j;

    iget-object v0, v0, Lcom/madhouse/android/ads/j;->___:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/____;

    move-result-object v0

    invoke-virtual {v0}, Lcom/madhouse/android/ads/____;->_()V

    iget-object v0, p0, Lcom/madhouse/android/ads/k;->_:Lcom/madhouse/android/ads/j;

    iget-object v0, v0, Lcom/madhouse/android/ads/j;->___:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/k;->_:Lcom/madhouse/android/ads/j;

    iget-object v1, v1, Lcom/madhouse/android/ads/j;->___:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/____;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/AdView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/k;->_:Lcom/madhouse/android/ads/j;

    iget-object v0, v0, Lcom/madhouse/android/ads/j;->___:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/k;->_:Lcom/madhouse/android/ads/j;

    iget-object v1, v1, Lcom/madhouse/android/ads/j;->_:Lcom/madhouse/android/ads/____;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V

    :cond_0
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
