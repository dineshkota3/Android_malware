.class Lcom/keji/danti/a/al;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ao;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/al;->a:Lcom/keji/danti/a/ao;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keji/danti/a/j;

    invoke-direct {v1, p0}, Lcom/keji/danti/a/j;-><init>(Lcom/keji/danti/a/al;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/keji/danti/a/al;->a:Lcom/keji/danti/a/ao;

    iget-object v1, p0, Lcom/keji/danti/a/al;->a:Lcom/keji/danti/a/ao;

    iget-object v1, v1, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    iget-object v1, v1, Lcom/keji/danti/Boutique;->list:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/keji/danti/a/ao;->a(Lcom/keji/danti/a/ao;Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/keji/danti/a/al;->a:Lcom/keji/danti/a/ao;

    iget-object v0, v0, Lcom/keji/danti/a/ao;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
