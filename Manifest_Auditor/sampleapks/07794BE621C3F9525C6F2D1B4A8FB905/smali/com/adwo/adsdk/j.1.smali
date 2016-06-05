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
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    .line 55
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/adwo/adsdk/j;->d:Z

    .line 69
    new-instance v2, Lcom/adwo/adsdk/k;

    invoke-direct {v2, p0}, Lcom/adwo/adsdk/k;-><init>(Lcom/adwo/adsdk/j;)V

    .line 83
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/adwo/adsdk/j;->n:Ljava/lang/ref/WeakReference;

    .line 84
    const/16 v2, 0x3ad6

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/j;->setId(I)V

    .line 85
    iget-object v2, p0, Lcom/adwo/adsdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 86
    if-nez p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 89
    iput-object v2, p0, Lcom/adwo/adsdk/j;->b:Landroid/app/NotificationManager;

    .line 91
    new-instance v2, Landroid/app/Notification;

    const v3, 0x108005e

    .line 92
    const-string v4, "\u7a0b\u5e8f\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 91
    iput-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    .line 93
    iget-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    const/4 v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 94
    const v2, 0x1030010

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 95
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/j;->setWillNotDraw(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 99
    const/high16 v3, 0x3d800000    # 0.0625f

    mul-float/2addr v2, v3

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 100
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/adwo/adsdk/j;->setPadding(IIII)V

    .line 103
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    .line 104
    iget-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v2, p0, Lcom/adwo/adsdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 148
    if-eqz p1, :cond_0

    .line 152
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    .line 153
    iget-object v2, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setId(I)V

    .line 155
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 155
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    new-instance v4, Lcom/adwo/adsdk/w;

    invoke-direct {v4, p0}, Lcom/adwo/adsdk/w;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 159
    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    new-instance v4, Lcom/adwo/adsdk/v;

    invoke-direct {v4, p0}, Lcom/adwo/adsdk/v;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 161
    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    new-instance v4, Lcom/adwo/adsdk/u;

    invoke-direct {v4, p0}, Lcom/adwo/adsdk/u;-><init>(Lcom/adwo/adsdk/j;)V

    .line 162
    const-string v5, "interface"

    .line 161
    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 164
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 165
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 169
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 170
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 171
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 172
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/adwo/adsdk/j;->o:Ljava/lang/String;

    .line 173
    if-eqz p6, :cond_2

    .line 174
    const/4 v3, 0x3

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 177
    if-eqz p9, :cond_3

    .line 178
    iget-object v2, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 179
    iget-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 185
    :goto_1
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    .line 186
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 187
    const/4 v3, -0x1

    const/16 v4, 0x28

    .line 186
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    iget-object v3, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 190
    iget-object v3, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 192
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    .line 193
    iget-object v3, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 195
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 198
    :try_start_0
    const-string v4, "adwo_x.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 199
    const-string v5, "adwo_x.png"

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/adwo/adsdk/j;->m:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_2
    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/j;->c(Z)V

    .line 205
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    const/4 v5, -0x2

    .line 207
    const/4 v6, -0x2

    .line 205
    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 209
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    iget-object v5, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    .line 214
    :try_start_1
    const-string v4, "adwo_right_arrow.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 216
    const-string v5, "adwo_right_arrow.png"

    .line 215
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/adwo/adsdk/j;->k:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :goto_3
    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/j;->a(Z)V

    .line 225
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    .line 227
    :try_start_2
    const-string v4, "adwo_left_arrow.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 229
    const-string v4, "adwo_left_arrow.png"

    .line 228
    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/adwo/adsdk/j;->l:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 236
    :goto_4
    iget-object v3, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const/16 v4, 0x12d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 237
    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/j;->b(Z)V

    .line 238
    iget-object v3, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const/16 v4, 0x12e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 239
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    const/4 v4, -0x2

    const/4 v5, -0x2

    .line 239
    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    iget-object v4, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v3, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const/16 v4, 0x12f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 245
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 246
    const/4 v4, -0x2

    const/4 v5, -0x2

    .line 245
    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 247
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 248
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 249
    iget-object v4, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v3, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    iget-object v3, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    if-eqz p7, :cond_4

    .line 256
    iget-object v2, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    :goto_5
    iget-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/j;->addView(Landroid/view/View;)V

    .line 260
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

    new-instance v3, Lcom/adwo/adsdk/m;

    invoke-direct {v3, p0}, Lcom/adwo/adsdk/m;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/j;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 181
    :cond_3
    iget-object v2, p0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 182
    iget-object v2, p0, Lcom/adwo/adsdk/j;->i:Landroid/widget/RelativeLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 200
    :catch_0
    move-exception v4

    .line 201
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 217
    :catch_1
    move-exception v4

    .line 218
    iget-object v5, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const v6, -0x333334

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 219
    iget-object v5, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const-string v6, ">>"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v5, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 221
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 230
    :catch_2
    move-exception v3

    .line 231
    iget-object v4, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const v5, -0x333334

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 232
    iget-object v4, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const-string v5, "<<"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v4, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 234
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 258
    :cond_4
    iget-object v2, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 260
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

    new-instance v3, Lcom/adwo/adsdk/n;

    invoke-direct {v3, p0}, Lcom/adwo/adsdk/n;-><init>(Lcom/adwo/adsdk/j;)V

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

    new-instance v3, Lcom/adwo/adsdk/o;

    invoke-direct {v3, p0}, Lcom/adwo/adsdk/o;-><init>(Lcom/adwo/adsdk/j;)V

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
    .line 59
    iget-object v0, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/adwo/adsdk/j;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v0, "/adwo/"

    .line 891
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "SD \u5361\u6b63\u5fd9\u3002\u8981\u5141\u8bb8\u4e0b\u8f7d\uff0c\u8bf7\u5728\u901a\u77e5\u4e2d\u9009\u62e9\"\u5173\u95edUSB \u5b58\u50a8\""

    const-string v1, "SD \u5361\u4e0d\u53ef\u7528"

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/adwo/adsdk/j;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9700\u8981\u6709 SD \u5361\u624d\u80fd\u4e0b\u8f7d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u65e0 SD \u5361"

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/adwo/adsdk/l;

    invoke-direct {v1, p0, p2, v0}, Lcom/adwo/adsdk/l;-><init>(Lcom/adwo/adsdk/j;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/adwo/adsdk/j;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adwo/adsdk/j;->d:Z

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v3, "User-Agent"

    sget-object v4, Lcom/adwo/adsdk/j;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

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

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

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

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    :cond_4
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "image/bmp"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "image/gif"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "image/jpeg"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p2, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

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

    :cond_5
    iget-object v0, p0, Lcom/adwo/adsdk/j;->b:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    :cond_7
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    throw v0
.end method

.method static synthetic a(Lcom/adwo/adsdk/j;Z)V
    .locals 4

    .prologue
    .line 404
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
    .line 58
    iget-object v0, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/adwo/adsdk/j;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adwo/adsdk/j;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/adwo/adsdk/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adwo/adsdk/j;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/adwo/adsdk/j;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 336
    iput-object p1, p0, Lcom/adwo/adsdk/j;->j:Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adwo/adsdk/p;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/p;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 346
    return-void
.end method

.method final a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v0, "/adwo/"

    .line 755
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 756
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 762
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 769
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    const-string v0, "SD \u5361\u6b63\u5fd9\u3002\u8981\u5141\u8bb8\u4e0b\u8f7d\uff0c\u8bf7\u5728\u901a\u77e5\u4e2d\u9009\u62e9\"\u5173\u95edUSB \u5b58\u50a8\""

    .line 771
    const-string v1, "SD \u5361\u4e0d\u53ef\u7528"

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 777
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/adwo/adsdk/j;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 778
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 779
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 889
    :cond_0
    :goto_1
    return-void

    .line 773
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9700\u8981\u6709 SD \u5361\u624d\u80fd\u4e0b\u8f7d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    const-string v1, "\u65e0 SD \u5361"

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    .line 783
    :cond_2
    new-instance v1, Lcom/adwo/adsdk/t;

    invoke-direct {v1, p0, p2, v0}, Lcom/adwo/adsdk/t;-><init>(Lcom/adwo/adsdk/j;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 796
    iget-boolean v1, p0, Lcom/adwo/adsdk/j;->d:Z

    if-nez v1, :cond_0

    .line 799
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adwo/adsdk/j;->d:Z

    .line 801
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 802
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 803
    const-string v3, "User-Agent"

    sget-object v4, Lcom/adwo/adsdk/j;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 807
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 811
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    .line 814
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 818
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 819
    const-string v4, "/adwo/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 818
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 821
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 824
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 825
    const-string v4, "/adwo/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 824
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 830
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 831
    if-nez v3, :cond_4

    .line 886
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    .line 834
    :cond_4
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 839
    :goto_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 841
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 842
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 860
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 862
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 865
    const-string v3, "application/vnd.android.package-archive"

    .line 864
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const/4 v1, 0x0

    .line 869
    const/high16 v3, 0x10000000

    .line 867
    invoke-static {p2, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 871
    iget-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 873
    iget-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 874
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

    .line 873
    invoke-virtual {v2, p2, v3, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 876
    :cond_5
    iget-object v0, p0, Lcom/adwo/adsdk/j;->b:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    .line 877
    iget-object v2, p0, Lcom/adwo/adsdk/j;->c:Landroid/app/Notification;

    .line 876
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    :cond_6
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    .line 838
    :cond_7
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 880
    :catch_0
    move-exception v0

    .line 882
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 886
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    .line 883
    :catch_1
    move-exception v0

    .line 886
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    goto/16 :goto_1

    .line 885
    :catchall_0
    move-exception v0

    .line 886
    iput-boolean v6, p0, Lcom/adwo/adsdk/j;->d:Z

    .line 887
    throw v0
.end method

.method protected final a(Z)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    if-eqz p1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adwo/adsdk/j;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v0, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    new-instance v1, Lcom/adwo/adsdk/q;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/q;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/adwo/adsdk/j;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected final b(Z)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    if-eqz p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adwo/adsdk/j;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget-object v0, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    new-instance v1, Lcom/adwo/adsdk/r;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/r;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/adwo/adsdk/j;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected final c(Z)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    if-eqz p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adwo/adsdk/j;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v0, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    new-instance v1, Lcom/adwo/adsdk/s;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/s;-><init>(Lcom/adwo/adsdk/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/adwo/adsdk/j;->g:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 268
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 270
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 271
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 272
    return-void
.end method
