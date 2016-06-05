.class final Lcom/madhouse/android/ads/$$$$;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/_____;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/_____;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/$$$$;->_:Lcom/madhouse/android/ads/_____;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/$$$$;->_:Lcom/madhouse/android/ads/_____;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/_____;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/_____;->removeAllViews()V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/madhouse/android/ads/f;->_(Z)V

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
