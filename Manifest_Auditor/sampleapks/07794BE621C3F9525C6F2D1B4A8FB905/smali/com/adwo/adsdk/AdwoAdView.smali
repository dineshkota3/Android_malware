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

.field private o:Lcom/adwo/adsdk/D;

.field private p:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/adwo/adsdk/AdwoAdView;->k:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    sput-byte v0, Lcom/adwo/adsdk/AdwoAdView;->n:B

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adwo/adsdk/AdwoAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v5, p0, Lcom/adwo/adsdk/AdwoAdView;->b:Z

    .line 46
    new-instance v0, Lcom/adwo/adsdk/D;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/D;-><init>(Lcom/adwo/adsdk/AdwoAdView;)V

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->o:Lcom/adwo/adsdk/D;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 158
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 159
    iput-boolean v3, p0, Lcom/adwo/adsdk/AdwoAdView;->j:Z

    .line 160
    invoke-virtual {p0, v5}, Lcom/adwo/adsdk/AdwoAdView;->setFocusable(Z)V

    .line 161
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->setDescendantFocusability(I)V

    .line 162
    invoke-virtual {p0, v5}, Lcom/adwo/adsdk/AdwoAdView;->setClickable(Z)V

    .line 165
    if-eqz p2, :cond_1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "testing"

    .line 168
    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 170
    if-eqz v1, :cond_0

    .line 171
    invoke-static {v1}, Lcom/adwo/adsdk/i;->a(Z)V

    .line 173
    :cond_0
    const-string v1, "textColor"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 176
    const-string v2, "backgroundColor"

    .line 175
    invoke-interface {p2, v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 179
    const-string v3, "refreshInterval"

    const/16 v4, 0x1e

    .line 178
    invoke-interface {p2, v0, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 180
    invoke-static {v0}, Lcom/adwo/adsdk/AdwoAdView;->a(I)V

    move v0, v2

    .line 182
    :goto_0
    iput-boolean v5, p0, Lcom/adwo/adsdk/AdwoAdView;->h:Z

    .line 183
    invoke-direct {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->b(I)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->setBackgroundColor(I)V

    .line 186
    invoke-static {p1}, Lcom/adwo/adsdk/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/adwo/adsdk/i;->b(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/adwo/adsdk/AdwoAdView;->a(Landroid/content/Context;)V

    .line 189
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

    .line 111
    invoke-direct {p0, p1, v3, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v1, p0, Lcom/adwo/adsdk/AdwoAdView;->b:Z

    .line 46
    new-instance v0, Lcom/adwo/adsdk/D;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/D;-><init>(Lcom/adwo/adsdk/AdwoAdView;)V

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->o:Lcom/adwo/adsdk/D;

    .line 47
    iput-object v3, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 112
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 113
    iput-boolean v2, p0, Lcom/adwo/adsdk/AdwoAdView;->j:Z

    .line 114
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->setFocusable(Z)V

    .line 115
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->setDescendantFocusability(I)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->setClickable(Z)V

    .line 117
    if-eqz p5, :cond_0

    .line 118
    invoke-static {p5}, Lcom/adwo/adsdk/i;->a(Z)V

    .line 120
    :cond_0
    invoke-direct {p0, p4}, Lcom/adwo/adsdk/AdwoAdView;->b(I)V

    .line 121
    invoke-virtual {p0, p3}, Lcom/adwo/adsdk/AdwoAdView;->setBackgroundColor(I)V

    .line 122
    invoke-static {p6}, Lcom/adwo/adsdk/AdwoAdView;->a(I)V

    .line 123
    iput-boolean v1, p0, Lcom/adwo/adsdk/AdwoAdView;->h:Z

    .line 124
    invoke-static {p2}, Lcom/adwo/adsdk/i;->b(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/adwo/adsdk/AdwoAdView;->a(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method protected static a()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/adwo/adsdk/AdwoAdView;->l:I

    return v0
.end method

.method static synthetic a(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/b;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    return-object v0
.end method

.method private static a(I)V
    .locals 5

    .prologue
    const/16 v3, 0x258

    const/16 v2, 0x14

    const-string v4, "Fresh ads Interval("

    .line 319
    if-gtz p0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 331
    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 332
    sput v0, Lcom/adwo/adsdk/AdwoAdView;->d:I

    .line 333
    return-void

    .line 324
    :cond_0
    if-ge p0, v2, :cond_1

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fresh ads Interval("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    const-string v1, ") seconds must be >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adwo/adsdk/i;->a(Ljava/lang/String;)V

    move v0, p0

    goto :goto_0

    .line 327
    :cond_1
    if-le p0, v3, :cond_2

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fresh ads Interval("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    const-string v1, ") seconds must be <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
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

    .line 129
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 131
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    .line 132
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    .line 133
    const-string v3, "Adwo SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Version 2.2 width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 135
    const-string v5, " density:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {p1}, Lcom/adwo/adsdk/i;->b(Landroid/content/Context;)V

    .line 137
    float-to-int v0, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adwo/adsdk/i;->a(IIZ)B

    move-result v0

    .line 138
    sput-byte v0, Lcom/adwo/adsdk/AdwoAdView;->n:B

    if-lt v0, v6, :cond_0

    sget-byte v0, Lcom/adwo/adsdk/AdwoAdView;->n:B

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 139
    sget-object v0, Lcom/adwo/adsdk/O;->j:[I

    sget-byte v1, Lcom/adwo/adsdk/AdwoAdView;->n:B

    sub-int/2addr v1, v6

    aget v0, v0, v1

    sput v0, Lcom/adwo/adsdk/AdwoAdView;->l:I

    .line 140
    sget-object v0, Lcom/adwo/adsdk/O;->k:[I

    sget-byte v1, Lcom/adwo/adsdk/AdwoAdView;->n:B

    sub-int/2addr v1, v6

    aget v0, v0, v1

    sput v0, Lcom/adwo/adsdk/AdwoAdView;->m:I

    .line 146
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/adwo/adsdk/AdwoAdView;->o:Lcom/adwo/adsdk/D;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void

    .line 143
    :cond_0
    const/16 v0, 0x140

    sput v0, Lcom/adwo/adsdk/AdwoAdView;->l:I

    .line 144
    const/16 v0, 0x32

    sput v0, Lcom/adwo/adsdk/AdwoAdView;->m:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    .line 336
    monitor-enter p0

    .line 337
    if-eqz p1, :cond_1

    :try_start_0
    sget v0, Lcom/adwo/adsdk/AdwoAdView;->d:I

    if-lez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    .line 340
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    new-instance v1, Lcom/adwo/adsdk/B;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/B;-><init>(Lcom/adwo/adsdk/AdwoAdView;)V

    .line 344
    const-wide/16 v2, 0x0

    sget v4, Lcom/adwo/adsdk/AdwoAdView;->d:I

    int-to-long v4, v4

    .line 340
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 336
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 346
    :cond_1
    if-eqz p1, :cond_2

    sget v0, Lcom/adwo/adsdk/AdwoAdView;->d:I

    if-nez v0, :cond_3

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 351
    :cond_3
    :try_start_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->e:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected static b()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/adwo/adsdk/AdwoAdView;->m:I

    return v0
.end method

.method static synthetic b(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/AdListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->i:Lcom/adwo/adsdk/AdListener;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 375
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/adwo/adsdk/AdwoAdView;->g:I

    .line 376
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {v0, p1}, Lcom/adwo/adsdk/b;->a(I)V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->invalidate()V

    .line 380
    return-void
.end method

.method static synthetic b(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;)V
    .locals 3

    .prologue
    .line 475
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

    .line 490
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

    invoke-static {}, Lcom/adwo/adsdk/M;->values()[Lcom/adwo/adsdk/M;

    move-result-object v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v5, v9

    double-to-int v2, v5

    aget-object v9, v0, v2

    new-instance v0, Lcom/adwo/adsdk/S;

    const/high16 v2, -0x3d4c0000    # -90.0f

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v9}, Lcom/adwo/adsdk/S;-><init>(FFFFFFFZLcom/adwo/adsdk/M;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/adwo/adsdk/S;->setDuration(J)V

    invoke-virtual {v0, v8}, Lcom/adwo/adsdk/S;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/S;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/adwo/adsdk/C;

    invoke-direct {v1, p0, p1, v9}, Lcom/adwo/adsdk/C;-><init>(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;Lcom/adwo/adsdk/M;)V

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/S;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic f()B
    .locals 1

    .prologue
    .line 43
    sget-byte v0, Lcom/adwo/adsdk/AdwoAdView;->n:B

    return v0
.end method

.method static synthetic g()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/adwo/adsdk/AdwoAdView;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final c()V
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/adwo/adsdk/AdwoAdView;->b:Z

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "Adwo SDK"

    .line 211
    const-string v1, "You have set ads view invisible.  You must call ads view.setVisibility(View.VISIBLE)."

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Lcom/adwo/adsdk/z;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/z;-><init>(Lcom/adwo/adsdk/AdwoAdView;)V

    .line 310
    invoke-virtual {v0}, Lcom/adwo/adsdk/z;->start()V

    goto :goto_0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/adwo/adsdk/AdwoAdView;->g:I

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/adwo/adsdk/AdwoAdView;->f:I

    return v0
.end method

.method public final finalize()V
    .locals 2

    .prologue
    .line 66
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->o:Lcom/adwo/adsdk/D;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/adwo/adsdk/AdwoAdView;->o:Lcom/adwo/adsdk/D;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->p:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->i:Lcom/adwo/adsdk/AdListener;

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->i:Lcom/adwo/adsdk/AdListener;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
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
    .line 431
    iget-boolean v0, p0, Lcom/adwo/adsdk/AdwoAdView;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 432
    const/16 v0, 0x8

    .line 434
    :goto_1
    return v0

    .line 431
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 434
    :cond_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    goto :goto_1
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adwo/adsdk/AdwoAdView;->j:Z

    .line 465
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 466
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 470
    iput-boolean v0, p0, Lcom/adwo/adsdk/AdwoAdView;->j:Z

    .line 471
    invoke-direct {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->a(Z)V

    .line 472
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 473
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 457
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 458
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->getMeasuredWidth()I

    move-result v0

    .line 459
    sget v1, Lcom/adwo/adsdk/AdwoAdView;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/adwo/adsdk/AdwoAdView;->setMeasuredDimension(II)V

    .line 460
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 365
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 366
    invoke-direct {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->a(Z)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    if-nez p1, :cond_2

    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->a(Z)V

    goto :goto_0

    .line 369
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 370
    invoke-direct {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->a(Z)V

    goto :goto_0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 387
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/adwo/adsdk/AdwoAdView;->f:I

    .line 388
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {v0, p1}, Lcom/adwo/adsdk/b;->setBackgroundColor(I)V

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->invalidate()V

    .line 392
    return-void
.end method

.method public final setListener(Lcom/adwo/adsdk/AdListener;)V
    .locals 1

    .prologue
    .line 439
    monitor-enter p0

    .line 440
    :try_start_0
    iput-object p1, p0, Lcom/adwo/adsdk/AdwoAdView;->i:Lcom/adwo/adsdk/AdListener;

    .line 439
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
    .line 408
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    .line 409
    if-eq v0, p1, :cond_1

    .line 410
    monitor-enter p0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdView;->getChildCount()I

    move-result v0

    .line 412
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    .line 416
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 417
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {v0}, Lcom/adwo/adsdk/b;->c()V

    .line 420
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdView;->removeView(Landroid/view/View;)V

    .line 421
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    invoke-virtual {v0}, Lcom/adwo/adsdk/b;->a()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdView;->c:Lcom/adwo/adsdk/b;

    .line 410
    :cond_0
    monitor-exit p0

    .line 427
    :cond_1
    return-void

    .line 413
    :cond_2
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/AdwoAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 414
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
