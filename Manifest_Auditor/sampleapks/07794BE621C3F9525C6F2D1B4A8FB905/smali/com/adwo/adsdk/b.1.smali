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

.field private l:Lcom/adwo/adsdk/R;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ProgressBar;

.field private o:Z

.field private p:Lcom/adwo/adsdk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    .line 47
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/b;->a:Landroid/graphics/Typeface;

    .line 55
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/b;->b:Landroid/graphics/Typeface;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/adwo/adsdk/f;Landroid/content/Context;IID)V
    .locals 9

    .prologue
    .line 183
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/adwo/adsdk/b;->c:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/adwo/adsdk/b;->d:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcom/adwo/adsdk/b;->p:Lcom/adwo/adsdk/a;

    if-nez v0, :cond_0

    .line 185
    invoke-static {p2}, Lcom/adwo/adsdk/a;->a(Landroid/content/Context;)Lcom/adwo/adsdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->p:Lcom/adwo/adsdk/a;

    .line 186
    :cond_0
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

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setClickable(Z)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/adwo/adsdk/f;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {p1}, Lcom/adwo/adsdk/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/adwo/adsdk/f;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0}, Lcom/adwo/adsdk/R;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0}, Lcom/adwo/adsdk/R;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0}, Lcom/adwo/adsdk/R;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/adwo/adsdk/R;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/adwo/adsdk/b;->p:Lcom/adwo/adsdk/a;

    invoke-virtual {v4, v0}, Lcom/adwo/adsdk/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/adwo/adsdk/b;->p:Lcom/adwo/adsdk/a;

    invoke-virtual {v4, v0}, Lcom/adwo/adsdk/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v4, v0

    if-lez v4, :cond_b

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v4

    :goto_1
    :try_start_1
    const-string v1, ".gif"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".GIF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-gtz v2, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Lcom/adwo/adsdk/R;

    invoke-direct {v3, p2}, Lcom/adwo/adsdk/R;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v3, v0}, Lcom/adwo/adsdk/R;->a(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v3, v1}, Lcom/adwo/adsdk/R;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/adwo/adsdk/R;->setId(I)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_5
    :goto_4
    const/16 v0, 0xf

    if-le v2, v0, :cond_14

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/adwo/adsdk/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    sget-object v1, Lcom/adwo/adsdk/b;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/adwo/adsdk/b;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41600000    # 14.0f

    div-int/lit8 v1, p4, 0x5

    const/16 v3, 0xa

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/16 v1, 0x3c

    if-le p4, v1, :cond_6

    const/high16 v0, 0x41800000    # 16.0f

    div-int/lit8 v1, p4, 0x5

    const/16 v3, 0xa

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_7
    int-to-double v3, p4

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v5

    double-to-int v1, v3

    const/16 v3, 0xa

    sub-int/2addr v1, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V

    :goto_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x2c

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x2c

    sub-int v1, p4, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v1, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V

    if-lez v2, :cond_8

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    sget-object v1, Lcom/adwo/adsdk/b;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/adwo/adsdk/b;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

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

    mul-double/2addr v1, p5

    double-to-int v1, v1

    const/4 v2, 0x0

    mul-int/lit8 v1, v1, 0x6

    sub-int v1, p4, v1

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

    :try_start_4
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
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v3, p4, v2

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

    :cond_8
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->a(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setBackgroundColor(I)V

    .line 188
    return-void

    .line 186
    :cond_9
    :try_start_5
    invoke-direct {p0, v3}, Lcom/adwo/adsdk/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v4, v0

    if-lez v4, :cond_b

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v4

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v4, "adwo_logo.png"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_b
    move-object v0, v1

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    sub-int v3, p4, v3

    :try_start_6
    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catch_2
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "adwo_logo.png"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_d
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v5, v3

    mul-double/2addr v5, p5

    double-to-int v3, v5

    int-to-double v4, v4

    mul-double/2addr v4, p5

    double-to-int v4, v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-gtz v2, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_8
    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setId(I)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    :catch_3
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_9
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_5

    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :cond_e
    sub-int v3, p4, v4

    :try_start_c
    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_a
    if-eqz v1, :cond_f

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_f
    :goto_b
    throw v0

    :cond_10
    :try_start_e
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "adwo_logo.png"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_11
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v5, v3

    mul-double/2addr v5, p5

    double-to-int v3, v5

    int-to-double v4, v4

    mul-double/2addr v4, p5

    double-to-int v4, v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-gtz v2, :cond_12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_c
    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setId(I)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_12
    sub-int v3, p4, v4

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_c

    :cond_13
    if-lez v2, :cond_17

    :try_start_f
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "adwo_logo.png"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v5, v3

    mul-double/2addr v5, p5

    double-to-int v3, v5

    int-to-double v4, v4

    mul-double/2addr v4, p5

    double-to-int v4, v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sub-int v3, p4, v4

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

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v0, v1

    goto/16 :goto_3

    :cond_14
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/adwo/adsdk/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    sget-object v1, Lcom/adwo/adsdk/b;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/adwo/adsdk/b;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    div-int/lit8 v1, p4, 0x5

    const/16 v3, 0xa

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/16 v1, 0x3c

    if-le p4, v1, :cond_15

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_16
    int-to-double v3, p4

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v5

    double-to-int v1, v3

    const/16 v3, 0xa

    sub-int/2addr v1, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :catch_6
    move-exception v1

    goto/16 :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_8
    move-exception v0

    goto/16 :goto_9

    :catch_9
    move-exception v0

    goto/16 :goto_7

    :cond_17
    move-object v0, v1

    goto/16 :goto_3

    :cond_18
    move v2, v0

    goto/16 :goto_0
.end method

.method private static a(Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/high16 v6, 0x40400000    # 3.0f

    .line 612
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 613
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 612
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 614
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 615
    if-eqz p1, :cond_0

    .line 616
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, -0x1180d9

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v3, Landroid/graphics/CornerPathEffect;

    invoke-direct {v3, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 618
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method static synthetic a(Lcom/adwo/adsdk/b;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adwo/adsdk/b;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/adwo/adsdk/b;Z)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adwo/adsdk/b;->o:Z

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 89
    monitor-enter p0

    .line 91
    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 92
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 94
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :try_start_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 101
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 103
    const-string v3, "User-Agent"

    sget-object v4, Lcom/adwo/adsdk/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v3, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 105
    const-string v3, "Cookie"

    sget-object v4, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 110
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 113
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 118
    if-eqz v0, :cond_2

    array-length v2, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v2, :cond_2

    .line 121
    :try_start_5
    iget-object v2, p0, Lcom/adwo/adsdk/b;->p:Lcom/adwo/adsdk/a;

    invoke-virtual {v2, v1, v0}, Lcom/adwo/adsdk/a;->a(Ljava/lang/String;[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    :goto_1
    monitor-exit p0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_1

    .line 111
    :cond_1
    :try_start_6
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    move-object v0, v5

    goto :goto_1

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :catch_2
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v5

    goto :goto_1
.end method

.method static synthetic b(Lcom/adwo/adsdk/b;)Lcom/adwo/adsdk/R;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    return-object v0
.end method

.method static synthetic c(Lcom/adwo/adsdk/b;)Lcom/adwo/adsdk/f;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    :cond_2
    iput-object v1, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object v1, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-object v1, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Lcom/adwo/adsdk/b;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/adwo/adsdk/b;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    :cond_3
    iput-object v1, p0, Lcom/adwo/adsdk/b;->h:Landroid/graphics/drawable/Drawable;

    .line 158
    return-void
.end method

.method private h()V
    .locals 9

    .prologue
    .line 762
    iget-object v0, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    if-eqz v0, :cond_3

    .line 763
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    .line 765
    iget-boolean v0, p0, Lcom/adwo/adsdk/b;->o:Z

    if-nez v0, :cond_3

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adwo/adsdk/b;->o:Z

    .line 767
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 768
    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 769
    const/high16 v0, 0x41a00000    # 20.0f

    .line 772
    const/high16 v1, 0x41a00000    # 20.0f

    .line 773
    iget-object v2, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    if-eqz v2, :cond_1

    .line 774
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0}, Lcom/adwo/adsdk/R;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 775
    iget-object v1, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v1}, Lcom/adwo/adsdk/R;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 777
    iget-object v2, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v2}, Lcom/adwo/adsdk/R;->b()V

    :cond_1
    move v8, v1

    move v1, v0

    move v0, v8

    .line 779
    iget-object v2, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 780
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 781
    iget-object v1, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v6, v1

    move v5, v0

    .line 784
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 785
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f99999a    # 1.2f

    .line 786
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    .line 784
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 788
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 789
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 790
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 791
    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3a83126f    # 0.001f

    .line 792
    const v3, 0x3f99999a    # 1.2f

    const v4, 0x3a83126f    # 0.001f

    .line 790
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 795
    const-wide/16 v1, 0x12b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 797
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 798
    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 799
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 802
    new-instance v0, Lcom/adwo/adsdk/e;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/e;-><init>(Lcom/adwo/adsdk/b;)V

    .line 808
    const-wide/16 v1, 0x1f4

    .line 801
    invoke-virtual {p0, v0, v1, v2}, Lcom/adwo/adsdk/b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 809
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    if-eqz v0, :cond_2

    .line 810
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0, v7}, Lcom/adwo/adsdk/R;->startAnimation(Landroid/view/animation/Animation;)V

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 825
    :cond_3
    :goto_1
    return-void

    .line 817
    :cond_4
    iget-object v0, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    invoke-virtual {v0}, Lcom/adwo/adsdk/f;->a()V

    .line 818
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

    .line 131
    invoke-direct {p0}, Lcom/adwo/adsdk/b;->g()V

    .line 132
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0}, Lcom/adwo/adsdk/R;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0}, Lcom/adwo/adsdk/R;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 134
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/R;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 138
    iget-object v0, p0, Lcom/adwo/adsdk/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 525
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/adwo/adsdk/b;->d:I

    .line 526
    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/adwo/adsdk/b;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->postInvalidate()V

    .line 528
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0}, Lcom/adwo/adsdk/R;->a()V

    .line 164
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0}, Lcom/adwo/adsdk/R;->b()V

    .line 170
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0}, Lcom/adwo/adsdk/R;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0}, Lcom/adwo/adsdk/R;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 172
    iget-object v0, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/R;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_0
    iput-object v1, p0, Lcom/adwo/adsdk/b;->l:Lcom/adwo/adsdk/R;

    .line 177
    :cond_1
    return-void
