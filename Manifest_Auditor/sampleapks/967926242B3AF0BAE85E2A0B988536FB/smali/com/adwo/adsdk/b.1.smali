.class final Lcom/adwo/adsdk/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/adwo/adsdk/h;


# static fields
.field private static final a:Landroid/graphics/Typeface;

.field private static final b:Landroid/graphics/Typeface;


# instance fields
.field private c:I

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lcom/adwo/adsdk/f;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/adwo/adsdk/P;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ProgressBar;

.field private o:Z

.field private p:Z

.field private q:Lcom/adwo/adsdk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    .line 55
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/b;->a:Landroid/graphics/Typeface;

    .line 63
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/b;->b:Landroid/graphics/Typeface;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/adwo/adsdk/f;Landroid/content/Context;ZIID)V
    .locals 10

    .prologue
    .line 216
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/adwo/adsdk/b;->c:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/adwo/adsdk/b;->d:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    .line 217
    iget-object v0, p0, Lcom/adwo/adsdk/b;->q:Lcom/adwo/adsdk/a;

    if-nez v0, :cond_0

    .line 218
    invoke-static {p2}, Lcom/adwo/adsdk/a;->a(Landroid/content/Context;)Lcom/adwo/adsdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->q:Lcom/adwo/adsdk/a;

    .line 219
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adwo/adsdk/b;->p:Z

    .line 220
    iput-object p1, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    iput-object p0, p1, Lcom/adwo/adsdk/f;->i:Lcom/adwo/adsdk/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adwo/adsdk/b;->o:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setClickable(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/adwo/adsdk/f;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/adwo/adsdk/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/adwo/adsdk/f;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v3}, Lcom/adwo/adsdk/P;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v3}, Lcom/adwo/adsdk/P;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v3, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v3}, Lcom/adwo/adsdk/P;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/adwo/adsdk/P;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/adwo/adsdk/b;->q:Lcom/adwo/adsdk/a;

    invoke-virtual {v5, v4}, Lcom/adwo/adsdk/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/adwo/adsdk/b;->q:Lcom/adwo/adsdk/a;

    invoke-virtual {v5, v4}, Lcom/adwo/adsdk/a;->b(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_17

    array-length v5, v4

    if-lez v5, :cond_17

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    :try_start_2
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v4, "adwo_logo.png"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v6, v4

    mul-double v6, v6, p6

    double-to-int v4, v6

    int-to-double v5, v5

    mul-double v5, v5, p6

    double-to-int v5, v5

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-gtz v1, :cond_e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    const/16 v4, 0x9

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v4, ".gif"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ".GIF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_5
    new-instance v2, Lcom/adwo/adsdk/P;

    invoke-direct {v2, p2}, Lcom/adwo/adsdk/P;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v2, v3}, Lcom/adwo/adsdk/P;->a(Ljava/io/InputStream;)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v2, v6}, Lcom/adwo/adsdk/P;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/adwo/adsdk/P;->setId(I)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v3

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_7
    :goto_3
    const/16 v0, 0xf

    if-le v1, v0, :cond_13

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/adwo/adsdk/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/adwo/adsdk/b;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    iget v2, p0, Lcom/adwo/adsdk/b;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41600000    # 14.0f

    div-int/lit8 v2, p5, 0x5

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    const/16 v2, 0x3c

    if-le p5, v2, :cond_8

    const/high16 v0, 0x41800000    # 16.0f

    div-int/lit8 v2, p5, 0x5

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    :cond_8
    iget-object v2, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_9
    int-to-double v2, p5

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V

    :goto_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x2c

    sub-int v2, p5, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v2, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V

    if-lez v1, :cond_b

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    sget-object v1, Lcom/adwo/adsdk/b;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v0, p0, Lcom/adwo/adsdk/b;->p:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/adwo/adsdk/b;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    const-string v1, "\u5b89\u6c83\u4f20\u5a92"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v1, v1, p6

    double-to-int v1, v1

    const/4 v2, 0x0

    mul-int/lit8 v1, v1, 0x6

    sub-int v1, p5, v1

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v4, p1, Lcom/adwo/adsdk/f;->f:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v3, p5, v2

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v4, v3, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V

    :cond_b
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->a(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setBackgroundColor(I)V

    .line 222
    return-void

    .line 220
    :cond_c
    :try_start_6
    invoke-direct {p0, v2}, Lcom/adwo/adsdk/b;->a(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_17

    array-length v5, v4

    if-lez v5, :cond_17

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    :try_start_8
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "adwo_logo.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto/16 :goto_0

    :cond_e
    :try_start_9
    iget-boolean v4, p0, Lcom/adwo/adsdk/b;->p:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_6
    if-eqz v0, :cond_7

    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_f
    sub-int v4, p5, v5

    :try_start_b
    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v4, 0x2

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v4, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_7
    if-eqz v1, :cond_10

    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_10
    :goto_8
    throw v0

    :catch_2
    move-exception v2

    const/4 v2, 0x0

    :try_start_d
    iput-object v2, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V

    move-object v0, v3

    goto/16 :goto_2

    :cond_11
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v0, v3

    goto/16 :goto_2

    :cond_12
    if-lez v1, :cond_6

    :try_start_e
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "adwo_logo.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v5, v3

    mul-double v5, v5, p6

    double-to-int v3, v5

    int-to-double v4, v4

    mul-double v4, v4, p6

    double-to-int v4, v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sub-int v3, p5, v4

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    :catch_3
    move-exception v2

    goto/16 :goto_6

    :cond_13
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/adwo/adsdk/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/adwo/adsdk/b;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    iget v2, p0, Lcom/adwo/adsdk/b;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    div-int/lit8 v2, p5, 0x5

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    const/16 v2, 0x3c

    if-le p5, v2, :cond_14

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v0, v2

    :cond_14
    iget-object v2, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_15
    int-to-double v2, p5

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v1

    goto/16 :goto_8

    :catch_6
    move-exception v0

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v3

    goto/16 :goto_7

    :catch_7
    move-exception v0

    move-object v0, v3

    goto/16 :goto_6

    :catch_8
    move-exception v0

    move-object v0, v3

    goto/16 :goto_6

    :cond_16
    move-object v0, v3

    goto/16 :goto_2

    :cond_17
    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adwo/adsdk/b;->a(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x40400000    # 3.0f

    .line 652
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 653
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 652
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 654
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 655
    iget-boolean v2, p0, Lcom/adwo/adsdk/b;->p:Z

    if-nez v2, :cond_0

    .line 656
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v2, 0x7f

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput p3, v3, v8

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v4, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fdc000000000000L    # 0.4375

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v4, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 659
    :cond_0
    if-eqz p4, :cond_1

    .line 660
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, -0x1180d9

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v3, Landroid/graphics/CornerPathEffect;

    invoke-direct {v3, v7}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v7, v7, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 662
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method static synthetic a(Lcom/adwo/adsdk/b;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/adwo/adsdk/b;Z)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adwo/adsdk/b;->o:Z

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 100
    monitor-enter p0

    .line 102
    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 103
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 102
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 105
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :try_start_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 113
    const-string v3, "User-Agent"

    sget-object v4, Lcom/adwo/adsdk/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v3, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 115
    const-string v3, "Cookie"

    sget-object v4, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 118
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 119
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 122
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 125
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 131
    if-eqz v0, :cond_2

    array-length v2, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v2, :cond_2

    .line 134
    :try_start_5
    iget-object v2, p0, Lcom/adwo/adsdk/b;->q:Lcom/adwo/adsdk/a;

    invoke-virtual {v2, v1, v0}, Lcom/adwo/adsdk/a;->a(Ljava/lang/String;[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    :goto_1
    monitor-exit p0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_1

    .line 123
    :cond_1
    :try_start_6
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    move-object v0, v5

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :catch_2
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v5

    goto :goto_1
.end method

.method static synthetic b(Lcom/adwo/adsdk/b;)Lcom/adwo/adsdk/P;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    return-object v0
.end method

.method static synthetic c(Lcom/adwo/adsdk/b;)Lcom/adwo/adsdk/f;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    :cond_2
    iput-object v1, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    .line 184
    iput-object v1, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    .line 185
    iput-object v1, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    .line 187
    iget-object v0, p0, Lcom/adwo/adsdk/b;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/adwo/adsdk/b;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    :cond_3
    iput-object v1, p0, Lcom/adwo/adsdk/b;->h:Landroid/graphics/drawable/Drawable;

    .line 191
    return-void
.end method

.method private h()V
    .locals 9

    .prologue
    .line 811
    iget-object v0, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    if-eqz v0, :cond_3

    .line 812
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 813
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    .line 814
    iget-boolean v0, p0, Lcom/adwo/adsdk/b;->o:Z

    if-nez v0, :cond_3

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adwo/adsdk/b;->o:Z

    .line 816
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 817
    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 818
    const/high16 v0, 0x41a00000    # 20.0f

    .line 821
    const/high16 v1, 0x41a00000    # 20.0f

    .line 822
    iget-object v2, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    if-eqz v2, :cond_1

    .line 823
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v0}, Lcom/adwo/adsdk/P;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 824
    iget-object v1, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v1}, Lcom/adwo/adsdk/P;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 826
    iget-object v2, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v2}, Lcom/adwo/adsdk/P;->b()V

    :cond_1
    move v8, v1

    move v1, v0

    move v0, v8

    .line 828
    iget-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 829
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 830
    iget-object v1, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v6, v1

    move v5, v0

    .line 833
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 834
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f99999a    # 1.2f

    .line 835
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    .line 833
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 837
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 838
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 839
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 840
    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3a83126f    # 0.001f

    .line 841
    const v3, 0x3f99999a    # 1.2f

    const v4, 0x3a83126f    # 0.001f

    .line 839
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 844
    const-wide/16 v1, 0x12b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 846
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 847
    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 848
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 851
    new-instance v0, Lcom/adwo/adsdk/e;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/e;-><init>(Lcom/adwo/adsdk/b;)V

    .line 857
    const-wide/16 v1, 0x1f4

    .line 850
    invoke-virtual {p0, v0, v1, v2}, Lcom/adwo/adsdk/b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 858
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v0, v7}, Lcom/adwo/adsdk/P;->startAnimation(Landroid/view/animation/Animation;)V

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 862
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 872
    :cond_3
    :goto_1
    return-void

    .line 866
    :cond_4
    iget-object v0, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    invoke-virtual {v0}, Lcom/adwo/adsdk/f;->a()V

    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adwo/adsdk/b;->o:Z

    goto :goto_1

    :cond_5
    move v6, v0

    move v5, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Lcom/adwo/adsdk/b;->g()V

    .line 165
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v0}, Lcom/adwo/adsdk/P;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v0}, Lcom/adwo/adsdk/P;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 167
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/P;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 171
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 552
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/adwo/adsdk/b;->d:I

    .line 553
    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/adwo/adsdk/b;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    iget-boolean v0, p0, Lcom/adwo/adsdk/b;->p:Z

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/adwo/adsdk/b;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->postInvalidate()V

    .line 559
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v0}, Lcom/adwo/adsdk/P;->a()V

    .line 197
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v0}, Lcom/adwo/adsdk/P;->b()V

    .line 203
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v0}, Lcom/adwo/adsdk/P;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v0}, Lcom/adwo/adsdk/P;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 205
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/P;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_0
    iput-object v1, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/P;

    .line 210
    :cond_1
    return-void
