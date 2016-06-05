.class final Lcom/adwo/adsdk/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/E;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/E;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/F;->a:Lcom/adwo/adsdk/E;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/adwo/adsdk/F;->a:Lcom/adwo/adsdk/E;

    invoke-static {v0}, Lcom/adwo/adsdk/E;->a(Lcom/adwo/adsdk/E;)Lcom/adwo/adsdk/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/adwo/adsdk/F;->a:Lcom/adwo/adsdk/E;

    invoke-static {v0}, Lcom/adwo/adsdk/E;->c(Lcom/adwo/adsdk/E;)Lcom/adwo/adsdk/AdwoAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/adwo/adsdk/F;->a:Lcom/adwo/adsdk/E;

    invoke-static {v1}, Lcom/adwo/adsdk/E;->a(Lcom/adwo/adsdk/E;)Lcom/adwo/adsdk/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/AdwoAdView;->removeView(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Lcom/adwo/adsdk/F;->a:Lcom/adwo/adsdk/E;

    invoke-static {v0}, Lcom/adwo/adsdk/E;->a(Lcom/adwo/adsdk/E;)Lcom/adwo/adsdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adwo/adsdk/b;->a()V

    .line 551
    iget-object v0, p0, Lcom/adwo/adsdk/F;->a:Lcom/adwo/adsdk/E;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adwo/adsdk/E;->a(Lcom/adwo/adsdk/E;Lcom/adwo/adsdk/b;)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/F;->a:Lcom/adwo/adsdk/E;

    invoke-static {v0}, Lcom/adwo/adsdk/E;->c(Lcom/adwo/adsdk/E;)Lcom/adwo/adsdk/AdwoAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/adwo/adsdk/F;->a:Lcom/adwo/adsdk/E;

    invoke-static {v1}, Lcom/adwo/adsdk/E;->b(Lcom/adwo/adsdk/E;)Lcom/adwo/adsdk/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adwo/adsdk/AdwoAdView;->a(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;)V

    .line 554
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 557
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 545
    return-void
.end method
