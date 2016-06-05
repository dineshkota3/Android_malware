.class public Lcom/keji/danti/a/ar;
.super Lcom/keji/danti/a/f;

# interfaces
.implements Lcom/keji/danti/a/l;
.implements Lcom/keji/danti/pb;


# static fields
.field public static b:Lcom/keji/danti/a/ar;


# instance fields
.field a:Lcom/keji/danti/TextDetail;

.field public c:Landroid/widget/TextView;

.field d:Landroid/widget/PopupWindow;

.field private f:Landroid/widget/ScrollView;

.field private g:Z

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:I

.field private k:Landroid/widget/TextView;

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/keji/danti/a/ar;->b:Lcom/keji/danti/a/ar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/keji/danti/a/f;-><init>()V

    iput-object v1, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keji/danti/a/ar;->g:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/keji/danti/a/ar;->j:I

    iput-object v1, p0, Lcom/keji/danti/a/ar;->c:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/keji/danti/a/ar;->k:Landroid/widget/TextView;

    new-instance v0, Lcom/keji/danti/a/g;

    invoke-direct {v0, p0}, Lcom/keji/danti/a/g;-><init>(Lcom/keji/danti/a/ar;)V

    iput-object v0, p0, Lcom/keji/danti/a/ar;->l:Landroid/os/Handler;

    iput-object v1, p0, Lcom/keji/danti/a/ar;->d:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/keji/danti/a/c;

    invoke-direct {v0, p0}, Lcom/keji/danti/a/c;-><init>(Lcom/keji/danti/a/ar;)V

    iput-object v0, p0, Lcom/keji/danti/a/ar;->m:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/keji/danti/a/ar;)I
    .locals 1

    iget v0, p0, Lcom/keji/danti/a/ar;->j:I

    return v0
.end method

.method static synthetic a(Lcom/keji/danti/a/ar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/keji/danti/a/ar;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/keji/danti/a/ar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/keji/danti/a/ar;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/keji/danti/a/ar;)I
    .locals 2

    iget v0, p0, Lcom/keji/danti/a/ar;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keji/danti/a/ar;->j:I

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const-string v0, "smsto:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    invoke-virtual {v0}, Lcom/keji/danti/TextDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "string"

    const-string v3, "app_name"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u300a"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u300b"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " http://mobile.91.com/soft/Android/search/1_5_0_0_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    invoke-virtual {v0, v1}, Lcom/keji/danti/TextDetail;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/keji/danti/a/ar;)I
    .locals 2

    iget v0, p0, Lcom/keji/danti/a/ar;->j:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/keji/danti/a/ar;->j:I

    return v0
.end method

