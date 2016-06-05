.class Lcom/keji/danti/a/sv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/pc;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/pc;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/sv;->a:Lcom/keji/danti/a/pc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/keji/danti/a/sv;->a:Lcom/keji/danti/a/pc;

    iget-object v0, v0, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    invoke-static {v0}, Lcom/keji/danti/a/su;->a(Landroid/app/Activity;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/keji/danti/a/sv;->a:Lcom/keji/danti/a/pc;

    iget-object v1, v1, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    const-class v2, Lcom/keji/danti/TextDetail;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "book_firstVisibleItem_index"

    invoke-static {v2, v1}, Lcom/keji/danti/util/pi;->a(Ljava/lang/String;I)Lcom/keji/danti/util/pi;

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/keji/danti/a/sv;->a:Lcom/keji/danti/a/pc;

    iget-object v1, v1, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    invoke-virtual {v1, v0}, Lcom/keji/danti/Lists;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