.end method

.method protected final d()Lcom/adwo/adsdk/f;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    return-object v0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 682
    if-nez v0, :cond_1

    .line 683
    invoke-virtual {p0, v7}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    .line 707
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 684
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 688
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getLeft()I

    move-result v2

    .line 689
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getTop()I

    move-result v3

    .line 690
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getRight()I

    move-result v4

    .line 691
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getBottom()I

    move-result v5

    .line 693
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

    .line 694
    :cond_2
    invoke-virtual {p0, v6}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    goto :goto_0

    .line 696
    :cond_3
    invoke-virtual {p0, v7}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    goto :goto_0

    .line 698
    :cond_4
    if-ne v0, v7, :cond_6

    .line 699
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 700
    invoke-direct {p0}, Lcom/adwo/adsdk/b;->h()V

    .line 703
    :cond_5
    invoke-virtual {p0, v6}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    goto :goto_0

    .line 704
    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 705
    invoke-virtual {p0, v6}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    goto :goto_0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 713
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    .line 721
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 714
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    invoke-direct {p0}, Lcom/adwo/adsdk/b;->h()V

    .line 719
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 622
    new-instance v0, Lcom/adwo/adsdk/c;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/c;-><init>(Lcom/adwo/adsdk/b;)V

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->post(Ljava/lang/Runnable;)Z

    .line 632
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 635
    new-instance v0, Lcom/adwo/adsdk/d;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/d;-><init>(Lcom/adwo/adsdk/b;)V

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->post(Ljava/lang/Runnable;)Z

    .line 644
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 834
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 828
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 831
    return-void
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 727
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 728
    if-eqz p1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 662
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 663
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 664
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    .line 666
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 671
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 672
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 673
    :cond_0
    invoke-direct {p0}, Lcom/adwo/adsdk/b;->h()V

    .line 675
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setPressed(Z)V

    .line 676
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 548
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 549
    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/adwo/adsdk/b;->i:Lcom/adwo/adsdk/f;

    invoke-virtual {v1}, Lcom/adwo/adsdk/f;->b()Ljava/lang/String;

    move-result-object v1

    .line 553
    if-eqz v1, :cond_0

    .line 554
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 555
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 556
    iget-object v0, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 557
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 558
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 570
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 571
    invoke-direct {p0}, Lcom/adwo/adsdk/b;->g()V

    .line 573
    iget v1, p0, Lcom/adwo/adsdk/b;->c:I

    .line 572
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adwo/adsdk/b;->a(Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    .line 574
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adwo/adsdk/b;->a(Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    .line 577
    iget v1, p0, Lcom/adwo/adsdk/b;->c:I

    const/4 v1, 0x1

    .line 576
    invoke-static {v0, v1}, Lcom/adwo/adsdk/b;->a(Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->f:Landroid/graphics/drawable/Drawable;

    .line 578
    iget-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 535
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/adwo/adsdk/b;->c:I

    .line 536
    return-void
.end method

.method public final setPressed(Z)V
    .locals 3

    .prologue
    .line 737
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/adwo/adsdk/b;->o:Z

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_3

    .line 738
    iget-object v0, p0, Lcom/adwo/adsdk/b;->e:Landroid/graphics/drawable/Drawable;

    .line 739
    iget v0, p0, Lcom/adwo/adsdk/b;->d:I

    .line 740
    if-eqz p1, :cond_4

    .line 741
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/adwo/adsdk/b;->h:Landroid/graphics/drawable/Drawable;

    .line 742
    iget-object v0, p0, Lcom/adwo/adsdk/b;->g:Landroid/graphics/drawable/Drawable;

    .line 743
    const/high16 v1, -0x1000000

    move v2, v1

    move-object v1, v0

    move v0, v2

    .line 748
    :goto_0
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    iget-object v1, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 750
    iget-object v1, p0, Lcom/adwo/adsdk/b;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 753
    iget-object v1, p0, Lcom/adwo/adsdk/b;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 756
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 757
    invoke-virtual {p0}, Lcom/adwo/adsdk/b;->invalidate()V

    .line 759
    :cond_3
    return-void

    .line 745
    :cond_4
    iget-object v1, p0, Lcom/adwo/adsdk/b;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
