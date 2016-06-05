.class public final Lcom/adwo/adsdk/G;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/adwo/adsdk/h;


# static fields
.field static a:Landroid/content/Context;

.field private static c:B


# instance fields
.field private b:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/ImageView;

.field private f:F

.field private g:Ljava/lang/String;

.field private h:Lcom/adwo/adsdk/f;

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/os/Handler;

.field private final m:Landroid/view/animation/ScaleAnimation;

.field private final n:Landroid/view/animation/Animation;

.field private o:Lcom/adwo/adsdk/T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-byte v0, Lcom/adwo/adsdk/G;->c:B

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v11, -0x1

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/G;->d:Landroid/widget/ProgressBar;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    .line 52
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/adwo/adsdk/G;->f:F

    .line 53
    const-string v0, "\u5b89\u6c83\u4f20\u5a92  \u79fb\u52a8\u5e7f\u544a\u4e13\u5bb6"

    iput-object v0, p0, Lcom/adwo/adsdk/G;->g:Ljava/lang/String;

    .line 55
    iput v11, p0, Lcom/adwo/adsdk/G;->i:I

    .line 56
    iput v10, p0, Lcom/adwo/adsdk/G;->j:I

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adwo/adsdk/G;->l:Landroid/os/Handler;

    .line 65
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd    # 1.1f

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3dcccccd    # 0.1f

    .line 66
    const v4, 0x3f666666    # 0.9f

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/adwo/adsdk/G;->m:Landroid/view/animation/ScaleAnimation;

    .line 67
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/adwo/adsdk/G;->n:Landroid/view/animation/Animation;

    .line 103
    invoke-virtual {p0, v5}, Lcom/adwo/adsdk/G;->setFocusable(Z)V

    .line 104
    sput-object p1, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    .line 105
    invoke-static {p2}, Lcom/adwo/adsdk/i;->b(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/adwo/adsdk/i;->b(Landroid/content/Context;)V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/adwo/adsdk/G;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 111
    const-string v1, "adwo_x.png"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adwo/adsdk/G;->k:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 118
    sget-object v0, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    .line 121
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    .line 123
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-static {v0, v1, v5}, Lcom/adwo/adsdk/i;->a(IIZ)B

    move-result v0

    sput-byte v0, Lcom/adwo/adsdk/G;->c:B

    .line 125
    new-instance v0, Landroid/widget/ProgressBar;

    sget-object v1, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adwo/adsdk/G;->d:Landroid/widget/ProgressBar;

    .line 134
    iget-object v0, p0, Lcom/adwo/adsdk/G;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 135
    iget-object v0, p0, Lcom/adwo/adsdk/G;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    new-instance v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v1, Landroid/widget/FrameLayout;

    sget-object v2, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 152
    iget-object v3, p0, Lcom/adwo/adsdk/G;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v3, Landroid/widget/ImageView;

    sget-object v4, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adwo/adsdk/G;->b:Landroid/widget/ImageView;

    .line 155
    iget-object v3, p0, Lcom/adwo/adsdk/G;->b:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v3, p0, Lcom/adwo/adsdk/G;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    const/16 v3, 0xf

    invoke-virtual {v2, v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v1, Landroid/widget/LinearLayout;

    sget-object v2, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 174
    new-instance v3, Landroid/widget/TextView;

    sget-object v4, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 175
    iget-object v4, p0, Lcom/adwo/adsdk/G;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget v4, p0, Lcom/adwo/adsdk/G;->f:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 177
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    iget v4, p0, Lcom/adwo/adsdk/G;->i:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    invoke-virtual {p0, v10}, Lcom/adwo/adsdk/G;->setBackgroundColor(I)V

    .line 184
    new-instance v4, Landroid/widget/ImageView;

    sget-object v6, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    .line 188
    iget-object v4, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 190
    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 188
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v4, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 194
    iget-object v4, p0, Lcom/adwo/adsdk/G;->k:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 195
    iget-object v4, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/adwo/adsdk/G;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    :cond_1
    iget-object v4, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    new-instance v5, Lcom/adwo/adsdk/H;

    invoke-direct {v5, p0}, Lcom/adwo/adsdk/H;-><init>(Lcom/adwo/adsdk/G;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v4, p0, Lcom/adwo/adsdk/G;->b:Landroid/widget/ImageView;

    new-instance v5, Lcom/adwo/adsdk/I;

    invoke-direct {v5, p0}, Lcom/adwo/adsdk/I;-><init>(Lcom/adwo/adsdk/G;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v4, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v4, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v3, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 256
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 257
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    const/16 v2, 0x11

    .line 260
    invoke-direct {v1, v9, v9, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/adwo/adsdk/G;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    new-instance v0, Lcom/adwo/adsdk/L;

    sget-object v1, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/adwo/adsdk/L;-><init>(Lcom/adwo/adsdk/G;Landroid/content/Context;)V

    .line 267
    iget-object v1, p0, Lcom/adwo/adsdk/G;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 382
    .line 384
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "httpCall to url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/adwo/adsdk/O;->a()V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v2, Lcom/adwo/adsdk/O;->a:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const-string v2, "User-Agent"

    sget-object v3, Lcom/adwo/adsdk/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "Cookie"

    sget-object v3, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 386
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v5

    .line 407
    :goto_1
    return-object v0

    .line 389
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 391
    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 394
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 395
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 398
    :try_start_1
    sget-object v4, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/adwo/adsdk/a;->a(Landroid/content/Context;)Lcom/adwo/adsdk/a;

    move-result-object v4

    invoke-virtual {v4, p2, v2}, Lcom/adwo/adsdk/a;->a(Ljava/lang/String;[B)V

    .line 400
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 401
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    goto :goto_1

    .line 392
    :cond_2
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 402
    :catch_0
    move-exception v0

    move-object v0, v5

    .line 403
    :goto_3
    const-string v1, "Splash Ads"

    .line 404
    const-string v2, "Unable to fetch image for ad from adwo server."

    .line 403
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 402
    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :cond_3
    move-object v0, v5

    goto :goto_0
.end method

.method static synthetic a(Lcom/adwo/adsdk/G;)Lcom/adwo/adsdk/f;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adwo/adsdk/G;->h:Lcom/adwo/adsdk/f;

    return-object v0
.end method

.method static synthetic a(Lcom/adwo/adsdk/G;Lcom/adwo/adsdk/f;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adwo/adsdk/G;->h:Lcom/adwo/adsdk/f;

    return-void
.end method

.method static synthetic b()B
    .locals 1

    .prologue
    .line 47
    sget-byte v0, Lcom/adwo/adsdk/G;->c:B

    return v0
.end method

.method static synthetic b(Lcom/adwo/adsdk/G;)Lcom/adwo/adsdk/T;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adwo/adsdk/G;->o:Lcom/adwo/adsdk/T;

    return-object v0
.end method

.method static synthetic c(Lcom/adwo/adsdk/G;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adwo/adsdk/G;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/adwo/adsdk/G;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adwo/adsdk/G;->n:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic e(Lcom/adwo/adsdk/G;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 273
    iget-object v0, p0, Lcom/adwo/adsdk/G;->h:Lcom/adwo/adsdk/f;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/adwo/adsdk/G;->h:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;

    .line 281
    if-nez v0, :cond_2

    .line 282
    invoke-static {}, Lcom/adwo/adsdk/O;->a()V

    .line 283
    iget-object v0, p0, Lcom/adwo/adsdk/G;->o:Lcom/adwo/adsdk/T;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/adwo/adsdk/G;->o:Lcom/adwo/adsdk/T;

    invoke-interface {v0}, Lcom/adwo/adsdk/T;->b()V

    .line 286
    :cond_0
    sget-object p0, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 293
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 297
    sget-object v2, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/adwo/adsdk/a;->a(Landroid/content/Context;)Lcom/adwo/adsdk/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adwo/adsdk/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 302
    :try_start_0
    sget-object v2, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/adwo/adsdk/a;->a(Landroid/content/Context;)Lcom/adwo/adsdk/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adwo/adsdk/a;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 304
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 306
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 319
    :goto_1
    if-eqz v0, :cond_5

    .line 320
    iget-object v1, p0, Lcom/adwo/adsdk/G;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    iget-object v0, p0, Lcom/adwo/adsdk/G;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/adwo/adsdk/G;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/adwo/adsdk/G;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/adwo/adsdk/G;->h:Lcom/adwo/adsdk/f;

    iput-object p0, v0, Lcom/adwo/adsdk/f;->i:Lcom/adwo/adsdk/h;

    .line 328
    iget-object v0, p0, Lcom/adwo/adsdk/G;->o:Lcom/adwo/adsdk/T;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/adwo/adsdk/G;->o:Lcom/adwo/adsdk/T;

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/adwo/adsdk/G;->m:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 333
    iget-object v0, p0, Lcom/adwo/adsdk/G;->m:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/adwo/adsdk/K;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/K;-><init>(Lcom/adwo/adsdk/G;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 344
    iget-object v0, p0, Lcom/adwo/adsdk/G;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adwo/adsdk/G;->m:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 309
    :catch_0
    move-exception v2

    .line 310
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/adwo/adsdk/G;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/adwo/adsdk/G;->o:Lcom/adwo/adsdk/T;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/adwo/adsdk/G;->o:Lcom/adwo/adsdk/T;

    invoke-interface {v0}, Lcom/adwo/adsdk/T;->b()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/adwo/adsdk/T;)V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iput-object p1, p0, Lcom/adwo/adsdk/G;->o:Lcom/adwo/adsdk/T;

    .line 72
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 433
    invoke-static {}, Lcom/adwo/adsdk/O;->a()V

    .line 434
    sget-object p0, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 435
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 415
    const/4 v0, 0x1

    .line 418
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
