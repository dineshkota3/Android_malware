.class final Lcom/madhouse/android/ads/bb;
.super Landroid/widget/TextView;


# instance fields
.field $:F

.field $$:Z

.field $$$:Ljava/lang/String;

.field $$$$:Landroid/graphics/Paint;

.field _:F

.field __:F

.field ___:F

.field ____:F

.field _____:F


# direct methods
.method protected constructor <init>(Lcom/madhouse/android/ads/b;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v2}, Lcom/madhouse/android/ads/bb;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/madhouse/android/ads/bb;->setClickable(Z)V

    int-to-float v0, p5

    iput v0, p0, Lcom/madhouse/android/ads/bb;->___:F

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/madhouse/android/ads/bb;->$$$$:Landroid/graphics/Paint;

    return-void
.end method

.method private _()V
    .locals 1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/madhouse/android/ads/bb;->$$:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/madhouse/android/ads/bb;->$$:Z

    :cond_0
    return-void
.end method

.method private __()V
    .locals 1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/bb;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xffff01

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/bb;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/bb;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/bb;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->requestFocus()Z

    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->__()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->getBottom()I

    move-result v5

    cmpg-float v6, v0, v7

    if-ltz v6, :cond_1

    sub-int v2, v4, v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    cmpg-float v0, v1, v7

    if-ltz v0, :cond_1

    sub-int v0, v5, v3

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    :cond_1
    invoke-virtual {p0, v8}, Lcom/madhouse/android/ads/bb;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->__()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->_()V

    invoke-virtual {p0, v8}, Lcom/madhouse/android/ads/bb;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->__()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/bb;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->__()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->_()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/bb;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->__()V

    goto :goto_0
.end method

.method public final bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/bb;->$$$:Ljava/lang/String;

    return-object v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/madhouse/android/ads/bb;->__:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/madhouse/android/ads/bb;->__:F

    :cond_0
    iget-object v0, p0, Lcom/madhouse/android/ads/bb;->$$$:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/madhouse/android/ads/bb;->$$$:Ljava/lang/String;

    iget v1, p0, Lcom/madhouse/android/ads/bb;->____:F

    iget v2, p0, Lcom/madhouse/android/ads/bb;->$:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/madhouse/android/ads/bb;->_____:F

    iget-object v3, p0, Lcom/madhouse/android/ads/bb;->$$$$:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean v0, p0, Lcom/madhouse/android/ads/bb;->$$:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/madhouse/android/ads/bb;->$:F

    iget v1, p0, Lcom/madhouse/android/ads/bb;->_:F

    iget v2, p0, Lcom/madhouse/android/ads/bb;->__:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/madhouse/android/ads/bb;->$$:Z

    iput v4, p0, Lcom/madhouse/android/ads/bb;->$:F

    :goto_0
    invoke-virtual {p0}, Lcom/madhouse/android/ads/bb;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/madhouse/android/ads/bb;->$:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/madhouse/android/ads/bb;->$:F

    goto :goto_0
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->__()V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/bb;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->__()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->_()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/bb;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/bb;->__()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/bb;->$$$$:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/bb;->$$$$:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
