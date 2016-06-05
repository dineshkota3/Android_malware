.class Lcom/keji/danti/a/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ar;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/g;->a:Lcom/keji/danti/a/ar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/keji/danti/a/g;->a:Lcom/keji/danti/a/ar;

    invoke-virtual {v0}, Lcom/keji/danti/a/ar;->b()V

    iget-object v0, p0, Lcom/keji/danti/a/g;->a:Lcom/keji/danti/a/ar;

    invoke-virtual {v0}, Lcom/keji/danti/a/ar;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
