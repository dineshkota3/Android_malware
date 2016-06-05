.class public final Lcom/adwo/adsdk/AdwoAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static d:I

.field private static k:Landroid/os/Handler;

.field private static l:I

.field private static m:I

.field private static n:B


# instance fields
.field protected a:Z

.field protected volatile b:Z

.field private c:Lcom/adwo/adsdk/b;

.field private e:Ljava/util/Timer;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Lcom/adwo/adsdk/AdListener;

.field private j:Z

.field private o:Lcom/adwo/adsdk/B;

.field private p:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/adwo/adsdk/AdwoAdView;->k:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    sput-byte v0, Lcom/adwo/adsdk/AdwoAdView;->n:B

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adwo/adsdk/AdwoAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 207
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v5, p0, Lcom/adwo/adsdk/AdwoAdView;->b:Z

    .line 51
    new-instance v0, Lcom/adwo/adsdk/B;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/B;-><init>(Lcom/adwo/adsdk/AdwoAdView;)V

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->o:Lcom/adwo/adsdk/B;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 214
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 215
    iput-boolean v3, p0, Lcom/adwo/adsdk/AdwoAdView;->j:Z

    .line 216
    invoke-virtual {p0, v5}, Lcom/adwo/adsdk/AdwoAdView;->setFocusable(Z)V

    .line 217
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->setDescendantFocusability(I)V

    .line 218
    invoke-virtual {p0, v5}, Lcom/adwo/adsdk/AdwoAdView;->setClickable(Z)V

    .line 221
    if-eqz p2, :cond_1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "testing"

    .line 224
    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 226
    if-eqz v1, :cond_0

    .line 227
    invoke-static {v1}, Lcom/adwo/adsdk/i;->a(Z)V

    .line 229
    :cond_0
    const-string v1, "textColor"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 232
    const-string v2, "backgroundColor"

    .line 231
    invoke-interface {p2, v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 235
    const-string v3, "refreshInterval"

    const/16 v4, 0x1e

    .line 234
    invoke-interface {p2, v0, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 236
    invoke-static {v0}, Lcom/adwo/adsdk/AdwoAdView;->a(I)V

    move v0, v2

    .line 238
    :goto_0
    iput-boolean v5, p0, Lcom/adwo/adsdk/AdwoAdView;->h:Z

    .line 239
    invoke-direct {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->b(I)V

    .line 240
    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->setBackgroundColor(I)V

    .line 242
    invoke-static {p1}, Lcom/adwo/adsdk/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/adwo/adsdk/i;->b(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/adwo/adsdk/AdwoAdView;->a(Landroid/content/Context;)V

    .line 245
    return-void

    :cond_1
    move v0, v3

    move v1, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 126
    invoke-direct {p0, p1, v3, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v1, p0, Lcom/adwo/adsdk/AdwoAdView;->b:Z

    .line 51
    new-instance v0, Lcom/adwo/adsdk/B;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/B;-><init>(Lcom/adwo/adsdk/AdwoAdView;)V

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->o:Lcom/adwo/adsdk/B;

    .line 52
    iput-object v3, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 127
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 128
    iput-boolean v2, p0, Lcom/adwo/adsdk/AdwoAdView;->j:Z

    .line 129
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->setFocusable(Z)V

    .line 130
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->setDescendantFocusability(I)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->setClickable(Z)V

    .line 132
    if-eqz p5, :cond_0

    .line 133
    invoke-static {p5}, Lcom/adwo/adsdk/i;->a(Z)V

    .line 135
    :cond_0
    invoke-direct {p0, p4}, Lcom/adwo/adsdk/AdwoAdView;->b(I)V

    .line 136
    invoke-virtual {p0, p3}, Lcom/adwo/adsdk/AdwoAdView;->setBackgroundColor(I)V

    .line 137
    invoke-static {p6}, Lcom/adwo/adsdk/AdwoAdView;->a(I)V

    .line 138
    iput-boolean v1, p0, Lcom/adwo/adsdk/AdwoAdView;->h:Z

    .line 139
    invoke-static {p2}, Lcom/adwo/adsdk/i;->b(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/adwo/adsdk/AdwoAdView;->a(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method protected static a()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/adwo/adsdk/AdwoAdView;->l:I

    return v0
.end method

.method static synthetic a(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    return-object v0
.end method

.method private static a(I)V
    .locals 5

    .prologue
    const/16 v3, 0x258

    const/16 v2, 0x14

    const-string v4, "Fresh ads Interval("

    .line 369
    if-gtz p0, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 381
    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 382
    sput v0, Lcom/adwo/adsdk/AdwoAdView;->d:I

    .line 383
    return-void

    .line 374
    :cond_0
    if-ge p0, v2, :cond_1

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fresh ads Interval("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    const-string v1, ") seconds must be >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adwo/adsdk/i;->a(Ljava/lang/String;)V

    move v0, p0

    goto :goto_0

    .line 377
    :cond_1
    if-le p0, v3, :cond_2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fresh ads Interval("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    const-string v1, ") seconds must be <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adwo/adsdk/i;->a(Ljava/lang/String;)V

    :cond_2
    move v0, p0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 150
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 157
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 158
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 165
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    .line 166
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    .line 169
    const-string v3, "Adwo SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Version 2.0 width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " density:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {p1}, Lcom/adwo/adsdk/i;->b(Landroid/content/Context;)V

    .line 174
    float-to-int v0, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adwo/adsdk/i;->a(IIZ)B

    move-result v0

    .line 178
    sput-byte v0, Lcom/adwo/adsdk/AdwoAdView;->n:B

    if-lt v0, v6, :cond_0

    sget-byte v0, Lcom/adwo/adsdk/AdwoAdView;->n:B

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 179
    sget-object v0, Lcom/adwo/adsdk/M;->j:[I

    sget-byte v1, Lcom/adwo/adsdk/AdwoAdView;->n:B

    sub-int/2addr v1, v6

    aget v0, v0, v1

    sput v0, Lcom/adwo/adsdk/AdwoAdView;->l:I

    .line 180
    sget-object v0, Lcom/adwo/adsdk/M;->k:[I

    sget-byte v1, Lcom/adwo/adsdk/AdwoAdView;->n:B

    sub-int/2addr v1, v6

    aget v0, v0, v1

    sput v0, Lcom/adwo/adsdk/AdwoAdView;->m:I

    .line 192
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 193
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/adwo/adsdk/AdwoAdView;->o:Lcom/adwo/adsdk/B;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    return-void

    .line 183
    :cond_0
    const/16 v0, 0x140

    sput v0, Lcom/adwo/adsdk/AdwoAdView;->l:I

    .line 184
    const/16 v0, 0x32

    sput v0, Lcom/adwo/adsdk/AdwoAdView;->m:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    .line 386
    monitor-enter p0

    .line 387
    if-eqz p1, :cond_1

    :try_start_0
    sget v0, Lcom/adwo/adsdk/AdwoAdView;->d:I

    if-lez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    .line 390
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    new-instance v1, Lcom/adwo/adsdk/z;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/z;-><init>(Lcom/adwo/adsdk/AdwoAdView;)V

    .line 394
    const-wide/16 v2, 0x0

    sget v4, Lcom/adwo/adsdk/AdwoAdView;->d:I

    int-to-long v4, v4

    .line 390
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 386
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 396
    :cond_1
    if-eqz p1, :cond_2

    sget v0, Lcom/adwo/adsdk/AdwoAdView;->d:I

    if-nez v0, :cond_3

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 401
    :cond_3
    :try_start_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected static b()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/adwo/adsdk/AdwoAdView;->m:I

    return v0
.end method

.method static synthetic b(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/AdListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->i:Lcom/adwo/adsdk/AdListener;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 425
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/adwo/adsdk/AdwoAdView;->g:I

    .line 426
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {v0, p1}, Lcom/adwo/adsdk/b;->a(I)V

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->invalidate()V

    .line 430
    return-void
.end method

.method static synthetic b(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;)V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {v0}, Lcom/adwo/adsdk/b;->c()V

    :cond_0
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    iget-boolean v0, p0, Lcom/adwo/adsdk/AdwoAdView;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xa6

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/adwo/adsdk/AdwoAdView;)I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;)V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 536
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/adwo/adsdk/b;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v2

    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v2

    const v0, -0x41333333    # -0.4f

    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v7, v0, v2

    invoke-static {}, Lcom/adwo/adsdk/K;->values()[Lcom/adwo/adsdk/K;

    move-result-object v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v5, v9

    double-to-int v2, v5

    aget-object v9, v0, v2

    new-instance v0, Lcom/adwo/adsdk/Q;

    const/high16 v2, -0x3d4c0000    # -90.0f

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v9}, Lcom/adwo/adsdk/Q;-><init>(FFFFFFFZLcom/adwo/adsdk/K;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/adwo/adsdk/Q;->setDuration(J)V

    invoke-virtual {v0, v8}, Lcom/adwo/adsdk/Q;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/Q;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/adwo/adsdk/A;

    invoke-direct {v1, p0, p1, v9}, Lcom/adwo/adsdk/A;-><init>(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;Lcom/adwo/adsdk/K;)V

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/Q;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic f()B
    .locals 1

    .prologue
    .line 48
    sget-byte v0, Lcom/adwo/adsdk/AdwoAdView;->n:B

    return v0
.end method

.method static synthetic g()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/adwo/adsdk/AdwoAdView;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final c()V
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/adwo/adsdk/AdwoAdView;->b:Z

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string v0, "Adwo SDK"

    .line 268
    const-string v1, "You have set ads view invisible.  You must call ads view.setVisibility(View.VISIBLE)."

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Lcom/adwo/adsdk/x;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/x;-><init>(Lcom/adwo/adsdk/AdwoAdView;)V

    .line 360
    invoke-virtual {v0}, Lcom/adwo/adsdk/x;->start()V

    goto :goto_0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/adwo/adsdk/AdwoAdView;->g:I

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/adwo/adsdk/AdwoAdView;->f:I

    return v0
.end method

.method public final finalize()V
    .locals 2

    .prologue
    .line 71
    :try_start_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->o:Lcom/adwo/adsdk/B;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/adwo/adsdk/AdwoAdView;->o:Lcom/adwo/adsdk/B;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/adwo/adsdk/AdwoAdView;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 485
    const/16 v0, 0x8

    .line 487
    :goto_1
    return v0

    .line 484
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 487
    :cond_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    goto :goto_1
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adwo/adsdk/AdwoAdView;->j:Z

    .line 511
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 512
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 516
    iput-boolean v0, p0, Lcom/adwo/adsdk/AdwoAdView;->j:Z

    .line 517
    invoke-direct {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->a(Z)V

    .line 518
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 519
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 503
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 504
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->getMeasuredWidth()I

    move-result v0

    .line 505
    sget v1, Lcom/adwo/adsdk/AdwoAdView;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/adwo/adsdk/AdwoAdView;->setMeasuredDimension(II)V

    .line 506
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 415
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 416
    invoke-direct {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->a(Z)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    if-nez p1, :cond_2

    .line 418
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->a(Z)V

    goto :goto_0

    .line 419
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 420
    invoke-direct {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->a(Z)V

    goto :goto_0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 437
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/adwo/adsdk/AdwoAdView;->f:I

    .line 438
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {v0, p1}, Lcom/adwo/adsdk/b;->setBackgroundColor(I)V

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->invalidate()V

    .line 442
    return-void
.end method

.method public final setListener(Lcom/adwo/adsdk/AdListener;)V
    .locals 1

    .prologue
    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->i:Lcom/adwo/adsdk/AdListener;

    .line 492
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setVisibility(I)V
    .locals 3

    .prologue
    .line 458
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    .line 460
    if-eq v0, p1, :cond_1

    .line 461
    monitor-enter p0

    .line 462
    :try_start_0
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->getChildCount()I

    move-result v0

    .line 464
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    .line 468
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 469
    if-eqz p1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {v0}, Lcom/adwo/adsdk/b;->c()V

    .line 473
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->removeView(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {v0}, Lcom/adwo/adsdk/b;->a()V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    .line 461
    :cond_0
    monitor-exit p0

    .line 480
    :cond_1
    return-void

    .line 465
    :cond_2
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 466
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
