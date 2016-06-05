.class public Lcom/keji/danti/a/pa;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/aq;


# direct methods
.method public constructor <init>(Lcom/keji/danti/a/aq;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/pa;->a:Lcom/keji/danti/a/aq;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p1, Lcom/keji/danti/a/aq;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/a/pa;->a:Lcom/keji/danti/a/aq;

    invoke-static {v0}, Lcom/keji/danti/a/aq;->b(Lcom/keji/danti/a/aq;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keji/danti/a/pa;->a:Lcom/keji/danti/a/aq;

    iget-object v1, v1, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/keji/danti/a/pa;->a:Lcom/keji/danti/a/aq;

    iget-object v1, v1, Lcom/keji/danti/a/aq;->b:Lcom/keji/danti/util/pj;

    iget-object v2, p0, Lcom/keji/danti/a/pa;->a:Lcom/keji/danti/a/aq;

    invoke-static {v2}, Lcom/keji/danti/a/aq;->c(Lcom/keji/danti/a/aq;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/keji/danti/util/pj;->a(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method