.method static synthetic d(Lcom/keji/danti/a/ar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/a/ar;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/keji/danti/a/ar;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/a/ar;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/keji/danti/a/ar;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/a/ar;->f:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private g()V
    .locals 2

    sget-object v0, Lcom/keji/danti/a/pc;->b:Ljava/util/List;

    iget v1, p0, Lcom/keji/danti/a/ar;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/keji/danti/util/ao;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keji/danti/a/ar;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method static synthetic g(Lcom/keji/danti/a/ar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/keji/danti/a/ar;->g:Z

    return v0
.end method

.method private h()V
    .locals 3

    const-string v0, "book_textdetail_textsize"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/keji/danti/util/pi;->b(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x5

    const-string v1, "book_textdetail_color"

    const/high16 v2, -0x1000000

    invoke-static {v1, v2}, Lcom/keji/danti/util/pi;->b(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/keji/danti/a/ar;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/keji/danti/a/ar;->c:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v0, "book_textdetail_background"

    const-string v1, "drawable"

    const-string v2, "p1"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/keji/danti/util/pi;->b(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/keji/danti/a/ar;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/keji/danti/a/l;
    .locals 4

    invoke-static {p1}, Lcom/keji/danti/util/ak;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    :goto_0
    return-object v1

    :cond_0
    sput-object p0, Lcom/keji/danti/a/ar;->b:Lcom/keji/danti/a/ar;

    move-object v0, p1

    check-cast v0, Lcom/keji/danti/TextDetail;

    move-object v1, v0

    iput-object v1, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    invoke-virtual {p0, p1}, Lcom/keji/danti/a/ar;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    const-string v2, "layout"

    const-string v3, "mainn"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keji/danti/TextDetail;->setContentView(I)V

    iget-object v1, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    const-string v2, "id"

    const-string v3, "sc"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keji/danti/TextDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/keji/danti/a/ar;->f:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/keji/danti/a/ar;->f:Landroid/widget/ScrollView;

    new-instance v2, Lcom/keji/danti/a/i;

    invoke-direct {v2, p0}, Lcom/keji/danti/a/i;-><init>(Lcom/keji/danti/a/ar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/keji/danti/a/ar;->c()V

    move-object v1, p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/keji/danti/a/ar;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/keji/danti/a/ar;->c:Landroid/widget/TextView;

    const/16 v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/a/ar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    const/16 v0, 0x7b

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/keji/danti/a/ar;->h()V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/keji/danti/b/pb;->c()Lcom/keji/danti/b/pb;

    move-result-object v0

    iget v1, p0, Lcom/keji/danti/a/ar;->j:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keji/danti/b/pb;->a(Ljava/lang/String;)V

    const-string v0, "book_lastRead_id"

    iget v1, p0, Lcom/keji/danti/a/ar;->j:I

    invoke-static {v0, v1}, Lcom/keji/danti/util/pi;->a(Ljava/lang/String;I)Lcom/keji/danti/util/pi;

    const-string v0, "book_lastRead_datetime"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keji/danti/util/pi;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/keji/danti/util/pi;

    sget-object v0, Lcom/keji/danti/a/pc;->a:Ljava/util/List;

    iget v1, p0, Lcom/keji/danti/a/ar;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/keji/danti/util/ao;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    invoke-virtual {v1, v0}, Lcom/keji/danti/TextDetail;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keji/danti/a/ar;->j:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    invoke-direct {p0}, Lcom/keji/danti/a/ar;->g()V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "\u5206\u4eab"

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "menu_add"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v0, "\u81ea\u52a8\u6eda\u52a8"

    invoke-interface {p1, v3, v5, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "menu_about"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v0, "\u8bbe\u7f6e"

    invoke-interface {p1, v3, v6, v6, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "menu_icon_settings_normal"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v4
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    invoke-virtual {p0}, Lcom/keji/danti/a/ar;->e()V

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/keji/danti/a/ar;->g:Z

    iget-object v0, p0, Lcom/keji/danti/a/ar;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keji/danti/a/ar;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    const-class v2, Lcom/keji/danti/Setting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "one"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    const/16 v2, 0x6f

    invoke-virtual {v1, v0, v2}, Lcom/keji/danti/TextDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    iget-object v1, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/keji/danti/TextDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string v2, "list_pop"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/keji/danti/a/ar;->d:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/keji/danti/a/ar;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/keji/danti/a/ar;->k:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "id"

    const-string v2, "editText01"

    invoke-virtual {p0, v0, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keji/danti/a/ar;->k:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/keji/danti/a/ar;->k:Landroid/widget/TextView;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->k:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/keji/danti/a/ar;->j:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    const-string v0, "id"

    const-string v2, "previousBtn"

    invoke-virtual {p0, v0, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "\u4e0b\u4e00\u9875"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/keji/danti/a/h;

    invoke-direct {v2, p0}, Lcom/keji/danti/a/h;-><init>(Lcom/keji/danti/a/ar;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "id"

    const-string v2, "nextBtn"

    invoke-virtual {p0, v0, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "\u4e0a\u4e00\u9875"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/keji/danti/a/d;

    invoke-direct {v1, p0}, Lcom/keji/danti/a/d;-><init>(Lcom/keji/danti/a/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    const-string v1, "id"

    const-string v2, "text1"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keji/danti/TextDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keji/danti/a/ar;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    const-string v1, "id"

    const-string v2, "background"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keji/danti/TextDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keji/danti/a/ar;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    const-string v1, "id"

    const-string v2, "layout"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keji/danti/TextDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keji/danti/a/ar;->h:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/keji/danti/a/ar;->h()V

    iget-object v0, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    invoke-virtual {v0}, Lcom/keji/danti/TextDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keji/danti/a/ar;->j:I

    const-string v1, "notSaveDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keji/danti/util/ao;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/keji/danti/b/pb;->c()Lcom/keji/danti/b/pb;

    move-result-object v0

    iget v1, p0, Lcom/keji/danti/a/ar;->j:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keji/danti/b/pb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/keji/danti/b/pc;->c()Lcom/keji/danti/b/pc;

    move-result-object v0

    iget v1, p0, Lcom/keji/danti/a/ar;->j:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keji/danti/b/pc;->a(Ljava/lang/String;)V

    const-string v0, "book_lastRead_id"

    iget v1, p0, Lcom/keji/danti/a/ar;->j:I

    invoke-static {v0, v1}, Lcom/keji/danti/util/pi;->a(Ljava/lang/String;I)Lcom/keji/danti/util/pi;

    const-string v0, "book_lastRead_datetime"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keji/danti/util/pi;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/keji/danti/util/pi;

    :cond_0
    sget-object v0, Lcom/keji/danti/a/pc;->a:Ljava/util/List;

    iget v1, p0, Lcom/keji/danti/a/ar;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/keji/danti/util/ao;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/keji/danti/a/ar;->g()V

    iget-object v1, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    invoke-virtual {v1, v0}, Lcom/keji/danti/TextDetail;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/keji/danti/a/st;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keji/danti/a/st;-><init>(Lcom/keji/danti/a/ar;Lcom/keji/danti/a/i;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public e()V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    invoke-virtual {v0}, Lcom/keji/danti/TextDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "array"

    const-string v2, "shape"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move v1, v8

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    invoke-virtual {v5}, Lcom/keji/danti/TextDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "app_name"

    invoke-virtual {p0, v6, v7}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "string"

    const-string v3, "shapetitle"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/keji/danti/a/ar;->a:Lcom/keji/danti/TextDetail;

    const-string v4, "layout"

    const-string v5, "shape"

    invoke-virtual {p0, v4, v5}, Lcom/keji/danti/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v0, Lcom/keji/danti/a/a;

    invoke-direct {v0, p0}, Lcom/keji/danti/a/a;-><init>(Lcom/keji/danti/a/ar;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/keji/danti/a/e;

    invoke-direct {v2, p0}, Lcom/keji/danti/a/e;-><init>(Lcom/keji/danti/a/ar;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keji/danti/a/ar;->g:Z

    iget-object v0, p0, Lcom/keji/danti/a/ar;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/keji/danti/a/ar;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->destoryAd()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
