.class Lcom/keji/danti/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ak;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/o;->a:Lcom/keji/danti/a/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/keji/danti/a/o;->a:Lcom/keji/danti/a/ak;

    const-string v1, "book_textdetail_color"

    invoke-virtual {v0, v1}, Lcom/keji/danti/a/ak;->a(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_0

    const/high16 v0, -0x1000000

    :cond_0
    iget-object v1, p0, Lcom/keji/danti/a/o;->a:Lcom/keji/danti/a/ak;

    invoke-static {v1}, Lcom/keji/danti/a/ak;->a(Lcom/keji/danti/a/ak;)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/keji/danti/a/o;->a:Lcom/keji/danti/a/ak;

    invoke-static {v1}, Lcom/keji/danti/a/ak;->a(Lcom/keji/danti/a/ak;)Landroid/graphics/Paint;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v1, Lcom/keji/danti/pa;

    iget-object v2, p0, Lcom/keji/danti/a/o;->a:Lcom/keji/danti/a/ak;

    iget-object v2, v2, Lcom/keji/danti/a/ak;->a:Landroid/content/Context;

    new-instance v3, Lcom/keji/danti/a/pi;

    invoke-direct {v3, p0}, Lcom/keji/danti/a/pi;-><init>(Lcom/keji/danti/a/o;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/keji/danti/pa;-><init>(Landroid/content/Context;Lcom/keji/danti/pb;I)V

    invoke-virtual {v1}, Lcom/keji/danti/pa;->show()V

    return v4
.end method
