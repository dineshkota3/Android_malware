.class Lcom/keji/danti/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/aq;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/k;->a:Lcom/keji/danti/a/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/keji/danti/a/k;->a:Lcom/keji/danti/a/aq;

    iget-object v1, v1, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/keji/danti/a/k;->a:Lcom/keji/danti/a/aq;

    const-string v2, "string"

    const-string v3, "app_about"

    invoke-virtual {v1, v2, v3}, Lcom/keji/danti/a/aq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/keji/danti/a/k;->a:Lcom/keji/danti/a/aq;

    const-string v2, "string"

    const-string v3, "app_about_msg"

    invoke-virtual {v1, v2, v3}, Lcom/keji/danti/a/aq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/keji/danti/a/k;->a:Lcom/keji/danti/a/aq;

    const-string v2, "string"

    const-string v3, "str_ok"

    invoke-virtual {v1, v2, v3}, Lcom/keji/danti/a/aq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/keji/danti/a/sw;

    invoke-direct {v2, p0}, Lcom/keji/danti/a/sw;-><init>(Lcom/keji/danti/a/k;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/keji/danti/a/k;->a:Lcom/keji/danti/a/aq;

    const-string v2, "string"

    const-string v3, "str_no"

    invoke-virtual {v1, v2, v3}, Lcom/keji/danti/a/aq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/keji/danti/a/sx;

    invoke-direct {v2, p0}, Lcom/keji/danti/a/sx;-><init>(Lcom/keji/danti/a/k;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
