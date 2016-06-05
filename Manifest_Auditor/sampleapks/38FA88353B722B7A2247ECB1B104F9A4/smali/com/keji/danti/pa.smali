.class public Lcom/keji/danti/pa;
.super Landroid/app/AlertDialog;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/keji/danti/al;

.field private c:Lcom/keji/danti/pb;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keji/danti/pb;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keji/danti/pa;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/keji/danti/pa;->c:Lcom/keji/danti/pb;

    iput p3, p0, Lcom/keji/danti/pa;->d:I

    return-void
.end method

.method static synthetic a(Lcom/keji/danti/pa;)Lcom/keji/danti/pb;
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/pa;->c:Lcom/keji/danti/pb;

    return-object v0
.end method

.method static synthetic b(Lcom/keji/danti/pa;)Lcom/keji/danti/al;
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/pa;->b:Lcom/keji/danti/al;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, -0x2

    const/4 v3, 0x5

    new-instance v0, Lcom/keji/danti/ak;

    invoke-direct {v0, p0}, Lcom/keji/danti/ak;-><init>(Lcom/keji/danti/pa;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/keji/danti/pa;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v3, Lcom/keji/danti/al;

    iget-object v4, p0, Lcom/keji/danti/pa;->a:Landroid/content/Context;

    iget v5, p0, Lcom/keji/danti/pa;->d:I

    invoke-direct {v3, v4, v0, v5}, Lcom/keji/danti/al;-><init>(Landroid/content/Context;Lcom/keji/danti/pb;I)V

    iput-object v3, p0, Lcom/keji/danti/pa;->b:Lcom/keji/danti/al;

    iget-object v0, p0, Lcom/keji/danti/pa;->b:Lcom/keji/danti/al;

    invoke-virtual {v0, v2}, Lcom/keji/danti/al;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/keji/danti/pa;->b:Lcom/keji/danti/al;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/keji/danti/pa;->setView(Landroid/view/View;)V

    const-string v0, "\u8bf7\u9009\u62e9\u989c\u8272\uff1a"

    invoke-virtual {p0, v0}, Lcom/keji/danti/pa;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/keji/danti/pj;

    invoke-direct {v1, p0}, Lcom/keji/danti/pj;-><init>(Lcom/keji/danti/pa;)V

    invoke-virtual {p0, v0, v1}, Lcom/keji/danti/pa;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v0, "\u53d6\u6d88"

    new-instance v1, Lcom/keji/danti/pi;

    invoke-direct {v1, p0}, Lcom/keji/danti/pi;-><init>(Lcom/keji/danti/pa;)V

    invoke-virtual {p0, v0, v1}, Lcom/keji/danti/pa;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
