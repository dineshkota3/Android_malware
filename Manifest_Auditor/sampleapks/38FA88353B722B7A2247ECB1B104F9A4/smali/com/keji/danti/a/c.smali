.class Lcom/keji/danti/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ar;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/c;->a:Lcom/keji/danti/a/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/keji/danti/a/c;->a:Lcom/keji/danti/a/ar;

    invoke-static {v0}, Lcom/keji/danti/a/ar;->e(Lcom/keji/danti/a/ar;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/keji/danti/a/c;->a:Lcom/keji/danti/a/ar;

    invoke-static {v1}, Lcom/keji/danti/a/ar;->f(Lcom/keji/danti/a/ar;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "book_textdetail_speed"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/keji/danti/util/pi;->b(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/keji/danti/a/c;->a:Lcom/keji/danti/a/ar;

    invoke-static {v2}, Lcom/keji/danti/a/ar;->f(Lcom/keji/danti/a/ar;)Landroid/widget/ScrollView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    iget-object v1, p0, Lcom/keji/danti/a/c;->a:Lcom/keji/danti/a/ar;

    invoke-static {v1}, Lcom/keji/danti/a/ar;->f(Lcom/keji/danti/a/ar;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/keji/danti/a/c;->a:Lcom/keji/danti/a/ar;

    invoke-static {v0}, Lcom/keji/danti/a/ar;->g(Lcom/keji/danti/a/ar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keji/danti/a/c;->a:Lcom/keji/danti/a/ar;

    invoke-static {v0}, Lcom/keji/danti/a/ar;->d(Lcom/keji/danti/a/ar;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
