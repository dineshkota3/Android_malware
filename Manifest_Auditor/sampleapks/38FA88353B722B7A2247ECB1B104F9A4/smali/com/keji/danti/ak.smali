.class Lcom/keji/danti/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/keji/danti/pb;


# instance fields
.field final synthetic a:Lcom/keji/danti/pa;


# direct methods
.method constructor <init>(Lcom/keji/danti/pa;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/ak;->a:Lcom/keji/danti/pa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/ak;->a:Lcom/keji/danti/pa;

    invoke-static {v0}, Lcom/keji/danti/pa;->a(Lcom/keji/danti/pa;)Lcom/keji/danti/pb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keji/danti/pb;->a(I)V

    return-void
.end method
