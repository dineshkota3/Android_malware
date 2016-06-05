.class final Lcom/madhouse/android/ads/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/AdView;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/i;->_:Lcom/madhouse/android/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/madhouse/android/ads/i;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/i;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->aa(Lcom/madhouse/android/ads/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/i;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/madhouse/android/ads/i;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/madhouse/android/ads/i;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->$$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/madhouse/android/ads/AdListener;->onAdEvent(Lcom/madhouse/android/ads/AdView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/madhouse/android/ads/i;->_:Lcom/madhouse/android/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/AdView;->setVisibility(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