.end method

.method protected final d()Lcom/adwo/adsdk/f;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    return-object v0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 728
    if-nez v0, :cond_1

    .line 729
    invoke-virtual {p0, v7}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    .line 753
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 730
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 731
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 734
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getLeft()I

    move-result v2

    .line 735
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getTop()I

    move-result v3

    .line 736
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getRight()I

    move-result v4

    .line 737
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getBottom()I

    move-result v5

    .line 739
    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_2

    int-to-float v2, v4

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    int-to-float v0, v3

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_2

    int-to-float v0, v5

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 740
    :cond_2
    invoke-virtual {p0, v6}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    goto :goto_0

    .line 742
    :cond_3
    invoke-virtual {p0, v7}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    goto :goto_0

    .line 744
    :cond_4
    if-ne v0, v7, :cond_6

    .line 745
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 746
    invoke-direct {p0}, Lcom/adwo/adsdk/b;->h()V

    .line 749
    :cond_5
    invoke-virtual {p0, v6}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    goto :goto_0

    .line 750
    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 751
    invoke-virtual {p0, v6}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    goto :goto_0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 759
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    .line 767
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 760
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    invoke-direct {p0}, Lcom/adwo/adsdk/b;->h()V

    .line 765
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 666
    new-instance v0, Lcom/adwo/adsdk/c;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/c;-><init>(Lcom/adwo/adsdk/b;)V

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->post(Ljava/lang/Runnable;)Z

    .line 676
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 679
    new-instance v0, Lcom/adwo/adsdk/d;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/d;-><init>(Lcom/adwo/adsdk/b;)V

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->post(Ljava/lang/Runnable;)Z

    .line 688
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 881
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 875
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 878
    return-void
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 773
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 774
    iget-boolean v0, p0, Lcom/adwo/adsdk/b;->p:Z

    if-nez v0, :cond_0

    .line 775
    if-eqz p1, :cond_1

    .line 776
    iget-object v0, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 707
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 708
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 709
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    .line 711
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 716
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 717
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 718
    :cond_0
    invoke-direct {p0}, Lcom/adwo/adsdk/b;->h()V

    .line 721
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    .line 722
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 579
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 581
    iget-boolean v0, p0, Lcom/adwo/adsdk/b;->p:Z

    if-nez v0, :cond_4

    .line 582
    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 583
    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 585
    :goto_0
    if-nez v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 587
    iget-object v2, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    invoke-virtual {v2}, Lcom/adwo/adsdk/f;->b()Ljava/lang/String;

    move-result-object v2

    .line 588
    if-eqz v2, :cond_0

    .line 589
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 590
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 591
    iget-object v1, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 592
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 593
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 594
    int-to-float v2, p1

    .line 596
    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 597
    const/16 v0, 0x8

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    :cond_1
    iget-boolean v1, p0, Lcom/adwo/adsdk/b;->p:Z

    if-nez v1, :cond_2

    .line 604
    iget-object v1, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 605
    iget-object v1, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 609
    iget-boolean v0, p0, Lcom/adwo/adsdk/b;->p:Z

    if-nez v0, :cond_3

    .line 610
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 611
    invoke-direct {p0}, Lcom/adwo/adsdk/b;->g()V

    .line 613
    iget v1, p0, Lcom/adwo/adsdk/b;->c:I

    .line 612
    invoke-direct {p0, v0, v5, v1}, Lcom/adwo/adsdk/b;->a(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    .line 615
    const v1, -0x1180d9

    const/16 v2, -0x4c00

    .line 614
    invoke-direct {p0, v0, v1, v2}, Lcom/adwo/adsdk/b;->a(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    .line 617
    iget v1, p0, Lcom/adwo/adsdk/b;->c:I

    const/4 v2, 0x1

    .line 616
    invoke-direct {p0, v0, v5, v1, v2}, Lcom/adwo/adsdk/b;->a(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    .line 618
    iget-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    :cond_3
    return-void

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 566
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/adwo/adsdk/b;->c:I

    .line 567
    return-void
.end method

.method public final setPressed(Z)V
    .locals 3

    .prologue
    .line 786
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/adwo/adsdk/b;->o:Z

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_3

    .line 787
    iget-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    .line 788
    iget v0, p0, Lcom/adwo/adsdk/b;->d:I

    .line 789
    if-eqz p1, :cond_4

    .line 790
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->h:Landroid/graphics/drawable/Drawable;

    .line 791
    iget-object v0, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    .line 792
    const/high16 v1, -0x1000000

    move v2, v1

    move-object v1, v0

    move v0, v2

    .line 797
    :goto_0
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 798
    iget-object v1, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 801
    :cond_1
    iget-object v1, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 802
    iget-object v1, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 805
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 806
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->invalidate()V

    .line 808
    :cond_3
    return-void

    .line 794
    :cond_4
    iget-object v1, p0, Lcom/adwo/adsdk/b;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
