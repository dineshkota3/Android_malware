.class Lcom/keji/danti/a/sw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/k;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/sw;->a:Lcom/keji/danti/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/keji/danti/a/sw;->a:Lcom/keji/danti/a/k;

    iget-object v0, v0, Lcom/keji/danti/a/k;->a:Lcom/keji/danti/a/aq;

    iget-object v0, v0, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    iget-object v1, p0, Lcom/keji/danti/a/sw;->a:Lcom/keji/danti/a/k;

    iget-object v1, v1, Lcom/keji/danti/a/k;->a:Lcom/keji/danti/a/aq;

    const-string v2, "id"

    const-string v3, "l"

    invoke-virtual {v1, v2, v3}, Lcom/keji/danti/a/aq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keji/danti/Background;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "book_textdetail_background"

    iget-object v2, p0, Lcom/keji/danti/a/sw;->a:Lcom/keji/danti/a/k;

    iget-object v2, v2, Lcom/keji/danti/a/k;->a:Lcom/keji/danti/a/aq;

    invoke-static {v2}, Lcom/keji/danti/a/aq;->a(Lcom/keji/danti/a/aq;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/keji/danti/util/pi;->a(Ljava/lang/String;I)Lcom/keji/danti/util/pi;

    sget-object v1, Lcom/keji/danti/a/aq;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    invoke-virtual {v0}, Lcom/keji/danti/MainA;->getKernel()Lcom/keji/danti/a/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keji/danti/a/n;->a(I)V

    iget-object v0, p0, Lcom/keji/danti/a/sw;->a:Lcom/keji/danti/a/k;

    iget-object v0, v0, Lcom/keji/danti/a/k;->a:Lcom/keji/danti/a/aq;

    iget-object v0, v0, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    invoke-virtual {v0}, Lcom/keji/danti/Background;->finish()V

    return-void
.end method
