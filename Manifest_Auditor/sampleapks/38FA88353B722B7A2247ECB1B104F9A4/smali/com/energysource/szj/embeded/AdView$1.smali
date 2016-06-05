.class Lcom/energysource/szj/embeded/AdView$1;
.super Landroid/os/Handler;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/energysource/szj/embeded/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/energysource/szj/embeded/AdView;


# direct methods
.method constructor <init>(Lcom/energysource/szj/embeded/AdView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/energysource/szj/embeded/AdView$1;->this$0:Lcom/energysource/szj/embeded/AdView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdView$1;->this$0:Lcom/energysource/szj/embeded/AdView;

    # getter for: Lcom/energysource/szj/embeded/AdView;->running:Z
    invoke-static {v0}, Lcom/energysource/szj/embeded/AdView;->access$000(Lcom/energysource/szj/embeded/AdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdView$1;->this$0:Lcom/energysource/szj/embeded/AdView;

    # invokes: Lcom/energysource/szj/embeded/AdView;->showNext()V
    invoke-static {v0}, Lcom/energysource/szj/embeded/AdView;->access$100(Lcom/energysource/szj/embeded/AdView;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/energysource/szj/embeded/AdView$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdView$1;->this$0:Lcom/energysource/szj/embeded/AdView;

    # getter for: Lcom/energysource/szj/embeded/AdView;->mInterval:J
    invoke-static {v0}, Lcom/energysource/szj/embeded/AdView;->access$200(Lcom/energysource/szj/embeded/AdView;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/energysource/szj/embeded/AdView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 76
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdView$1;->this$0:Lcom/energysource/szj/embeded/AdView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/energysource/szj/embeded/AdView;->adtime_in:J
    invoke-static {v0, v1, v2}, Lcom/energysource/szj/embeded/AdView;->access$302(Lcom/energysource/szj/embeded/AdView;J)J

    goto :goto_0

    .line 80
    :pswitch_1
    # getter for: Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;
    invoke-static {}, Lcom/energysource/szj/embeded/AdView;->access$400()Lcom/energysource/szj/embeded/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView$1;->this$0:Lcom/energysource/szj/embeded/AdView;

    invoke-virtual {v1}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdManager;->requestAdvById(I)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
