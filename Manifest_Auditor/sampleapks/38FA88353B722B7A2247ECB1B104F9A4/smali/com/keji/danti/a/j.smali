.class Lcom/keji/danti/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/al;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/al;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/j;->a:Lcom/keji/danti/a/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/a/j;->a:Lcom/keji/danti/a/al;

    iget-object v0, v0, Lcom/keji/danti/a/al;->a:Lcom/keji/danti/a/ao;

    invoke-static {v0}, Lcom/keji/danti/a/ao;->a(Lcom/keji/danti/a/ao;)V

    return-void
.end method
