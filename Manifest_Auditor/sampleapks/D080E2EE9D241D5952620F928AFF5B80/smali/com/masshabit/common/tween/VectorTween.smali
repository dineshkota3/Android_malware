.class public Lcom/masshabit/common/tween/VectorTween;
.super Ljava/lang/Object;
.source "VectorTween.java"


# instance fields
.field protected mCallback:Lcom/masshabit/common/tween/ITweenCompleteListener;

.field protected mDone:Z

.field protected mMadeCallback:Z

.field protected mTweenX:Lcom/masshabit/common/tween/Tween;

.field protected mTweenY:Lcom/masshabit/common/tween/Tween;

.field public mValue:Lcom/masshabit/common/physics/Vector2;


# direct methods
.method public constructor <init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V
    .locals 3
    .param p1, "listener"    # Lcom/masshabit/common/tween/ITweenCompleteListener;
    .param p2, "ease"    # Lcom/masshabit/common/tween/Ease$EaseBase;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mValue:Lcom/masshabit/common/physics/Vector2;

    .line 21
    iput-object p1, p0, Lcom/masshabit/common/tween/VectorTween;->mCallback:Lcom/masshabit/common/tween/ITweenCompleteListener;

    .line 22
    new-instance v0, Lcom/masshabit/common/tween/Tween;

    invoke-direct {v0, v2, p2}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenX:Lcom/masshabit/common/tween/Tween;

    .line 23
    new-instance v0, Lcom/masshabit/common/tween/Tween;

    invoke-direct {v0, v2, p2}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenY:Lcom/masshabit/common/tween/Tween;

    .line 24
    iput-boolean v1, p0, Lcom/masshabit/common/tween/VectorTween;->mMadeCallback:Z

    .line 25
    iput-boolean v1, p0, Lcom/masshabit/common/tween/VectorTween;->mDone:Z

    .line 26
    return-void
.end method


# virtual methods
.method public init(FFFFF)V
    .locals 3
    .param p1, "srcX"    # F
    .param p2, "srcY"    # F
    .param p3, "dstX"    # F
    .param p4, "dstY"    # F
    .param p5, "duration"    # F

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/common/tween/VectorTween;->mMadeCallback:Z

    .line 39
    iget-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenX:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p1, p3, p5}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 40
    iget-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenY:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p2, p4, p5}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 41
    iget-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mValue:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenX:Lcom/masshabit/common/tween/Tween;

    iget v1, v1, Lcom/masshabit/common/tween/Tween;->mValue:F

    iget-object v2, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenY:Lcom/masshabit/common/tween/Tween;

    iget v2, v2, Lcom/masshabit/common/tween/Tween;->mValue:F

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 42
    return-void
.end method

.method public init(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;F)V
    .locals 7
    .param p1, "src"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "dst"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "duration"    # F

    .prologue
    const/4 v6, 0x0

    .line 30
    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v2, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v3, p2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v4, p2, Lcom/masshabit/common/physics/Vector2;->y:F

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/masshabit/common/tween/VectorTween;->init(FFFFF)V

    .line 31
    iput-boolean v6, p0, Lcom/masshabit/common/tween/VectorTween;->mDone:Z

    .line 32
    iput-boolean v6, p0, Lcom/masshabit/common/tween/VectorTween;->mMadeCallback:Z

    .line 33
    return-void
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/masshabit/common/tween/VectorTween;->mMadeCallback:Z

    return v0
.end method

.method public update(F)V
    .locals 4
    .param p1, "dt"    # F

    .prologue
    const/4 v3, 0x1

    .line 46
    iget-boolean v0, p0, Lcom/masshabit/common/tween/VectorTween;->mDone:Z

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenX:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 49
    iget-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenY:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 50
    iget-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mValue:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenX:Lcom/masshabit/common/tween/Tween;

    iget v1, v1, Lcom/masshabit/common/tween/Tween;->mValue:F

    iget-object v2, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenY:Lcom/masshabit/common/tween/Tween;

    iget v2, v2, Lcom/masshabit/common/tween/Tween;->mValue:F

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 51
    iget-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenX:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0}, Lcom/masshabit/common/tween/Tween;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mTweenY:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0}, Lcom/masshabit/common/tween/Tween;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-boolean v3, p0, Lcom/masshabit/common/tween/VectorTween;->mDone:Z

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-boolean v0, p0, Lcom/masshabit/common/tween/VectorTween;->mMadeCallback:Z

    if-nez v0, :cond_0

    .line 58
    iput-boolean v3, p0, Lcom/masshabit/common/tween/VectorTween;->mMadeCallback:Z

    .line 59
    iget-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mCallback:Lcom/masshabit/common/tween/ITweenCompleteListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/masshabit/common/tween/VectorTween;->mCallback:Lcom/masshabit/common/tween/ITweenCompleteListener;

    invoke-interface {v0, p0}, Lcom/masshabit/common/tween/ITweenCompleteListener;->tweenComplete(Ljava/lang/Object;)V

    goto :goto_0
.end method
