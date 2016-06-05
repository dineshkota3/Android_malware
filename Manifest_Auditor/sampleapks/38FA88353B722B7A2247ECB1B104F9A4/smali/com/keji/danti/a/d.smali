.class Lcom/keji/danti/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ar;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/d;->a:Lcom/keji/danti/a/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/keji/danti/a/d;->a:Lcom/keji/danti/a/ar;

    invoke-static {v0}, Lcom/keji/danti/a/ar;->a(Lcom/keji/danti/a/ar;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/keji/danti/a/d;->a:Lcom/keji/danti/a/ar;

    invoke-static {v0}, Lcom/keji/danti/a/ar;->c(Lcom/keji/danti/a/ar;)I

    iget-object v0, p0, Lcom/keji/danti/a/d;->a:Lcom/keji/danti/a/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keji/danti/a/ar;->a(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u5df2\u7ecf\u662f\u7b2c\u4e00\u9875\u4e86"

    invoke-static {v0}, Lcom/keji/danti/util/pc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
