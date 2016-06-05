.class final Lcom/adwo/adsdk/j;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static o:Ljava/lang/String;


# instance fields
.field protected a:Landroid/webkit/WebView;

.field private b:Landroid/app/NotificationManager;

.field private c:Landroid/app/Notification;

.field private volatile d:Z

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Ljava/lang/String;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/app/Activity;IJLjava/lang/String;ZZZZ)V
    .locals 11

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/adwo/adsdk/j;->d:Z

    .line 98
    new-instance v2, Lcom/adwo/adsdk/k;

    invoke-direct {v2, p0}, Lcom/adwo/adsdk/k;-><init>(Lcom/adwo/adsdk/j;)V

    .line 113
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/adwo/adsdk/j;->n:Ljava/lang/ref/WeakReference;

    .line 114
    const/16 v2, 0x3ad6

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/j;->setId(I)V

    .line 115
    iget-object v2, p0, Lcom/adwo/adsdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 116
    if-nez p1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/adwo/adsdk/j;->b:Landroid/app/NotificationManager;

    .line 123
    new-instance v2, Landroid/app/Notification;

    const v3, 0x108005e

    const-string v4, "\u7a0b\u5e8f\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    .line 127
    iget-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    const/4 v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 130
    const v2, 0x1030010

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 133
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/j;->setWillNotDraw(Z)V

    .line 135
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 136
    const/high16 v3, 0x3d800000    # 0.0625f

    mul-float/2addr v2, v3

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/adwo/adsdk/j;->setPadding(IIII)V

    .line 139
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    .line 140
    iget-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v2, p0, Lcom/adwo/adsdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 194
    if-eqz p1, :cond_0

    .line 199
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    .line 200
    iget-object v2, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setId(I)V

    .line 202
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 203
    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    new-instance v4, Lcom/adwo/adsdk/v;

    invoke-direct {v4, p0}, Lcom/adwo/adsdk/v;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 205
    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    new-instance v4, Lcom/adwo/adsdk/u;

    invoke-direct {v4, p0}, Lcom/adwo/adsdk/u;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 207
    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    new-instance v4, Lcom/adwo/adsdk/t;

    invoke-direct {v4, p0}, Lcom/adwo/adsdk/t;-><init>(Lcom/adwo/adsdk/j;)V

    const-string v5, "interface"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 209
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 210
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 212
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 213
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 215
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/adwo/adsdk/j;->o:Ljava/lang/String;

    .line 216
    if-eqz p6, :cond_2

    .line 217
    const/4 v3, 0x3

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 220
    if-eqz p9, :cond_3

    .line 222
    iget-object v2, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 223
    iget-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 231
    :goto_1
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    .line 232
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x28

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    iget-object v3, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 235
    iget-object v3, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 237
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    .line 238
    iget-object v3, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 240
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 244
    :try_start_0
    const-string v4, "adwo_x.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 245
    const-string v5, "adwo_x.png"

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/adwo/adsdk/j;->m:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_2
    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/j;->c(Z)V

    .line 255
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 256
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 257
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 258
    iget-object v5, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    .line 263
    :try_start_1
    const-string v4, "adwo_right_arrow.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 264
    const-string v5, "adwo_right_arrow.png"

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/adwo/adsdk/j;->k:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 276
    :goto_3
    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/j;->a(Z)V

    .line 278
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    .line 280
    :try_start_2
    const-string v4, "adwo_left_arrow.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 281
    const-string v4, "adwo_left_arrow.png"

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/adwo/adsdk/j;->l:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 293
    :goto_4
    iget-object v3, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const/16 v4, 0x12d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 294
    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/j;->b(Z)V

    .line 296
    iget-object v3, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const/16 v4, 0x12e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 297
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 298
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 299
    iget-object v4, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v3, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const/16 v4, 0x12f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 302
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 303
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 304
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 305
    iget-object v4, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v3, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    iget-object v3, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    iget-object v3, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    if-eqz p7, :cond_4

    .line 312
    iget-object v2, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    :goto_5
    iget-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/j;->addView(Landroid/view/View;)V

    .line 316
    if-nez p5, :cond_7

    const-string v2, "toptobottom"

    :goto_6
    const-string v3, "toptobottom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v2, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v3, Lcom/adwo/adsdk/l;

    invoke-direct {v3, p0}, Lcom/adwo/adsdk/l;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-string v3, "Adwo AdSDK"

    const-string v4, "translate down"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/j;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 227
    :cond_3
    iget-object v2, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 228
    iget-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 250
    :catch_0
    move-exception v4

    .line 251
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 269
    :catch_1
    move-exception v4

    .line 270
    iget-object v5, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const v6, -0x333334

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 271
    iget-object v5, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const-string v6, ">>"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v5, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 273
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 286
    :catch_2
    move-exception v3

    .line 288
    iget-object v4, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const v5, -0x333334

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 289
    iget-object v4, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const-string v5, "<<"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v4, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 291
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 314
    :cond_4
    iget-object v2, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 316
    :cond_5
    const-string v3, "explode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f8ccccd    # 1.1f

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3f666666    # 0.9f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v2, p3, p4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v3, Lcom/adwo/adsdk/m;

    invoke-direct {v3, p0}, Lcom/adwo/adsdk/m;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/j;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v2, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v3, Lcom/adwo/adsdk/n;

    invoke-direct {v3, p0}, Lcom/adwo/adsdk/n;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/j;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v2, p5

    goto/16 :goto_6
