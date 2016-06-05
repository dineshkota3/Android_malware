.class public Lcom/keji/danti/util/NewTabActiivty;
.super Lcom/android/view/custom/BaseAActivity;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Ljava/util/Map;

.field protected d:Ljava/util/Map;

.field private e:Z

.field private f:Landroid/widget/TabHost$OnTabChangeListener;

.field public tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, -0x64

    invoke-direct {p0}, Lcom/android/view/custom/BaseAActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keji/danti/util/NewTabActiivty;->e:Z

    iput v1, p0, Lcom/keji/danti/util/NewTabActiivty;->a:I

    iput v1, p0, Lcom/keji/danti/util/NewTabActiivty;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/util/NewTabActiivty;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/util/NewTabActiivty;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/keji/danti/util/NewTabActiivty;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/keji/danti/util/NewTabActiivty;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/keji/danti/util/NewTabActiivty;)Landroid/widget/TabHost$OnTabChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/util/NewTabActiivty;->f:Landroid/widget/TabHost$OnTabChangeListener;

    return-object v0
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Z)V
    .locals 7

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/keji/danti/util/NewTabActiivty;->addTab15(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/keji/danti/util/NewTabActiivty;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/keji/danti/util/NewTabActiivty;->a:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/keji/danti/util/NewTabActiivty;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_1
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x401

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Lcom/keji/danti/util/NewTabActiivty;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/keji/danti/util/pe;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xe

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x3

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x3

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v4, 0x3

    const/16 v5, 0x400

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    const-string v2, "setIndicator"

    const-class v3, Landroid/view/View;

    invoke-static {v0, v2, v3, v1}, Lcom/keji/danti/util/pg;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v2, p0, Lcom/keji/danti/util/NewTabActiivty;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/keji/danti/util/NewTabActiivty;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/keji/danti/util/NewTabActiivty;->d:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public addTab15(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Lcom/keji/danti/util/NewTabActiivty;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/keji/danti/util/NewTabActiivty;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keji/danti/util/NewTabActiivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method public getTabHost()Landroid/widget/TabHost;
    .locals 1

    invoke-super {p0}, Lcom/android/view/custom/BaseAActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/keji/danti/util/NewTabActiivty;->tabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/keji/danti/util/NewTabActiivty;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public initTabHost()V
    .locals 1

    invoke-virtual {p0}, Lcom/keji/danti/util/NewTabActiivty;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    return-void
.end method

.method public setIconPs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/keji/danti/util/NewTabActiivty;->e:Z

    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 2

    iput-object p1, p0, Lcom/keji/danti/util/NewTabActiivty;->f:Landroid/widget/TabHost$OnTabChangeListener;

    iget-object v0, p0, Lcom/keji/danti/util/NewTabActiivty;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/keji/danti/util/an;

    invoke-direct {v1, p0}, Lcom/keji/danti/util/an;-><init>(Lcom/keji/danti/util/NewTabActiivty;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method public setStyleDarwable(II)V
    .locals 0

    iput p1, p0, Lcom/keji/danti/util/NewTabActiivty;->a:I

    iput p2, p0, Lcom/keji/danti/util/NewTabActiivty;->b:I

    return-void
.end method
