.class Lcom/keji/danti/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ar;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/h;->a:Lcom/keji/danti/a/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/keji/danti/a/h;->a:Lcom/keji/danti/a/ar;

    invoke-static {v0}, Lcom/keji/danti/a/ar;->a(Lcom/keji/danti/a/ar;)I

    move-result v0

    sget-object v1, Lcom/keji/danti/a/pc;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/keji/danti/a/h;->a:Lcom/keji/danti/a/ar;

    invoke-static {v0}, Lcom/keji/danti/a/ar;->b(Lcom/keji/danti/a/ar;)I

    iget-object v0, p0, Lcom/keji/danti/a/h;->a:Lcom/keji/danti/a/ar;

    invoke-virtual {v0, v2}, Lcom/keji/danti/a/ar;->a(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875\u4e86"

    invoke-static {v0}, Lcom/keji/danti/util/pc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
