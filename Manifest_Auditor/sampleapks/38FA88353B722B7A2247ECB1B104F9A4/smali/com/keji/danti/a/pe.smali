.class Lcom/keji/danti/a/pe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ao;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/pe;->a:Lcom/keji/danti/a/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 6

    const/high16 v5, -0x10000

    const/4 v4, 0x1

    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/keji/danti/a/pe;->a:Lcom/keji/danti/a/ao;

    const-string v2, "id"

    const-string v3, "titlejp"

    invoke-virtual {v1, v2, v3}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/keji/danti/a/pe;->a:Lcom/keji/danti/a/ao;

    iget v1, v1, Lcom/keji/danti/a/ao;->b:I

    if-nez v1, :cond_0

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/keji/danti/a/pe;->a:Lcom/keji/danti/a/ao;

    const-string v2, "id"

    const-string v3, "titlejp"

    invoke-virtual {v1, v2, v3}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/keji/danti/a/pe;->a:Lcom/keji/danti/a/ao;

    const-string v2, "id"

    const-string v3, "infojp"

    invoke-virtual {v1, v2, v3}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/keji/danti/a/pe;->a:Lcom/keji/danti/a/ao;

    iget v0, v0, Lcom/keji/danti/a/ao;->b:I

    div-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_3

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/keji/danti/a/pe;->a:Lcom/keji/danti/a/ao;

    iget v1, v0, Lcom/keji/danti/a/ao;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/keji/danti/a/ao;->b:I

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
