.class Lcom/energysource/szj/embeded/PermissionJudge$1;
.super Ljava/lang/Object;
.source "PermissionJudge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/energysource/szj/embeded/PermissionJudge;->openSwitchFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/energysource/szj/embeded/PermissionJudge;


# direct methods
.method constructor <init>(Lcom/energysource/szj/embeded/PermissionJudge;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/energysource/szj/embeded/PermissionJudge$1;->this$0:Lcom/energysource/szj/embeded/PermissionJudge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/energysource/szj/embeded/PermissionJudge;->adHandler:Landroid/os/Handler;

    sget-object v1, Lcom/energysource/szj/embeded/PermissionJudge;->adHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    return-void
.end method
