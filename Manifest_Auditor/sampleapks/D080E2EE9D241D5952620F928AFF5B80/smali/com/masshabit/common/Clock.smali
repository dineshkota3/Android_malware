.class public Lcom/masshabit/common/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/common/Clock$Time;
    }
.end annotation


# static fields
.field protected static final FPS_MOVING_AVERAGE_ALPHA:F = 0.05f

.field public static final TAG:Ljava/lang/String; = "Clock"


# instance fields
.field protected mCurrent:J

.field protected mFps:F

.field protected mLastTickTime:J

.field protected mLeftoverDt:J

.field protected mRunning:Z

.field protected mStartTime:J

.field protected mTotal:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public dt()F
    .locals 8

    .prologue
    .line 64
    const-string v4, "Clock is not running!"

    iget-boolean v5, p0, Lcom/masshabit/common/Clock;->mRunning:Z

    invoke-static {v4, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 66
    .local v2, "now":J
    iget-wide v4, p0, Lcom/masshabit/common/Clock;->mTotal:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lcom/masshabit/common/Clock;->mStartTime:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/masshabit/common/Clock;->mCurrent:J

    .line 68
    iget-wide v4, p0, Lcom/masshabit/common/Clock;->mLastTickTime:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/masshabit/common/Clock;->mLeftoverDt:J

    add-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v0, v4, v5

    .line 69
    .local v0, "dt":F
    iput-wide v2, p0, Lcom/masshabit/common/Clock;->mLastTickTime:J

    .line 70
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/masshabit/common/Clock;->mLeftoverDt:J

    .line 72
    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 74
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v1, v4, v0

    .line 75
    .local v1, "instantFps":F
    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v1

    const v5, 0x3f733333    # 0.95f

    iget v6, p0, Lcom/masshabit/common/Clock;->mFps:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/masshabit/common/Clock;->mFps:F

    .line 77
    .end local v1    # "instantFps":F
    :cond_0
    return v0
.end method

.method public fps()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/masshabit/common/Clock;->mFps:F

    return v0
.end method

.method public getTime()Lcom/masshabit/common/Clock$Time;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/masshabit/common/Clock$Time;

    iget-wide v1, p0, Lcom/masshabit/common/Clock;->mCurrent:J

    invoke-direct {v0, p0, v1, v2}, Lcom/masshabit/common/Clock$Time;-><init>(Lcom/masshabit/common/Clock;J)V

    return-object v0
.end method

.method public getTimeRaw()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/masshabit/common/Clock;->mCurrent:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/masshabit/common/Clock;->mRunning:Z

    return v0
.end method

.method public msSinceDt()J
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/masshabit/common/Clock;->mLastTickTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 93
    .local v0, "now":J
    iput-wide v0, p0, Lcom/masshabit/common/Clock;->mStartTime:J

    .line 94
    iput-wide v0, p0, Lcom/masshabit/common/Clock;->mLastTickTime:J

    .line 95
    iput-wide v2, p0, Lcom/masshabit/common/Clock;->mTotal:J

    .line 96
    iput-wide v2, p0, Lcom/masshabit/common/Clock;->mCurrent:J

    .line 97
    iput-wide v2, p0, Lcom/masshabit/common/Clock;->mLeftoverDt:J

    .line 98
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "Clock"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v0, p0, Lcom/masshabit/common/Clock;->mRunning:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/masshabit/common/Clock;->mStartTime:J

    .line 111
    iget-wide v0, p0, Lcom/masshabit/common/Clock;->mStartTime:J

    iput-wide v0, p0, Lcom/masshabit/common/Clock;->mLastTickTime:J

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/common/Clock;->mRunning:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 117
    const-string v2, "Clock"

    const-string v3, "stop()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-boolean v2, p0, Lcom/masshabit/common/Clock;->mRunning:Z

    if-nez v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 121
    .local v0, "now":J
    iget-wide v2, p0, Lcom/masshabit/common/Clock;->mTotal:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/masshabit/common/Clock;->mStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/masshabit/common/Clock;->mCurrent:J

    .line 122
    iget-wide v2, p0, Lcom/masshabit/common/Clock;->mCurrent:J

    iput-wide v2, p0, Lcom/masshabit/common/Clock;->mTotal:J

    .line 123
    iget-wide v2, p0, Lcom/masshabit/common/Clock;->mLastTickTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/masshabit/common/Clock;->mLeftoverDt:J

    .line 124
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/masshabit/common/Clock;->mRunning:Z

    goto :goto_0
.end method
