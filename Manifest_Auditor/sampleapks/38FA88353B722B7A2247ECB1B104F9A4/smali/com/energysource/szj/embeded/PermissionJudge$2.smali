.class final Lcom/energysource/szj/embeded/PermissionJudge$2;
.super Landroid/os/Handler;
.source "PermissionJudge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/energysource/szj/embeded/PermissionJudge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    const-string v0, "===\u68c0\u67e5\u6743\u9650\u914d\u7f6e====="

    const-string v1, "============"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    # getter for: Lcom/energysource/szj/embeded/PermissionJudge;->cxt:Landroid/content/Context;
    invoke-static {}, Lcom/energysource/szj/embeded/PermissionJudge;->access$000()Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/energysource/szj/embeded/PermissionJudge;->checkPermission(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/energysource/szj/embeded/PermissionJudge;->access$100(Landroid/content/Context;)V

    .line 70
    return-void
.end method
