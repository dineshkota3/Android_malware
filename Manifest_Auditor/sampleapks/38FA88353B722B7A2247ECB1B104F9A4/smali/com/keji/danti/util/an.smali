.class Lcom/keji/danti/util/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/util/NewTabActiivty;


# direct methods
.method constructor <init>(Lcom/keji/danti/util/NewTabActiivty;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 7

    const/16 v6, -0x64

    const-string v0, "tabId"

    const-string v1, "setStyle"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    iget-object v0, v0, Lcom/keji/danti/util/NewTabActiivty;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/16 v2, 0x401

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    invoke-static {v5}, Lcom/keji/danti/util/NewTabActiivty;->a(Lcom/keji/danti/util/NewTabActiivty;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object v5, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    iget v0, v0, Lcom/keji/danti/util/NewTabActiivty;->a:I

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    iget v0, v0, Lcom/keji/danti/util/NewTabActiivty;->b:I

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_1
    const/high16 v0, -0x10000

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    invoke-virtual {v0}, Lcom/keji/danti/util/NewTabActiivty;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    iget-object v0, v0, Lcom/keji/danti/util/NewTabActiivty;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/keji/danti/util/pe;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    iget v3, v3, Lcom/keji/danti/util/NewTabActiivty;->a:I

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    iget v3, v3, Lcom/keji/danti/util/NewTabActiivty;->a:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_3
    const/high16 v1, -0x1000000

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    iget-object v1, v1, Lcom/keji/danti/util/NewTabActiivty;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    invoke-static {v0}, Lcom/keji/danti/util/NewTabActiivty;->b(Lcom/keji/danti/util/NewTabActiivty;)Landroid/widget/TabHost$OnTabChangeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/keji/danti/util/an;->a:Lcom/keji/danti/util/NewTabActiivty;

    invoke-static {v0}, Lcom/keji/danti/util/NewTabActiivty;->b(Lcom/keji/danti/util/NewTabActiivty;)Landroid/widget/TabHost$OnTabChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    move-object v5, v3

    goto :goto_1
.end method
