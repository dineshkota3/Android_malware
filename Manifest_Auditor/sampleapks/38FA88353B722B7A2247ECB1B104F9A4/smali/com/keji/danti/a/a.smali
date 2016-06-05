.class Lcom/keji/danti/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ar;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/a;->a:Lcom/keji/danti/a/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/keji/danti/a/a;->a:Lcom/keji/danti/a/ar;

    iget-object v0, v0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    invoke-virtual {v0}, Lcom/keji/danti/TextDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/keji/danti/a/a;->a:Lcom/keji/danti/a/ar;

    const-string v2, "array"

    const-string v3, "shape"

    invoke-virtual {v1, v2, v3}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/keji/danti/a/a;->a:Lcom/keji/danti/a/ar;

    invoke-static {v1, v0}, Lcom/keji/danti/a/ar;->a(Lcom/keji/danti/a/ar;Ljava/lang/String;)V

    return-void
.end method
