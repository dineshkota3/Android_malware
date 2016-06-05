.class public Lcom/masshabit/squibble/MainView;
.super Landroid/view/SurfaceView;
.source "MainView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "MainView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const-string v2, "MainView"

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, "MainView"

    const-string v0, "MainView()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/MainView;->setClickable(Z)V

    .line 22
    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/MainView;->setFocusableInTouchMode(Z)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/MainView;->setKeepScreenOn(Z)V

    .line 25
    const-string v0, "MainView"

    const-string v0, "SurfaceView constructed, adding callback to holder"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/masshabit/squibble/MainView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 97
    sparse-switch p1, :sswitch_data_0

    .line 104
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v0, p2}, Lcom/masshabit/common/Environment;->enqueueKeyEvent(Landroid/view/KeyEvent;)V

    .line 108
    const-wide/16 v0, 0x10

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    const/4 v0, 0x1

    .line 112
    :goto_1
    return v0

    .line 102
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 118
    sparse-switch p1, :sswitch_data_0

    .line 125
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v0, p2}, Lcom/masshabit/common/Environment;->enqueueKeyEvent(Landroid/view/KeyEvent;)V

    .line 129
    const-wide/16 v0, 0x10

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    const/4 v0, 0x1

    .line 133
    :goto_1
    return v0

    .line 123
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/Environment;->enqueueTouchEvent(Landroid/view/MotionEvent;)V

    .line 88
    const-wide/16 v0, 0x10

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    const/4 v0, 0x1

    .line 91
    :goto_1
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 74
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/Environment;->setFocused(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const-string v1, "MainView"

    .line 37
    const-string v0, "MainView"

    const-string v0, "surfaceChanged()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, p1, v1, v2}, Lcom/masshabit/common/Environment;->surfaceReady(Landroid/view/SurfaceHolder;FF)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "MainView"

    const-string v0, "No environment instance to notify!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 50
    const-string v0, "MainView"

    const-string v1, "surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const-string v1, "MainView"

    .line 55
    const-string v0, "MainView"

    const-string v0, "surfaceDestroyed()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v0}, Lcom/masshabit/common/Environment;->surfaceDestroyed()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "MainView"

    const-string v0, "No environment instance to notify!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
