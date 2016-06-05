.class Lcom/keji/danti/a/pb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ph;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ph;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/pb;->a:Lcom/keji/danti/a/ph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/keji/danti/a/pb;->a:Lcom/keji/danti/a/ph;

    iget-object v1, v1, Lcom/keji/danti/a/ph;->b:Lcom/keji/danti/a/ss;

    iget-object v1, v1, Lcom/keji/danti/a/ss;->a:Lcom/keji/danti/History;

    const-class v2, Lcom/keji/danti/TextDetail;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "notSaveDate"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/keji/danti/a/pb;->a:Lcom/keji/danti/a/ph;

    iget-object v1, v1, Lcom/keji/danti/a/ph;->b:Lcom/keji/danti/a/ss;

    iget-object v1, v1, Lcom/keji/danti/a/ss;->a:Lcom/keji/danti/History;

    invoke-virtual {v1, v0}, Lcom/keji/danti/History;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
