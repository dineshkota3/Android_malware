.class final Lcom/madhouse/android/ads/aaaaa;
.super Landroid/widget/ImageView;


# instance fields
.field private _:Landroid/graphics/Bitmap;

.field private __:Z

.field private ___:I

.field private ____:Landroid/view/View$OnClickListener;


# direct methods
.method protected constructor <init>(Lcom/madhouse/android/ads/$$$$$;Landroid/content/Context;IIFIZ)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3, p4, p5}, Lcom/madhouse/android/ads/f;->_(Landroid/content/Context;IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/madhouse/android/ads/aaaaa;->_:Landroid/graphics/Bitmap;

    const/16 v0, 0x80

    iput v0, p0, Lcom/madhouse/android/ads/aaaaa;->___:I

    invoke-virtual {p0, p7}, Lcom/madhouse/android/ads/aaaaa;->_(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->__()V

    iget-object v0, p0, Lcom/madhouse/android/ads/aaaaa;->_:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/aaaaa;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private _()V
    .locals 1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/aaaaa;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/aaaaa;->____:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private __()V
    .locals 2

    const/high16 v1, -0x1000000

    iget-boolean v0, p0, Lcom/madhouse/android/ads/aaaaa;->__:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/madhouse/android/ads/aaaaa;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/aaaaa;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/madhouse/android/ads/aaaaa;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xffff01

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/aaaaa;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/aaaaa;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/aaaaa;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final _(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/madhouse/android/ads/aaaaa;->__:Z

    iget-boolean v0, p0, Lcom/madhouse/android/ads/aaaaa;->__:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/madhouse/android/ads/aaaaa;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/madhouse/android/ads/aaaaa;->setFocusable(Z)V

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/aaaaa;->setAlpha(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/aaaaa;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/aaaaa;->setFocusable(Z)V

    iget v0, p0, Lcom/madhouse/android/ads/aaaaa;->___:I

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/aaaaa;->setAlpha(I)V

    goto :goto_0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/madhouse/android/ads/aaaaa;->__:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/aaaaa;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/madhouse/android/ads/aaaaa;->requestFocus()Z

    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->__()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/aaaaa;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/madhouse/android/ads/aaaaa;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/madhouse/android/ads/aaaaa;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/madhouse/android/ads/aaaaa;->getBottom()I

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
    invoke-virtual {p0, v8}, Lcom/madhouse/android/ads/aaaaa;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->__()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->_()V

    invoke-virtual {p0, v8}, Lcom/madhouse/android/ads/aaaaa;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->__()V

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

    iget-boolean v0, p0, Lcom/madhouse/android/ads/aaaaa;->__:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/aaaaa;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->__()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->_()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/aaaaa;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->__()V

    goto :goto_0
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->__()V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/madhouse/android/ads/aaaaa;->__:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/aaaaa;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->__()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/madhouse/android/ads/aaaaa;->__:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->_()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/aaaaa;->setPressed(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/aaaaa;->__()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/aaaaa;->____:Landroid/view/View$OnClickListener;

    return-void
.end method
