.class final Lcom/madhouse/android/ads/dd;
.super Landroid/widget/LinearLayout;


# instance fields
.field final _:Lcom/madhouse/android/ads/dddd;

.field final __:Lcom/madhouse/android/ads/dddd;

.field ___:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/madhouse/android/ads/_____;Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x3

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/madhouse/android/ads/ddd;

    invoke-direct {v0, p0}, Lcom/madhouse/android/ads/ddd;-><init>(Lcom/madhouse/android/ads/dd;)V

    iput-object v0, p0, Lcom/madhouse/android/ads/dd;->___:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/dd;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/dd;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/dd;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/dd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/madhouse/android/ads/dddd;

    invoke-direct {v0, p0, p2, p0}, Lcom/madhouse/android/ads/dddd;-><init>(Lcom/madhouse/android/ads/dd;Landroid/content/Context;Lcom/madhouse/android/ads/dd;)V

    iput-object v0, p0, Lcom/madhouse/android/ads/dd;->_:Lcom/madhouse/android/ads/dddd;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/madhouse/android/ads/dd;->_:Lcom/madhouse/android/ads/dddd;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/madhouse/android/ads/dddd;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/madhouse/android/ads/dd;->_:Lcom/madhouse/android/ads/dddd;

    invoke-virtual {p0, v1, v0}, Lcom/madhouse/android/ads/dd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/madhouse/android/ads/dddd;

    invoke-direct {v0, p0, p2, p0}, Lcom/madhouse/android/ads/dddd;-><init>(Lcom/madhouse/android/ads/dd;Landroid/content/Context;Lcom/madhouse/android/ads/dd;)V

    iput-object v0, p0, Lcom/madhouse/android/ads/dd;->__:Lcom/madhouse/android/ads/dddd;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/madhouse/android/ads/dd;->__:Lcom/madhouse/android/ads/dddd;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/madhouse/android/ads/dddd;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/madhouse/android/ads/dd;->__:Lcom/madhouse/android/ads/dddd;

    invoke-virtual {p0, v1, v0}, Lcom/madhouse/android/ads/dd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x78000000

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/dd;->setBackgroundColor(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/dd;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final _()V
    .locals 3

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/madhouse/android/ads/dd;->_(IFF)V

    iget-object v0, p0, Lcom/madhouse/android/ads/dd;->___:Landroid/os/Handler;

    const v1, 0x823657

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method _(IFF)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/dd;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, p1}, Lcom/madhouse/android/ads/dd;->setVisibility(I)V

    return-void
.end method

.method public final hasFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/dd;->_:Lcom/madhouse/android/ads/dddd;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/dddd;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/dd;->__:Lcom/madhouse/android/ads/dddd;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/dddd;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
