.class public Lcom/keji/danti/a/pc;
.super Lcom/keji/danti/a/f;

# interfaces
.implements Lcom/keji/danti/a/l;


# static fields
.field public static a:Ljava/util/List;

.field public static b:Ljava/util/List;


# instance fields
.field c:Lcom/keji/danti/Lists;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/keji/danti/a/pc;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/keji/danti/a/pc;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/keji/danti/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/keji/danti/a/l;
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/keji/danti/Lists;

    move-object v1, v0

    iput-object v1, p0, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    invoke-virtual {p0, p1}, Lcom/keji/danti/a/pc;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    const-string v2, "layout"

    const-string v3, "ebook"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/pc;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keji/danti/Lists;->setContentView(I)V

    iget-object v1, p0, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    const-string v2, "id"

    const-string v3, "ebooktext"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/pc;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keji/danti/Lists;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/keji/danti/a/pc;->a()V

    iget-object v1, p0, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    invoke-virtual {v1}, Lcom/keji/danti/Lists;->checkLastRun()V

    iget-object v1, p0, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    const-string v2, "id"

    const-string v3, "ebookstart"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/pc;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keji/danti/Lists;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/keji/danti/a/sv;

    invoke-direct {v2, p0}, Lcom/keji/danti/a/sv;-><init>(Lcom/keji/danti/a/pc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    invoke-static {v1}, Lcom/keji/danti/a/su;->a(Landroid/app/Activity;)V

    return-object p0
.end method

.method public a()V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    sget-object v1, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":string/l_s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keji/danti/Lists;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    sget-object v1, Lcom/keji/danti/a/pc;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    move v1, v5

    :goto_1
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    sget-object v3, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/lt_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keji/danti/Lists;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keji/danti/a/pc;->c:Lcom/keji/danti/Lists;

    sget-object v4, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":string/lc_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keji/danti/Lists;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/keji/danti/a/pc;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/keji/danti/a/pc;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->destoryAd()V

    return-void
.end method
