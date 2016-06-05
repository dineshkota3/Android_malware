.class final Lcom/madhouse/android/ads/gggg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/AdView;

.field private final synthetic __:Lcom/madhouse/android/ads/____;

.field private final synthetic ___:I

.field private final synthetic ____:I


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;II)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/gggg;->_:Lcom/madhouse/android/ads/AdView;

    iput-object p2, p0, Lcom/madhouse/android/ads/gggg;->__:Lcom/madhouse/android/ads/____;

    iput p3, p0, Lcom/madhouse/android/ads/gggg;->___:I

    iput p4, p0, Lcom/madhouse/android/ads/gggg;->____:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    iget-object v6, p0, Lcom/madhouse/android/ads/gggg;->_:Lcom/madhouse/android/ads/AdView;

    new-instance v0, Lcom/madhouse/android/ads/j;

    iget-object v1, p0, Lcom/madhouse/android/ads/gggg;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v2, p0, Lcom/madhouse/android/ads/gggg;->__:Lcom/madhouse/android/ads/____;

    const/4 v3, 0x1

    iget v4, p0, Lcom/madhouse/android/ads/gggg;->___:I

    iget v5, p0, Lcom/madhouse/android/ads/gggg;->____:I

    invoke-direct/range {v0 .. v5}, Lcom/madhouse/android/ads/j;-><init>(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;III)V

    invoke-virtual {v6, v0}, Lcom/madhouse/android/ads/AdView;->post(Ljava/lang/Runnable;)Z

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
