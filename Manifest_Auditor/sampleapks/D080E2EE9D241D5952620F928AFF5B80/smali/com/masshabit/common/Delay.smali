.class public Lcom/masshabit/common/Delay;
.super Ljava/lang/Object;
.source "Delay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/common/Delay$IDelayCompleteListener;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/masshabit/common/Delay$IDelayCompleteListener;

.field protected mDone:Z

.field protected mDuration:F

.field protected mElapsed:F

.field protected mMadeCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/masshabit/common/Delay;-><init>(Lcom/masshabit/common/Delay$IDelayCompleteListener;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/masshabit/common/Delay$IDelayCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/masshabit/common/Delay$IDelayCompleteListener;

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/masshabit/common/Delay;->mCallback:Lcom/masshabit/common/Delay$IDelayCompleteListener;

    .line 22
    iput-boolean v0, p0, Lcom/masshabit/common/Delay;->mDone:Z

    .line 23
    iput-boolean v0, p0, Lcom/masshabit/common/Delay;->mMadeCallback:Z

    .line 24
    return-void
.end method


# virtual methods
.method public isDone()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/masshabit/common/Delay;->mDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/masshabit/common/Delay;->mMadeCallback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/masshabit/common/Delay;->mDuration:F

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "elapsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/masshabit/common/Delay;->mElapsed:F

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/masshabit/common/Delay;->mDone:Z

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "made_callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/masshabit/common/Delay;->mMadeCallback:Z

    .line 60
    return-void
.end method

.method public saveState(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/os/Bundle;

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/masshabit/common/Delay;->mDuration:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "elapsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/masshabit/common/Delay;->mElapsed:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/masshabit/common/Delay;->mDone:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "made_callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/masshabit/common/Delay;->mMadeCallback:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public start(F)V
    .locals 3
    .param p1, "duration"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 39
    iput-boolean v2, p0, Lcom/masshabit/common/Delay;->mMadeCallback:Z

    .line 40
    iput-boolean v2, p0, Lcom/masshabit/common/Delay;->mDone:Z

    .line 41
    iput v1, p0, Lcom/masshabit/common/Delay;->mElapsed:F

    .line 42
    iput p1, p0, Lcom/masshabit/common/Delay;->mDuration:F

    .line 43
    const-string v0, "duration must be > 0"

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 44
    return-void

    :cond_0
    move v1, v2

    .line 43
    goto :goto_0
.end method

.method public update(F)V
    .locals 3
    .param p1, "dt"    # F

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-boolean v0, p0, Lcom/masshabit/common/Delay;->mDone:Z

    if-nez v0, :cond_1

    .line 66
    iget v0, p0, Lcom/masshabit/common/Delay;->mElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/masshabit/common/Delay;->mElapsed:F

    .line 67
    iget v0, p0, Lcom/masshabit/common/Delay;->mElapsed:F

    iget v1, p0, Lcom/masshabit/common/Delay;->mDuration:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 69
    iput-boolean v2, p0, Lcom/masshabit/common/Delay;->mDone:Z

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-boolean v0, p0, Lcom/masshabit/common/Delay;->mMadeCallback:Z

    if-nez v0, :cond_0

    .line 74
    iput-boolean v2, p0, Lcom/masshabit/common/Delay;->mMadeCallback:Z

    .line 75
    iget-object v0, p0, Lcom/masshabit/common/Delay;->mCallback:Lcom/masshabit/common/Delay$IDelayCompleteListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/masshabit/common/Delay;->mCallback:Lcom/masshabit/common/Delay$IDelayCompleteListener;

    invoke-interface {v0, p0}, Lcom/masshabit/common/Delay$IDelayCompleteListener;->delayComplete(Lcom/masshabit/common/Delay;)V

    goto :goto_0
.end method