.end method

.method static synthetic a(Lcom/adwo/adsdk/j;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/adwo/adsdk/j;Z)V
    .locals 4

    .prologue
    .line 535
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/adwo/adsdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/j;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/adwo/adsdk/j;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/adwo/adsdk/j;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/adwo/adsdk/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adwo/adsdk/j;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/adwo/adsdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 411
    iput-object p1, p0, Lcom/adwo/adsdk/j;->j:Ljava/lang/String;

    .line 414
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adwo/adsdk/o;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/o;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 420
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 426
    return-void
.end method

.method final a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v0, "/adwo/"

    .line 952
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 953
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 959
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 965
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    const-string v0, "SD \u5361\u6b63\u5fd9\u3002\u8981\u5141\u8bb8\u4e0b\u8f7d\uff0c\u8bf7\u5728\u901a\u77e5\u4e2d\u9009\u62e9\"\u5173\u95edUSB \u5b58\u50a8\""

    .line 967
    const-string v1, "SD \u5361\u4e0d\u53ef\u7528"

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 973
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/adwo/adsdk/j;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 974
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 975
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 976
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 977
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1081
    :cond_0
    :goto_1
    return-void

    .line 969
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9700\u8981\u6709 SD \u5361\u624d\u80fd\u4e0b\u8f7d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    const-string v1, "\u65e0 SD \u5361"

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    .line 983
    :cond_2
    new-instance v1, Lcom/adwo/adsdk/s;

    invoke-direct {v1, p0, p2, v0}, Lcom/adwo/adsdk/s;-><init>(Lcom/adwo/adsdk/j;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 992
    iget-boolean v1, p0, Lcom/adwo/adsdk/j;->d:Z

    if-nez v1, :cond_0

    .line 995
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adwo/adsdk/j;->d:Z

    .line 998
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 999
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1000
    const-string v3, "User-Agent"

    sget-object v4, Lcom/adwo/adsdk/j;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1004
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 1007
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    .line 1010
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 1014
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/adwo/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1016
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1019
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/adwo/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1023
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1024
    if-nez v3, :cond_4

    .line 1078
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    .line 1027
    :cond_4
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1032
    :goto_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 1034
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1035
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1053
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1055
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1057
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    const/4 v1, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p2, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1063
    iget-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 1066
    iget-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210,\u8bf7\u5b89\u88c5\u4f7f\u7528"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v3, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1068
    :cond_5
    iget-object v0, p0, Lcom/adwo/adsdk/j;->b:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    :cond_6
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    .line 1031
    :cond_7
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1072
    :catch_0
    move-exception v0

    .line 1074
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1078
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    .line 1075
    :catch_1
    move-exception v0

    .line 1078
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    .line 1077
    :catchall_0
    move-exception v0

    .line 1078
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    .line 1079
    throw v0
.end method

.method protected final a(Z)V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    if-eqz p1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adwo/adsdk/j;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    iget-object v0, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    new-instance v1, Lcom/adwo/adsdk/p;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/p;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected final b(Z)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    if-eqz p1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adwo/adsdk/j;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    iget-object v0, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    new-instance v1, Lcom/adwo/adsdk/q;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/q;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected final c(Z)V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    if-eqz p1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adwo/adsdk/j;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget-object v0, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    new-instance v1, Lcom/adwo/adsdk/r;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/r;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 323
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 325
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 327
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 328
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 329
    return-void
.end method
