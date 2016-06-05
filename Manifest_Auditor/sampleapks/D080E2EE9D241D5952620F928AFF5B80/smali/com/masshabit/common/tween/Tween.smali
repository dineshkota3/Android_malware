.class public Lcom/masshabit/common/tween/Tween;
.super Ljava/lang/Object;
.source "Tween.java"


# instance fields
.field protected mCallback:Lcom/masshabit/common/tween/ITweenCompleteListener;

.field protected mDone:Z

.field public mDst:F

.field public mDuration:F

.field protected mEase:Lcom/masshabit/common/tween/Ease$EaseBase;

.field public mElapsed:F

.field protected mMadeCallback:Z

.field public mSrc:F

.field public mValue:F


# direct methods
.method public constructor <init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V
    .locals 1
    .param p1, "listener"    # Lcom/masshabit/common/tween/ITweenCompleteListener;
    .param p2, "ease"    # Lcom/masshabit/common/tween/Ease$EaseBase;

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/masshabit/common/tween/Tween;->mDone:Z

    .line 24
    iput-boolean v0, p0, Lcom/masshabit/common/tween/Tween;->mMadeCallback:Z

    .line 25
    iput-object p1, p0, Lcom/masshabit/common/tween/Tween;->mCallback:Lcom/masshabit/common/tween/ITweenCompleteListener;

    .line 26
    iput-object p2, p0, Lcom/masshabit/common/tween/Tween;->mEase:Lcom/masshabit/common/tween/Ease$EaseBase;

    .line 27
    return-void
.end method


# virtual methods
.method public init(FFF)V
    .locals 3
    .param p1, "src"    # F
    .param p2, "dst"    # F
    .param p3, "duration"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/masshabit/common/tween/Tween;->mMadeCallback:Z

    .line 32
    iput-boolean v1, p0, Lcom/masshabit/common/tween/Tween;->mDone:Z

    .line 33
    iput p1, p0, Lcom/masshabit/common/tween/Tween;->mSrc:F

    .line 34
    iput p2, p0, Lcom/masshabit/common/tween/Tween;->mDst:F

    .line 35
    iput p1, p0, Lcom/masshabit/common/tween/Tween;->mValue:F

    .line 36
    iput v2, p0, Lcom/masshabit/common/tween/Tween;->mElapsed:F

    .line 37
    iput p3, p0, Lcom/masshabit/common/tween/Tween;->mDuration:F

    .line 38
    iget v0, p0, Lcom/masshabit/common/tween/Tween;->mDuration:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 39
    return-void

    :cond_0
    move v0, v1

    .line 38
    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/masshabit/common/tween/Tween;->mMadeCallback:Z

    return v0
.end method

.method public update(F)V
    .locals 4
    .param p1, "dt"    # F

    .prologue
    const/4 v3, 0x1

    .line 43
    iget-boolean v1, p0, Lcom/masshabit/common/tween/Tween;->mDone:Z

    if-nez v1, :cond_3

    .line 45
    iget v1, p0, Lcom/masshabit/common/tween/Tween;->mElapsed:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/masshabit/common/tween/Tween;->mElapsed:F

    .line 46
    iget v1, p0, Lcom/masshabit/common/tween/Tween;->mElapsed:F

    iget v2, p0, Lcom/masshabit/common/tween/Tween;->mDuration:F

    div-float v0, v1, v2

    .line 47
    .local v0, "t":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 49
    iput-boolean v3, p0, Lcom/masshabit/common/tween/Tween;->mDone:Z

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/masshabit/common/tween/Tween;->mEase:Lcom/masshabit/common/tween/Ease$EaseBase;

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/masshabit/common/tween/Tween;->mEase:Lcom/masshabit/common/tween/Ease$EaseBase;

    invoke-virtual {v1, v0}, Lcom/masshabit/common/tween/Ease$EaseBase;->ease(F)F

    move-result v0

    .line 56
    :cond_1
    iget v1, p0, Lcom/masshabit/common/tween/Tween;->mSrc:F

    iget v2, p0, Lcom/masshabit/common/tween/Tween;->mDst:F

    iget v3, p0, Lcom/masshabit/common/tween/Tween;->mSrc:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/masshabit/common/tween/Tween;->mValue:F

    .line 66
    .end local v0    # "t":F
    :cond_2
    :goto_0
    return-void

    .line 58
    :cond_3
    iget-boolean v1, p0, Lcom/masshabit/common/tween/Tween;->mMadeCallback:Z

    if-nez v1, :cond_2

    .line 60
    iput-boolean v3, p0, Lcom/masshabit/common/tween/Tween;->mMadeCallback:Z

    .line 61
    iget-object v1, p0, Lcom/masshabit/common/tween/Tween;->mCallback:Lcom/masshabit/common/tween/ITweenCompleteListener;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/masshabit/common/tween/Tween;->mCallback:Lcom/masshabit/common/tween/ITweenCompleteListener;

    invoke-interface {v1, p0}, Lcom/masshabit/common/tween/ITweenCompleteListener;->tweenComplete(Ljava/lang/Object;)V

    goto :goto_0
.end method
