.class final Lcom/madhouse/android/ads/dddd;
.super Landroid/widget/ImageButton;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final $:Ljava/lang/Runnable;

.field final _:Landroid/os/Handler;

.field __:Landroid/view/View$OnClickListener;

.field ___:J

.field ____:Z

.field private _____:Lcom/madhouse/android/ads/dd;


# direct methods
.method public constructor <init>(Lcom/madhouse/android/ads/dd;Landroid/content/Context;Lcom/madhouse/android/ads/dd;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/madhouse/android/ads/ddddd;

    invoke-direct {v0, p0}, Lcom/madhouse/android/ads/ddddd;-><init>(Lcom/madhouse/android/ads/dddd;)V

    iput-object v0, p0, Lcom/madhouse/android/ads/dddd;->$:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/madhouse/android/ads/dddd;->___:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/madhouse/android/ads/dddd;->_:Landroid/os/Handler;

    invoke-virtual {p0, p0}, Lcom/madhouse/android/ads/dddd;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v2}, Lcom/madhouse/android/ads/dddd;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/madhouse/android/ads/dddd;->setFocusable(Z)V

    iput-object p3, p0, Lcom/madhouse/android/ads/dddd;->_____:Lcom/madhouse/android/ads/dd;

    return-void
.end method


# virtual methods
.method _()V
    .locals 4

    const v3, 0x823657

    iget-object v0, p0, Lcom/madhouse/android/ads/dddd;->__:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/dddd;->_____:Lcom/madhouse/android/ads/dd;

    iget-object v1, v0, Lcom/madhouse/android/ads/dd;->___:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/madhouse/android/ads/dd;->___:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/dddd;->clearFocus()V

    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/dddd;->setPressed(Z)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/madhouse/android/ads/dddd;->____:Z

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/madhouse/android/ads/dddd;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/dddd;->_()V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/dddd;->setPressed(Z)V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/madhouse/android/ads/dddd;->____:Z

    iget-object v0, p0, Lcom/madhouse/android/ads/dddd;->_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/madhouse/android/ads/dddd;->$:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/madhouse/android/ads/dddd;->____:Z

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/dddd;->_()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/dddd;->setPressed(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/dddd;->__:Landroid/view/View$OnClickListener;

    return-void
.end method
