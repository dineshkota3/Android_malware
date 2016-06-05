.class Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;
.super Landroid/os/Handler;
.source "SZJClassLoad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/energysource/szj/embeded/SZJClassLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/energysource/szj/embeded/SZJClassLoad;


# direct methods
.method public constructor <init>(Lcom/energysource/szj/embeded/SZJClassLoad;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;->this$0:Lcom/energysource/szj/embeded/SZJClassLoad;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/energysource/szj/embeded/SZJClassLoad;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;->this$0:Lcom/energysource/szj/embeded/SZJClassLoad;

    .line 45
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;->this$0:Lcom/energysource/szj/embeded/SZJClassLoad;

    invoke-virtual {v0}, Lcom/energysource/szj/embeded/SZJClassLoad;->startClassLoad()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
