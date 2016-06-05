.class Lcom/keji/danti/a/pi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/keji/danti/pb;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/o;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/pi;->a:Lcom/keji/danti/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/keji/danti/a/pi;->a:Lcom/keji/danti/a/o;

    iget-object v0, v0, Lcom/keji/danti/a/o;->a:Lcom/keji/danti/a/ak;

    const-string v1, "book_textdetail_color"

    invoke-virtual {v0, v1, p1}, Lcom/keji/danti/a/ak;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    invoke-virtual {v0}, Lcom/keji/danti/MainA;->getKernel()Lcom/keji/danti/a/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keji/danti/a/n;->a(I)V

    return-void
.end method
