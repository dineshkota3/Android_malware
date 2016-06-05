.class Lcom/keji/danti/ph;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/Lists;


# direct methods
.method constructor <init>(Lcom/keji/danti/Lists;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/ph;->a:Lcom/keji/danti/Lists;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/keji/danti/ph;->a:Lcom/keji/danti/Lists;

    const-class v2, Lcom/keji/danti/TextDetail;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "book_lastRead_id"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/keji/danti/util/pi;->b(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/keji/danti/ph;->a:Lcom/keji/danti/Lists;

    invoke-virtual {v1, v0}, Lcom/keji/danti/Lists;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
