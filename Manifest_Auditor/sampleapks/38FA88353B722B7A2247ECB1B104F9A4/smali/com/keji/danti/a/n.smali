.class public Lcom/keji/danti/a/n;
.super Lcom/keji/danti/a/f;

# interfaces
.implements Lcom/keji/danti/a/l;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/keji/danti/a/f;-><init>()V

    new-instance v0, Lcom/keji/danti/a/ap;

    invoke-direct {v0, p0}, Lcom/keji/danti/a/ap;-><init>(Lcom/keji/danti/a/n;)V

    iput-object v0, p0, Lcom/keji/danti/a/n;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/keji/danti/a/l;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/keji/danti/util/ak;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/keji/danti/a/n;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    invoke-virtual {v0, v5}, Lcom/keji/danti/MainA;->requestWindowFeature(I)Z

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    invoke-virtual {v0}, Lcom/keji/danti/MainA;->initTabHost()V

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    const-string v1, "home"

    const-string v2, "\u4e3b\u9875"

    const-string v3, "drawable"

    const-string v4, "minindex"

    invoke-virtual {p0, v3, v4}, Lcom/keji/danti/a/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-class v4, Lcom/keji/danti/Lists;

    invoke-virtual/range {v0 .. v5}, Lcom/keji/danti/MainA;->addTab(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Z)V

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    const-string v1, "history"

    const-string v2, "\u5386\u53f2"

    const-string v3, "drawable"

    const-string v4, "minhistory"

    invoke-virtual {p0, v3, v4}, Lcom/keji/danti/a/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-class v4, Lcom/keji/danti/History;

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/keji/danti/MainA;->addTab(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Z)V

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    const-string v1, "jinping"

    const-string v2, "\u7cbe\u54c1"

    const-string v3, "drawable"

    const-string v4, "minjp"

    invoke-virtual {p0, v3, v4}, Lcom/keji/danti/a/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-class v4, Lcom/keji/danti/Boutique;

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/keji/danti/MainA;->addTab(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Z)V

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    new-instance v1, Lcom/keji/danti/a/am;

    invoke-direct {v1, p0}, Lcom/keji/danti/a/am;-><init>(Lcom/keji/danti/a/n;)V

    invoke-virtual {v0, v1}, Lcom/keji/danti/MainA;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-virtual {p0}, Lcom/keji/danti/a/n;->a()V

    move-object v0, p0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    const/4 v1, -0x1

    const-string v0, "book_textdetail_background"

    invoke-static {v0, v1}, Lcom/keji/danti/util/pi;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    iget-object v0, v0, Lcom/keji/danti/MainA;->tabHost:Landroid/widget/TabHost;

    const-string v1, "drawable"

    const-string v2, "p1"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    iget-object v1, v1, Lcom/keji/danti/MainA;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/keji/danti/a/n;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
