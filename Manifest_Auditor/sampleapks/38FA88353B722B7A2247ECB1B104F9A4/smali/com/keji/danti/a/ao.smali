.class public Lcom/keji/danti/a/ao;
.super Lcom/keji/danti/a/f;

# interfaces
.implements Lcom/keji/danti/a/l;


# instance fields
.field a:Lcom/keji/danti/Boutique;

.field b:I

.field c:Landroid/app/AlertDialog;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/keji/danti/a/f;-><init>()V

    iput-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    const/4 v0, 0x0

    iput v0, p0, Lcom/keji/danti/a/ao;->b:I

    iput-object v1, p0, Lcom/keji/danti/a/ao;->c:Landroid/app/AlertDialog;

    new-instance v0, Lcom/keji/danti/a/al;

    invoke-direct {v0, p0}, Lcom/keji/danti/a/al;-><init>(Lcom/keji/danti/a/ao;)V

    iput-object v0, p0, Lcom/keji/danti/a/ao;->d:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/keji/danti/a/ao;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/keji/danti/a/ao;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/keji/danti/a/ao;)V
    .locals 0

    invoke-direct {p0}, Lcom/keji/danti/a/ao;->a()V

    return-void
.end method

.method static synthetic a(Lcom/keji/danti/a/ao;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/keji/danti/a/ao;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keji/danti/a/an;

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    const-string v5, "name"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u3001\u300a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/keji/danti/a/an;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u300b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/keji/danti/a/an;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u4eba\u9605\u89c8\u8fc7\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/keji/danti/a/an;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/16 v8, -0x100

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v0, Lcom/keji/danti/a/an;->d:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v9, 0x21

    invoke-virtual {v6, v7, v8, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v5, "mintitle"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "content"

    iget-object v0, v0, Lcom/keji/danti/a/an;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    const-string v3, "layout"

    const-string v4, "boutique"

    invoke-virtual {p0, v3, v4}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mintitle"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "content"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    const-string v7, "id"

    const-string v8, "titlejp"

    invoke-virtual {p0, v7, v8}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "id"

    const-string v8, "mintitlejp"

    invoke-virtual {p0, v7, v8}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "id"

    const-string v8, "infojp"

    invoke-virtual {p0, v7, v8}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v1, Lcom/keji/danti/a/pe;

    invoke-direct {v1, p0}, Lcom/keji/danti/a/pe;-><init>(Lcom/keji/danti/a/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    iget-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    invoke-virtual {v1, v0}, Lcom/keji/danti/Boutique;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5c1a\u672a\u94fe\u63a5\u7f51\u7edc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u662f\u5426\u8bbe\u7f6e\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e"

    new-instance v2, Lcom/keji/danti/a/pg;

    invoke-direct {v2, p0}, Lcom/keji/danti/a/pg;-><init>(Lcom/keji/danti/a/ao;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/keji/danti/a/pf;

    invoke-direct {v2, p0}, Lcom/keji/danti/a/pf;-><init>(Lcom/keji/danti/a/ao;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/keji/danti/a/ao;)V
    .locals 0

    invoke-direct {p0}, Lcom/keji/danti/a/ao;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_7

    const-string v0, "HoiprJbh9NDs9I0h8Cg1zKVO7CAO7CfaPJSQfvMUHLMwzxBpzKVhPqjh7xlOXtLE"

    invoke-static {v0}, Lcom/keji/danti/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lcom/keji/danti/util/pb;

    invoke-direct {v1, v0}, Lcom/keji/danti/util/pb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keji/danti/util/pb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v4, Lcom/keji/danti/a/an;

    invoke-direct {v4, p0}, Lcom/keji/danti/a/an;-><init>(Lcom/keji/danti/a/ao;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/keji/danti/a/an;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/keji/danti/a/an;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/keji/danti/a/an;->c:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/keji/danti/a/an;->d:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/keji/danti/a/an;->e:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/keji/danti/a/an;->f:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    const-string v0, "HoiprJbh9C519IF5HxiL9I0h8cMNuezDrebh7Ishz2M1ut3g9C7CPt05zI7s0xlQzwTRfNlpzqi5zxjL0cBbutLE"

    invoke-static {v0}, Lcom/keji/danti/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gbk"

    invoke-static {v0, v5, v1}, Lcom/keji/danti/util/pa;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "7xBNzKFCzKFWK4328JVa"

    invoke-static {v1}, Lcom/keji/danti/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[^<]*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/keji/danti/util/ao;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keji/danti/util/ao;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keji/danti/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keji/danti/a/ao;->b(Ljava/lang/String;)V

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    iput-object v2, v0, Lcom/keji/danti/Boutique;->list:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/keji/danti/a/ao;->a(I)V

    :goto_3
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    iput-object v2, v0, Lcom/keji/danti/Boutique;->list:Ljava/util/List;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/keji/danti/a/ao;->a(I)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_6
    invoke-direct {p0, v7}, Lcom/keji/danti/a/ao;->a(I)V

    goto :goto_3

    :cond_7
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.WirelessSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    invoke-virtual {v1, v0}, Lcom/keji/danti/Boutique;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/keji/danti/a/l;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/keji/danti/a/ao;->b(Landroid/content/Context;)V

    move-object v0, p1

    check-cast v0, Lcom/keji/danti/Boutique;

    move-object v1, v0

    iput-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    iget-object v1, p0, Lcom/keji/danti/a/ao;->c:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u6682\u65e0\u6570\u636e\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5..."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/keji/danti/a/pj;

    invoke-direct {v3, p0}, Lcom/keji/danti/a/pj;-><init>(Lcom/keji/danti/a/ao;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/keji/danti/a/ao;->c:Landroid/app/AlertDialog;

    :cond_0
    iget-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    const-string v2, "string"

    const-string v3, "jpbook"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keji/danti/Boutique;->setTitle(I)V

    iget-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    invoke-virtual {v1}, Lcom/keji/danti/Boutique;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    invoke-static {v1}, Lcom/keji/danti/util/am;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    invoke-virtual {v1}, Lcom/keji/danti/Boutique;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    invoke-virtual {v2}, Lcom/keji/danti/Boutique;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "divider"

    invoke-virtual {p0, v3, v4}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    invoke-virtual {v1}, Lcom/keji/danti/Boutique;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "divider"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/ao;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    invoke-direct {p0, v5}, Lcom/keji/danti/a/ao;->a(I)V

    :goto_0
    return-object p0

    :cond_1
    sget-object v1, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/keji/danti/Boutique;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    invoke-direct {p0}, Lcom/keji/danti/a/ao;->b()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/keji/danti/a/ao;->a:Lcom/keji/danti/Boutique;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/keji/danti/Boutique;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
