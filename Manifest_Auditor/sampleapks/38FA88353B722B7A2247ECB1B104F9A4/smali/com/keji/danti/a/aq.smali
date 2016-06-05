.class public Lcom/keji/danti/a/aq;
.super Lcom/keji/danti/a/f;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/keji/danti/a/l;


# static fields
.field protected static a:Landroid/graphics/drawable/Drawable;


# instance fields
.field b:Lcom/keji/danti/util/pj;

.field c:Lcom/keji/danti/Background;

.field private d:Landroid/widget/ImageSwitcher;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/keji/danti/a/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/keji/danti/a/aq;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/keji/danti/a/aq;->g:I

    iget v0, p0, Lcom/keji/danti/a/aq;->f:I

    iput v0, p0, Lcom/keji/danti/a/aq;->h:I

    return-void
.end method

.method static synthetic a(Lcom/keji/danti/a/aq;)I
    .locals 1

    iget v0, p0, Lcom/keji/danti/a/aq;->h:I

    return v0
.end method

.method static synthetic b(Lcom/keji/danti/a/aq;)I
    .locals 1

    iget v0, p0, Lcom/keji/danti/a/aq;->g:I

    return v0
.end method

.method static synthetic c(Lcom/keji/danti/a/aq;)I
    .locals 1

    iget v0, p0, Lcom/keji/danti/a/aq;->f:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/keji/danti/a/l;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/keji/danti/a/aq;->b(Landroid/content/Context;)V

    const-string v1, "drawable"

    const-string v2, "p1"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/a/aq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keji/danti/a/aq;->f:I

    move-object v0, p1

    check-cast v0, Lcom/keji/danti/Background;

    move-object v1, v0

    iput-object v1, p0, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    new-instance v1, Lcom/keji/danti/util/pj;

    invoke-direct {v1, p1}, Lcom/keji/danti/util/pj;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/keji/danti/a/aq;->b:Lcom/keji/danti/util/pj;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    invoke-virtual {v3}, Lcom/keji/danti/Background;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/atemp.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/keji/danti/a/aq;->i:Ljava/io/File;

    iget-object v1, p0, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    const-string v2, "layout"

    const-string v3, "main2"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/aq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keji/danti/Background;->setContentView(I)V

    iget-object v1, p0, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    const-string v2, "id"

    const-string v3, "switcher"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/aq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keji/danti/Background;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageSwitcher;

    iput-object v1, p0, Lcom/keji/danti/a/aq;->d:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/keji/danti/a/aq;->d:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    iget-object v1, p0, Lcom/keji/danti/a/aq;->d:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/keji/danti/a/aq;->d:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/keji/danti/a/aq;->d:Landroid/widget/ImageSwitcher;

    new-instance v2, Lcom/keji/danti/a/k;

    invoke-direct {v2, p0}, Lcom/keji/danti/a/k;-><init>(Lcom/keji/danti/a/aq;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/keji/danti/Background;->background:Lcom/keji/danti/Background;

    const-string v2, "id"

    const-string v3, "gallery"

    invoke-virtual {p0, v2, v3}, Lcom/keji/danti/a/aq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keji/danti/Background;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    new-instance v2, Lcom/keji/danti/a/pa;

    iget-object v3, p0, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    invoke-direct {v2, p0, v3}, Lcom/keji/danti/a/pa;-><init>(Lcom/keji/danti/a/aq;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v1, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object p0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keji/danti/a/aq;->c:Lcom/keji/danti/Background;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/keji/danti/a/aq;->d:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/keji/danti/a/aq;->b:Lcom/keji/danti/util/pj;

    iget v2, p0, Lcom/keji/danti/a/aq;->f:I

    add-int/2addr v2, p3

    invoke-virtual {v1, v2}, Lcom/keji/danti/util/pj;->a(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/keji/danti/a/aq;->f:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/keji/danti/a/aq;->h:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
