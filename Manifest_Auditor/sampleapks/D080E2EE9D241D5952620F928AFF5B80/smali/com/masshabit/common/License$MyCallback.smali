.class public Lcom/masshabit/common/License$MyCallback;
.super Ljava/lang/Object;
.source "License.java"

# interfaces
.implements Lcom/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/common/License;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyCallback"
.end annotation


# instance fields
.field public final DELAY:J

.field final synthetic this$0:Lcom/masshabit/common/License;


# direct methods
.method protected constructor <init>(Lcom/masshabit/common/License;)V
    .locals 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/masshabit/common/License$MyCallback;->this$0:Lcom/masshabit/common/License;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/masshabit/common/License$MyCallback;->DELAY:J

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 7

    .prologue
    const-string v6, "License"

    .line 54
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    const-string v1, "License"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License check took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/masshabit/common/License$MyCallback;->this$0:Lcom/masshabit/common/License;

    # getter for: Lcom/masshabit/common/License;->mStartCheckTime:J
    invoke-static {v4}, Lcom/masshabit/common/License;->access$000(Lcom/masshabit/common/License;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/masshabit/common/License$MyCallback;->this$0:Lcom/masshabit/common/License;

    const/4 v2, 0x1

    # setter for: Lcom/masshabit/common/License;->mStatus:I
    invoke-static {v1, v2}, Lcom/masshabit/common/License;->access$102(Lcom/masshabit/common/License;I)I

    .line 62
    const-string v1, "License"

    const-string v1, "License server responded positive"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public applicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V
    .locals 7
    .param p1, "errorCode"    # Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    .prologue
    const-string v6, "License"

    .line 69
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    const-string v1, "License"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License check took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/masshabit/common/License$MyCallback;->this$0:Lcom/masshabit/common/License;

    # getter for: Lcom/masshabit/common/License;->mStartCheckTime:J
    invoke-static {v4}, Lcom/masshabit/common/License;->access$000(Lcom/masshabit/common/License;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/masshabit/common/License$MyCallback;->this$0:Lcom/masshabit/common/License;

    const/4 v2, 0x3

    # setter for: Lcom/masshabit/common/License;->mStatus:I
    invoke-static {v1, v2}, Lcom/masshabit/common/License;->access$102(Lcom/masshabit/common/License;I)I

    .line 78
    const-string v1, "License"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License server responded with error, code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public dontAllow()V
    .locals 7

    .prologue
    const-string v6, "License"

    .line 85
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    const-string v1, "License"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License check took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/masshabit/common/License$MyCallback;->this$0:Lcom/masshabit/common/License;

    # getter for: Lcom/masshabit/common/License;->mStartCheckTime:J
    invoke-static {v4}, Lcom/masshabit/common/License;->access$000(Lcom/masshabit/common/License;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/masshabit/common/License$MyCallback;->this$0:Lcom/masshabit/common/License;

    const/4 v2, 0x2

    # setter for: Lcom/masshabit/common/License;->mStatus:I
    invoke-static {v1, v2}, Lcom/masshabit/common/License;->access$102(Lcom/masshabit/common/License;I)I

    .line 93
    const-string v1, "License"

    const-string v1, "License server responded negative"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
