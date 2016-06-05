.class Lcom/keji/danti/pj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/pa;


# direct methods
.method constructor <init>(Lcom/keji/danti/pa;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/pj;->a:Lcom/keji/danti/pa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/keji/danti/pj;->a:Lcom/keji/danti/pa;

    invoke-static {v0}, Lcom/keji/danti/pa;->a(Lcom/keji/danti/pa;)Lcom/keji/danti/pb;

    move-result-object v0

    iget-object v1, p0, Lcom/keji/danti/pj;->a:Lcom/keji/danti/pa;

    invoke-static {v1}, Lcom/keji/danti/pa;->b(Lcom/keji/danti/pa;)Lcom/keji/danti/al;

    move-result-object v1

    iget-object v1, v1, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/keji/danti/pb;->a(I)V

    return-void
.end method
