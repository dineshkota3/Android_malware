.class public Lcom/masshabit/common/Environment;
.super Ljava/lang/Object;
.source "Environment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/common/Environment$IMutedChangedListener;
    }
.end annotation


# static fields
.field public static final GRAVITY:F = 1200.0f

.field public static final INPUT_QUEUE_SIZE:I = 0x100

.field public static final MESSAGE_SHOW_DIALOG:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Environment"

.field public static sInstance:Lcom/masshabit/common/Environment;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field protected mArtificiallyPaused:Z

.field public mBundle:Landroid/os/Bundle;

.field public final mCamera:Lcom/masshabit/common/Camera;

.field protected mCanDraw:Z

.field protected mCanInit:Z

.field protected mCanTakeInput:Z

.field protected mCanUpdateLogic:Z

.field protected mCanUpdatePhysics:Z

.field public final mClock:Lcom/masshabit/common/Clock;

.field public mContext:Landroid/content/Context;

.field public final mDebugPaint:Landroid/graphics/Paint;

.field public mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field public mDrawPhysics:Z

.field protected mFocused:Z

.field protected final mFpsBuffer:[C

.field public mGame:Lcom/masshabit/squibble/Game;

.field public mHandler:Landroid/os/Handler;

.field protected mInitialized:Z

.field protected final mInputEventPool:Lcom/masshabit/common/InputEventPool;

.field protected final mInputQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/masshabit/common/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mLevel:Lcom/masshabit/common/Level;

.field protected mMuted:Z

.field protected mMutedChangedListener:Lcom/masshabit/common/Environment$IMutedChangedListener;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPhysics:Lcom/masshabit/common/physics/Physics;

.field public mRes:Landroid/content/res/Resources;

.field protected mRunner:Ljava/lang/Thread;

.field protected mRunning:Z

.field public mScreen:Lcom/masshabit/squibble/Screen;

.field public mScreenHeight:F

.field public mScreenWidth:F

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceReady:Z

.field protected mThreadLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method protected constructor <init>(Lcom/masshabit/common/EnvironmentArgs;)V
    .locals 5
    .param p1, "args"    # Lcom/masshabit/common/EnvironmentArgs;

    .prologue
    const/16 v1, 0x100

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/masshabit/common/InputEventPool;

    invoke-direct {v0, v1}, Lcom/masshabit/common/InputEventPool;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mInputEventPool:Lcom/masshabit/common/InputEventPool;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    .line 95
    iput-boolean v2, p0, Lcom/masshabit/common/Environment;->mDrawPhysics:Z

    .line 96
    iput-boolean v2, p0, Lcom/masshabit/common/Environment;->mMuted:Z

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Lcom/masshabit/common/Clock;

    invoke-direct {v0}, Lcom/masshabit/common/Clock;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mClock:Lcom/masshabit/common/Clock;

    .line 102
    new-instance v0, Lcom/masshabit/common/Camera;

    invoke-direct {v0}, Lcom/masshabit/common/Camera;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    .line 103
    new-instance v0, Lcom/masshabit/common/physics/Physics;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Physics;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    .line 105
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mFpsBuffer:[C

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mMutedChangedListener:Lcom/masshabit/common/Environment$IMutedChangedListener;

    .line 116
    iput-boolean v2, p0, Lcom/masshabit/common/Environment;->mInitialized:Z

    .line 117
    iput-boolean v2, p0, Lcom/masshabit/common/Environment;->mSurfaceReady:Z

    .line 118
    iput-boolean v2, p0, Lcom/masshabit/common/Environment;->mFocused:Z

    .line 119
    iput-boolean v2, p0, Lcom/masshabit/common/Environment;->mArtificiallyPaused:Z

    .line 121
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 126
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 128
    iget-object v0, p1, Lcom/masshabit/common/EnvironmentArgs;->game:Lcom/masshabit/squibble/Game;

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    .line 129
    iget-object v0, p1, Lcom/masshabit/common/EnvironmentArgs;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mActivity:Landroid/app/Activity;

    .line 130
    iget-object v0, p1, Lcom/masshabit/common/EnvironmentArgs;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    .line 131
    iget-object v0, p1, Lcom/masshabit/common/EnvironmentArgs;->handler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mHandler:Landroid/os/Handler;

    .line 132
    iget-object v0, p1, Lcom/masshabit/common/EnvironmentArgs;->res:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    .line 133
    iget-object v0, p1, Lcom/masshabit/common/EnvironmentArgs;->bundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    .line 135
    iput v4, p0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    .line 136
    iput v4, p0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    .line 138
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->lockAndUpdateThreadCondition()V

    .line 139
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->startThread()V

    .line 140
    return-void

    .line 105
    nop

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x20s
        0x46s
        0x70s
        0x73s
    .end array-data
.end method

.method public static create(Lcom/masshabit/common/EnvironmentArgs;)V
    .locals 5
    .param p0, "args"    # Lcom/masshabit/common/EnvironmentArgs;

    .prologue
    const-string v4, "Environment"

    .line 35
    const-string v0, "Environment"

    const-string v0, "Environment.create()"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "Environment"

    const-string v0, "DEBUG=%s, PAID=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-boolean v3, Lcom/masshabit/common/Globals;->DEBUG_BUILD:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-boolean v3, Lcom/masshabit/common/Globals;->PAID_BUILD:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "Environment"

    const-string v0, "Environment instance created"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/masshabit/common/Environment;

    invoke-direct {v0, p0}, Lcom/masshabit/common/Environment;-><init>(Lcom/masshabit/common/EnvironmentArgs;)V

    sput-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "Environment"

    const-string v0, "Environment instance already exists"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->stopThread()V

    .line 228
    iput-object v0, p0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    .line 229
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->destroy()V

    .line 232
    sput-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 233
    return-void
.end method

.method protected dispatchEvents()V
    .locals 7

    .prologue
    .line 401
    iget-object v4, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 403
    :try_start_0
    iget-object v5, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 404
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 406
    iget-object v5, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/InputEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .local v1, "event":Lcom/masshabit/common/InputEvent;
    :try_start_1
    iget-object v5, p0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v5, v1}, Lcom/masshabit/squibble/Game;->onInputEvent(Lcom/masshabit/common/InputEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/masshabit/common/InputEvent;->release()V

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Environment"

    const-string v6, "Exception thrown during game event handler"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "event":Lcom/masshabit/common/InputEvent;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 418
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 419
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 585
    .local v8, "saveCount":I
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 588
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Game;->draw(Landroid/graphics/Canvas;)V

    .line 590
    sget-boolean v0, Lcom/masshabit/common/Globals;->DEBUG_BUILD:Z

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 593
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 594
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 596
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mClock:Lcom/masshabit/common/Clock;

    invoke-virtual {v0}, Lcom/masshabit/common/Clock;->fps()F

    move-result v0

    float-to-int v7, v0

    .line 597
    .local v7, "fps":I
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mFpsBuffer:[C

    div-int/lit8 v1, v7, 0xa

    const/16 v3, 0x9

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, v0, v2

    .line 598
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mFpsBuffer:[C

    rem-int/lit8 v1, v7, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, v0, v9

    .line 599
    iget-object v1, p0, Lcom/masshabit/common/Environment;->mFpsBuffer:[C

    const/4 v3, 0x6

    iget v0, p0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    const/high16 v4, 0x42480000    # 50.0f

    sub-float v4, v0, v4

    const/high16 v5, 0x41a00000    # 20.0f

    iget-object v6, p0, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 602
    .end local v7    # "fps":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 603
    const-string v0, "save/restore inbalance"

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    if-ne v8, v1, :cond_1

    move v1, v9

    :goto_0
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 604
    return-void

    :cond_1
    move v1, v2

    .line 603
    goto :goto_0
.end method

.method public enqueueKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 377
    iget-object v1, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/masshabit/common/Environment;->mInputEventPool:Lcom/masshabit/common/InputEventPool;

    invoke-virtual {v2}, Lcom/masshabit/common/InputEventPool;->getAvailable()I

    move-result v2

    if-lez v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/masshabit/common/Environment;->mInputEventPool:Lcom/masshabit/common/InputEventPool;

    invoke-virtual {v2}, Lcom/masshabit/common/InputEventPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/InputEvent;

    .line 382
    .local v0, "event":Lcom/masshabit/common/InputEvent;
    invoke-virtual {v0, p1}, Lcom/masshabit/common/InputEvent;->setEvent(Landroid/view/KeyEvent;)V

    .line 383
    iget-object v2, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v0    # "event":Lcom/masshabit/common/InputEvent;
    :cond_0
    monitor-exit v1

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public enqueueTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 355
    iget-object v1, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v2, p0, Lcom/masshabit/common/Environment;->mInputEventPool:Lcom/masshabit/common/InputEventPool;

    invoke-virtual {v2}, Lcom/masshabit/common/InputEventPool;->getAvailable()I

    move-result v2

    if-lez v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/masshabit/common/Environment;->mInputEventPool:Lcom/masshabit/common/InputEventPool;

    invoke-virtual {v2}, Lcom/masshabit/common/InputEventPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/InputEvent;

    .line 360
    .local v0, "event":Lcom/masshabit/common/InputEvent;
    invoke-virtual {v0, p1}, Lcom/masshabit/common/InputEvent;->setEvent(Landroid/view/MotionEvent;)V

    .line 361
    iget-object v2, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v0    # "event":Lcom/masshabit/common/InputEvent;
    :cond_0
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getArtificiallyPaused()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mArtificiallyPaused:Z

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    const-string v3, "Environment"

    .line 547
    const-string v0, "Environment"

    const-string v0, "threaded init"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/masshabit/squibble/ProfileManager;->create(Landroid/content/Context;)Lcom/masshabit/squibble/ProfileManager;

    .line 553
    sget-object v0, Lcom/masshabit/common/physics/Physics;->mGlobalAcceleration:Lcom/masshabit/common/physics/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x44960000    # 1200.0f

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 555
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 557
    const-string v0, "Environment"

    const-string v0, "Got a bundle, environment resuming..."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    const-string v2, "profile_manager_current_profile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/masshabit/common/ProfileManagerBase;->setCurrentProfile(I)V

    .line 560
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v1, p0, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/Camera;->restoreState(Landroid/os/Bundle;)V

    .line 564
    :cond_0
    const-string v0, "Environment"

    const-string v0, "Starting Game.init"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0}, Lcom/masshabit/squibble/Game;->init()V

    .line 566
    const-string v0, "Environment"

    const-string v0, "Game.init complete"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v0, "Environment"

    const-string v0, "Environment.init complete"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/common/Environment;->mInitialized:Z

    .line 571
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->lockAndUpdateThreadCondition()V

    .line 572
    return-void
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mMuted:Z

    return v0
.end method

.method protected lockAndUpdateThreadCondition()V
    .locals 2

    .prologue
    const-string v1, "Environment"

    .line 144
    const-string v0, "Environment"

    const-string v0, "Locking thread prior to condition update"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 148
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->updateThreadCondition()V

    .line 149
    const-string v0, "Environment"

    const-string v0, "Thread condition updated, releasing lock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 152
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Game;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0, p1, p2}, Lcom/masshabit/squibble/Game;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 309
    return-void
.end method

.method protected purgeEvents()V
    .locals 4

    .prologue
    .line 429
    iget-object v3, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 431
    :try_start_0
    iget-object v2, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 432
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 434
    iget-object v2, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/common/InputEvent;

    invoke-virtual {v2}, Lcom/masshabit/common/InputEvent;->release()V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/masshabit/common/Environment;->mInputQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 437
    monitor-exit v3

    .line 438
    return-void

    .line 437
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 223
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x10

    const-string v9, "EnvironmentThread"

    .line 447
    const-string v0, "EnvironmentThread"

    .line 449
    .local v0, "TAG":Ljava/lang/String;
    const-string v7, "EnvironmentThread"

    const-string v7, "Waiting for signal to init"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v6, 0x1

    .line 453
    .local v6, "wait":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 456
    const-wide/16 v7, 0x10

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_1
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 462
    iget-boolean v7, p0, Lcom/masshabit/common/Environment;->mCanInit:Z

    if-eqz v7, :cond_0

    .line 464
    const/4 v6, 0x0

    .line 467
    :cond_0
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 457
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 470
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v7, "EnvironmentThread"

    const-string v7, "Got signal, initializing"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->init()V

    .line 475
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mClock:Lcom/masshabit/common/Clock;

    invoke-virtual {v7}, Lcom/masshabit/common/Clock;->start()V

    .line 477
    const-string v7, "EnvironmentThread"

    const-string v7, "Entering loop"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_2
    :goto_2
    iget-boolean v7, p0, Lcom/masshabit/common/Environment;->mRunning:Z

    if-eqz v7, :cond_a

    .line 480
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mClock:Lcom/masshabit/common/Clock;

    invoke-virtual {v7}, Lcom/masshabit/common/Clock;->dt()F

    move-result v2

    .line 484
    .local v2, "delta":F
    const v7, 0x3d4ccccd    # 0.05f

    cmpl-float v7, v2, v7

    if-lez v7, :cond_3

    .line 485
    const v2, 0x3d4ccccd    # 0.05f

    .line 487
    :cond_3
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 489
    iget-boolean v7, p0, Lcom/masshabit/common/Environment;->mCanTakeInput:Z

    if-eqz v7, :cond_8

    .line 491
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->dispatchEvents()V

    .line 498
    :goto_3
    iget-boolean v7, p0, Lcom/masshabit/common/Environment;->mCanUpdateLogic:Z

    if-eqz v7, :cond_4

    .line 500
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v7, v2}, Lcom/masshabit/squibble/Game;->update(F)V

    .line 503
    :cond_4
    iget-boolean v7, p0, Lcom/masshabit/common/Environment;->mCanUpdatePhysics:Z

    if-eqz v7, :cond_5

    .line 505
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    invoke-virtual {v7, v2}, Lcom/masshabit/common/physics/Physics;->update(F)V

    .line 508
    :cond_5
    iget-boolean v7, p0, Lcom/masshabit/common/Environment;->mCanDraw:Z

    if-eqz v7, :cond_7

    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v7

    .line 515
    :try_start_1
    iget-object v8, p0, Lcom/masshabit/common/Environment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 516
    invoke-virtual {p0, v1}, Lcom/masshabit/common/Environment;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    if-eqz v1, :cond_6

    :try_start_2
    iget-object v8, p0, Lcom/masshabit/common/Environment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v8, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 522
    :cond_6
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 525
    .end local v1    # "c":Landroid/graphics/Canvas;
    :cond_7
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 528
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mClock:Lcom/masshabit/common/Clock;

    invoke-virtual {v7}, Lcom/masshabit/common/Clock;->msSinceDt()J

    move-result-wide v7

    sub-long v4, v10, v7

    .line 529
    .local v4, "ms":J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_2

    .line 531
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 532
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 495
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "ms":J
    :cond_8
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->purgeEvents()V

    goto :goto_3

    .line 520
    .restart local v1    # "c":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v9, p0, Lcom/masshabit/common/Environment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_9
    throw v8

    .line 522
    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 536
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "delta":F
    :cond_a
    iget-object v7, p0, Lcom/masshabit/common/Environment;->mClock:Lcom/masshabit/common/Clock;

    invoke-virtual {v7}, Lcom/masshabit/common/Clock;->stop()V

    .line 537
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "profile_manager_current_profile"

    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/masshabit/common/ProfileManagerBase;->getCurrentProfile()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/Camera;->saveState(Landroid/os/Bundle;)V

    .line 215
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Game;->saveState(Landroid/os/Bundle;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setArtificiallyPaused(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/masshabit/common/Environment;->mArtificiallyPaused:Z

    .line 278
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->lockAndUpdateThreadCondition()V

    .line 279
    return-void
.end method

.method public setFocused(Z)V
    .locals 3
    .param p1, "focused"    # Z

    .prologue
    .line 267
    const-string v0, "Environment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Environment.setFocused, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iput-boolean p1, p0, Lcom/masshabit/common/Environment;->mFocused:Z

    .line 269
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->lockAndUpdateThreadCondition()V

    .line 270
    return-void
.end method

.method public setMuted(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/masshabit/common/Environment;->mMuted:Z

    .line 250
    const-string v0, "Environment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Muted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mMutedChangedListener:Lcom/masshabit/common/Environment$IMutedChangedListener;

    invoke-interface {v0, p1}, Lcom/masshabit/common/Environment$IMutedChangedListener;->mutedChanged(Z)V

    .line 252
    return-void
.end method

.method public setMutedChangedListener(Lcom/masshabit/common/Environment$IMutedChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/masshabit/common/Environment$IMutedChangedListener;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/masshabit/common/Environment;->mMutedChangedListener:Lcom/masshabit/common/Environment$IMutedChangedListener;

    .line 260
    return-void
.end method

.method public showDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/masshabit/common/Environment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    return-void
.end method

.method public startThread()V
    .locals 2

    .prologue
    .line 315
    const-string v0, "Environment"

    const-string v1, "startThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mRunning:Z

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "EnvironmentThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mRunner:Ljava/lang/Thread;

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/common/Environment;->mRunning:Z

    .line 320
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopThread()V
    .locals 3

    .prologue
    .line 326
    const-string v1, "Environment"

    const-string v2, "stopThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-boolean v1, p0, Lcom/masshabit/common/Environment;->mRunning:Z

    if-nez v1, :cond_1

    .line 342
    :cond_0
    return-void

    .line 329
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/masshabit/common/Environment;->mRunning:Z

    .line 330
    const/4 v0, 0x1

    .line 331
    .local v0, "retry":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/masshabit/common/Environment;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public surfaceDestroyed()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "Environment"

    const-string v1, "Environment.surfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/common/Environment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/common/Environment;->mSurfaceReady:Z

    .line 203
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->updateThreadCondition()V

    .line 205
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 206
    return-void
.end method

.method public surfaceReady(Landroid/view/SurfaceHolder;FF)V
    .locals 7
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "Environment"

    .line 169
    const-string v0, "Environment"

    const-string v0, "Environment.surfaceReady()"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "Environment"

    const-string v0, "Old screen dimensions: %f x %f"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "Environment"

    const-string v0, "New screen dimensions: %f x %f"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget v0, p0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    mul-float v0, p2, p3

    iget v1, p0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    iget v2, p0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "Screen changed resolution!"

    invoke-static {v0, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 179
    :cond_0
    iput p2, p0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    .line 180
    iput p3, p0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    .line 182
    const-string v0, "Environment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v0, "Environment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 189
    iput-object p1, p0, Lcom/masshabit/common/Environment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 190
    iput-boolean v5, p0, Lcom/masshabit/common/Environment;->mSurfaceReady:Z

    .line 191
    invoke-virtual {p0}, Lcom/masshabit/common/Environment;->updateThreadCondition()V

    .line 193
    iget-object v0, p0, Lcom/masshabit/common/Environment;->mThreadLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 194
    return-void
.end method

.method protected updateThreadCondition()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "Environment"

    .line 156
    const-string v0, "Environment"

    const-string v0, "Updating thread condition variables"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mSurfaceReady:Z

    iput-boolean v0, p0, Lcom/masshabit/common/Environment;->mCanInit:Z

    .line 158
    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mSurfaceReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mFocused:Z

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/masshabit/common/Environment;->mCanDraw:Z

    .line 159
    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mFocused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mArtificiallyPaused:Z

    if-nez v0, :cond_1

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/masshabit/common/Environment;->mCanUpdatePhysics:Z

    .line 160
    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mInitialized:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mFocused:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mArtificiallyPaused:Z

    if-nez v0, :cond_2

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/masshabit/common/Environment;->mCanUpdateLogic:Z

    .line 161
    iget-boolean v0, p0, Lcom/masshabit/common/Environment;->mInitialized:Z

    iput-boolean v0, p0, Lcom/masshabit/common/Environment;->mCanTakeInput:Z

    .line 163
    const-string v0, "Environment"

    const-string v0, "THREAD CONDITION: mCanInit=%s, mCanDraw=%s, mCanUpdatePhysics=%s, mCanUpdateLogic=%s, mCanTakeInput=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/masshabit/common/Environment;->mCanInit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/masshabit/common/Environment;->mCanDraw:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/masshabit/common/Environment;->mCanUpdatePhysics:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/masshabit/common/Environment;->mCanUpdateLogic:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/masshabit/common/Environment;->mCanTakeInput:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    :cond_0
    move v0, v3

    .line 158
    goto :goto_0

    :cond_1
    move v0, v3

    .line 159
    goto :goto_1

    :cond_2
    move v0, v3

    .line 160
    goto :goto_2
.end method
