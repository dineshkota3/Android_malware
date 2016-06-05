.class Lcom/keji/danti/a/pd;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ph;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ph;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/pd;->a:Lcom/keji/danti/a/ph;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keji/danti/a/b;

    invoke-direct {v1, p0}, Lcom/keji/danti/a/b;-><init>(Lcom/keji/danti/a/pd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/keji/danti/a/pd;->a:Lcom/keji/danti/a/ph;

    iget-object v0, v0, Lcom/keji/danti/a/ph;->b:Lcom/keji/danti/a/ss;

    iget-object v0, v0, Lcom/keji/danti/a/ss;->a:Lcom/keji/danti/History;

    invoke-virtual {v0}, Lcom/keji/danti/History;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/keji/danti/a/pd;->a:Lcom/keji/danti/a/ph;

    iget-object v0, v0, Lcom/keji/danti/a/ph;->b:Lcom/keji/danti/a/ss;

    iget-object v0, v0, Lcom/keji/danti/a/ss;->a:Lcom/keji/danti/History;

    invoke-virtual {v0}, Lcom/keji/danti/History;->expandableListView()V

    sget-object v0, Lcom/keji/danti/History;->history:Lcom/keji/danti/History;

    iget-object v0, v0, Lcom/keji/danti/History;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keji/danti/History;->history:Lcom/keji/danti/History;

    iget-object v0, v0, Lcom/keji/danti/History;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
