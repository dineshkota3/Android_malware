.class Lcom/keji/danti/a/ap;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/n;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/ap;->a:Lcom/keji/danti/a/n;

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
    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    iget-object v0, v0, Lcom/keji/danti/MainA;->tabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/keji/danti/a/ap;->a:Lcom/keji/danti/a/n;

    invoke-virtual {v0}, Lcom/keji/danti/a/n;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
