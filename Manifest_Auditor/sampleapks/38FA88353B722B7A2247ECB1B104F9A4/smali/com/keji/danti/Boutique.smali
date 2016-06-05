.class public Lcom/keji/danti/Boutique;
.super Landroid/app/ListActivity;


# static fields
.field public static boutique:Lcom/keji/danti/Boutique;

.field public static pd:Landroid/app/ProgressDialog;


# instance fields
.field a:Lcom/keji/danti/a/ao;

.field b:Landroid/content/Context;

.field public list:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/keji/danti/Boutique;->boutique:Lcom/keji/danti/Boutique;

    sput-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/Boutique;->list:Ljava/util/List;

    iput-object v0, p0, Lcom/keji/danti/Boutique;->a:Lcom/keji/danti/a/ao;

    iput-object v0, p0, Lcom/keji/danti/Boutique;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    const-string v1, "\u83b7\u53d6\u6570\u636e\u4e2d\uff0c\u8bf7\u7a0d\u7b49..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/keji/danti/Boutique;->a:Lcom/keji/danti/a/ao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/keji/danti/a/ao;

    invoke-direct {v0}, Lcom/keji/danti/a/ao;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/Boutique;->a:Lcom/keji/danti/a/ao;

    :cond_0
    iget-object v0, p0, Lcom/keji/danti/Boutique;->a:Lcom/keji/danti/a/ao;

    iget-object v1, p0, Lcom/keji/danti/Boutique;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/keji/danti/a/ao;->a(Landroid/content/Context;)Lcom/keji/danti/a/l;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/keji/danti/Boutique;->b:Landroid/content/Context;

    sput-object p0, Lcom/keji/danti/Boutique;->boutique:Lcom/keji/danti/Boutique;

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/keji/danti/Boutique;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keji/danti/Boutique;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/keji/danti/Boutique;->list:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keji/danti/a/an;

    iget-object v0, v0, Lcom/keji/danti/a/an;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/keji/danti/Boutique;->a:Lcom/keji/danti/a/ao;

    invoke-virtual {v1, v0}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
