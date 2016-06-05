.class final Lcn/domob/android/ads/DomobAdBuilder;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcn/domob/android/ads/DomobAdEngine$e;
.implements Lcn/domob/android/ads/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobAdBuilder$ClickThread;,
        Lcn/domob/android/ads/DomobAdBuilder$ShowClickAnimViewThread;
    }
.end annotation


# static fields
.field private static c:F

.field private static i:Landroid/graphics/drawable/Drawable;


# instance fields
.field protected a:Lcn/domob/android/ads/DomobAdEngine;

.field final b:Lcn/domob/android/ads/DomobAdView;

.field private d:Landroid/view/View;

.field private e:J

.field private f:Z

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/View;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcn/domob/android/ads/DomobAdBuilder;->c:F

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/DomobAdBuilder;->i:Landroid/graphics/drawable/Drawable;

    .line 23
    return-void
.end method

.method protected constructor <init>(Lcn/domob/android/ads/DomobAdEngine;Landroid/content/Context;Lcn/domob/android/ads/DomobAdView;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    const/4 v2, -0x1

    const-string v3, "DomobSDK"

    .line 39
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->e:J

    .line 41
    iput-object p3, p0, Lcn/domob/android/ads/DomobAdBuilder;->b:Lcn/domob/android/ads/DomobAdView;

    .line 43
    const-string v0, "fr2l"

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->j:Ljava/lang/String;

    .line 45
    sget v0, Lcn/domob/android/ads/DomobAdBuilder;->c:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 46
    invoke-static {p3}, Lcn/domob/android/ads/DomobAdManager;->a(Landroid/view/View;)F

    move-result v0

    sput v0, Lcn/domob/android/ads/DomobAdBuilder;->c:F

    .line 47
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sDensity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/domob/android/ads/DomobAdBuilder;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->d:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->d:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/DomobAdBuilder;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdBuilder;->a(Lcn/domob/android/ads/DomobAdEngine;)V

    .line 57
    return-void
.end method

.method private static a(IIIJLjava/util/Vector;)Ljava/util/Vector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJ",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 394
    if-nez p5, :cond_1

    .line 395
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 398
    :goto_0
    long-to-float v1, p3

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 401
    if-eq p1, v3, :cond_0

    if-eq p2, v3, :cond_0

    .line 402
    const-string v2, "{%d, %d, %d, %f}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 407
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 408
    return-object v0

    .line 404
    :cond_0
    const-string v2, "{%d, %f}"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v0, p5

    goto :goto_0
.end method

.method private a(Landroid/view/KeyEvent;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 423
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 424
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 426
    iget-wide v4, p0, Lcn/domob/android/ads/DomobAdBuilder;->e:J

    sub-long v3, v2, v4

    .line 428
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    :cond_0
    move v2, v1

    move-object v5, p2

    .line 429
    invoke-static/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdBuilder;->a(IIIJLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    .line 431
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 415
    iget-wide v3, p0, Lcn/domob/android/ads/DomobAdBuilder;->e:J

    sub-long v3, v1, v3

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdBuilder;->a(IIIJLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    .line 419
    return-object v0
.end method

.method private static a(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const-string v3, "DomobSDK"

    .line 507
    instance-of v1, p0, Lcn/domob/android/ads/o;

    if-eqz v1, :cond_0

    .line 508
    move-object v0, p0

    check-cast v0, Lcn/domob/android/ads/o;

    move-object v1, v0

    .line 509
    invoke-interface {v1}, Lcn/domob/android/ads/o;->h()Lorg/json/JSONObject;

    move-result-object v2

    .line 510
    invoke-interface {v1}, Lcn/domob/android/ads/o;->g()Ljava/lang/String;

    move-result-object v1

    .line 511
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 513
    :try_start_0
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_0
    :goto_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 523
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    const-string v1, "DomobSDK"

    const-string v1, "build tracker for view group!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 527
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 532
    :cond_2
    return-void

    .line 515
    :catch_0
    move-exception v1

    .line 516
    const-string v2, "DomobSDK"

    const-string v2, "failed to build tracker!"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 528
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 529
    invoke-static {v2, p1}, Lcn/domob/android/ads/DomobAdBuilder;->a(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static b(Lcn/domob/android/ads/DomobAdEngine;)Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x3

    const-string v2, "DomobSDK"

    .line 60
    if-nez p0, :cond_1

    .line 61
    const-string v1, "DomobSDK"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "DomobSDK"

    const-string v1, "failed to getBackground, engine is null!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v10

    .line 104
    :goto_0
    return-object v1

    .line 67
    :cond_1
    sget-object v1, Lcn/domob/android/ads/DomobAdBuilder;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 68
    const-string v1, "DomobSDK"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    const-string v1, "DomobSDK"

    const-string v1, "already has background bitmap!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    sget-object v1, Lcn/domob/android/ads/DomobAdBuilder;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 75
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine;->d()Landroid/graphics/Rect;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 77
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 80
    const v1, -0x1180d9

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    invoke-virtual {v4, v2, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 85
    const v1, -0x1180d9

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const v6, -0x1180d9

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    const v7, -0x1180d9

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    const v8, -0x1180d9

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v1, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 86
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v1, 0x1

    const v7, -0x1180d9

    aput v7, v6, v1

    .line 88
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v7, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 89
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fdc000000000000L    # 0.4375

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    .line 90
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    move-object p0, v0

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7, v8, v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 91
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v7, v6, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    invoke-virtual {v4, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 96
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v10

    .line 104
    goto/16 :goto_0
.end method

.method protected static d()F
    .locals 1

    .prologue
    .line 156
    sget v0, Lcn/domob/android/ads/DomobAdBuilder;->c:F

    return v0
.end method

.method private i()Z
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 326
    iget-wide v2, p0, Lcn/domob/android/ads/DomobAdBuilder;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 9

    .prologue
    .line 346
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdBuilder;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdBuilder;->setPressed(Z)V

    .line 349
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->f:Z

    if-nez v0, :cond_0

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->f:Z

    .line 351
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdBuilder;->k()Lorg/json/JSONObject;

    move-result-object v7

    .line 353
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 355
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 356
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    .line 357
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 365
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f99999a    # 1.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 366
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 367
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 370
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3a83126f    # 0.001f

    const v3, 0x3f99999a    # 1.2f

    const v4, 0x3a83126f    # 0.001f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 371
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 372
    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 373
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 375
    new-instance v0, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;

    invoke-direct {v0, v7, p0}, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;-><init>(Lorg/json/JSONObject;Lcn/domob/android/ads/DomobAdBuilder;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcn/domob/android/ads/DomobAdBuilder;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->h:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    new-instance v0, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;

    invoke-direct {v0, v7, p0}, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;-><init>(Lorg/json/JSONObject;Lcn/domob/android/ads/DomobAdBuilder;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdBuilder;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private k()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 471
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 472
    invoke-static {p0, v1}, Lcn/domob/android/ads/DomobAdBuilder;->a(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 481
    const-string v2, "screen"

    const-string v3, "unknown"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "interactions"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 488
    :goto_0
    return-object v0

    .line 483
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 484
    :goto_1
    const-string v2, "DomobSDK"

    const-string v3, "failed to get interactions!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 483
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private l()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdBuilder;->g:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 494
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 496
    :try_start_0
    const-string v1, "touches"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdBuilder;->g:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-object v0

    .line 497
    :catch_0
    move-exception v1

    .line 498
    const-string v2, "DomobSDK"

    const-string v3, "failed to get touch events!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->h:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 127
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdBuilder;->h:Landroid/view/View;

    .line 129
    :cond_0
    return-void
.end method

.method protected final a(Lcn/domob/android/ads/DomobAdEngine;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "DomobSDK"

    .line 108
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    if-nez v0, :cond_1

    .line 110
    const-string v0, "DomobSDK"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "DomobSDK"

    const-string v0, "engine is null, focusable & clickable is false."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    invoke-virtual {p0, v2}, Lcn/domob/android/ads/DomobAdBuilder;->setFocusable(Z)V

    .line 114
    invoke-virtual {p0, v2}, Lcn/domob/android/ads/DomobAdBuilder;->setClickable(Z)V

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v0, "DomobSDK"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const-string v0, "DomobSDK"

    const-string v0, "focusable & clickable is true."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdBuilder;)V

    .line 120
    invoke-virtual {p0, v3}, Lcn/domob/android/ads/DomobAdBuilder;->setFocusable(Z)V

    .line 121
    invoke-virtual {p0, v3}, Lcn/domob/android/ads/DomobAdBuilder;->setClickable(Z)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 132
    if-eqz p1, :cond_1

    .line 133
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTransAnimType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdBuilder;->j:Ljava/lang/String;

    .line 138
    :cond_1
    return-void
.end method

.method protected final b()Lcn/domob/android/ads/DomobAdEngine;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    return-object v0
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdEngine;->e()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    .line 153
    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const-string v3, "DomobSDK"

    .line 261
    const-string v0, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "DomobSDK"

    const-string v0, "dispatchTouchEvent"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdBuilder;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    if-eqz v0, :cond_8

    .line 268
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdEngine;->d()Landroid/graphics/Rect;

    move-result-object v0

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 270
    const-string v0, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const-string v0, "DomobSDK"

    const-string v0, "dispatch touch event is out of ad rect!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v5

    .line 277
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 278
    if-eqz v0, :cond_3

    .line 279
    const-string v2, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    const-string v2, "DomobSDK"

    const-string v2, "should record dispatch touch event!"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_2
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdBuilder;->g:Ljava/util/Vector;

    invoke-direct {p0, p1, v2}, Lcn/domob/android/ads/DomobAdBuilder;->a(Landroid/view/MotionEvent;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/ads/DomobAdBuilder;->g:Ljava/util/Vector;

    .line 285
    :cond_3
    if-nez v1, :cond_5

    .line 286
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdBuilder;->setPressed(Z)V

    .line 297
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 287
    :cond_5
    const/4 v2, 0x2

    if-ne v2, v1, :cond_6

    .line 288
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdBuilder;->setPressed(Z)V

    goto :goto_1

    .line 289
    :cond_6
    if-ne v6, v1, :cond_4

    .line 290
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdBuilder;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 291
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdBuilder;->j()V

    .line 293
    :cond_7
    invoke-virtual {p0, v5}, Lcn/domob/android/ads/DomobAdBuilder;->setPressed(Z)V

    goto :goto_1

    :cond_8
    move v0, v6

    goto :goto_0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const-string v2, "DomobSDK"

    .line 302
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "DomobSDK"

    const-string v0, "dispatchTrackballEvent"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdBuilder;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->g:Ljava/util/Vector;

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/DomobAdBuilder;->a(Landroid/view/MotionEvent;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->g:Ljava/util/Vector;

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 308
    if-nez v0, :cond_2

    .line 309
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setPressed(Z)V

    .line 318
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 310
    :cond_2
    if-ne v1, v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdBuilder;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdBuilder;->j()V

    .line 314
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdBuilder;->setPressed(Z)V

    goto :goto_0
.end method

.method protected final e()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "DomobSDK"

    .line 202
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "DomobSDK"

    const-string v0, "show click anim view of builder"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdBuilder;->f:Z

    .line 208
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcn/domob/android/ads/DomobAdBuilder$ShowClickAnimViewThread;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/DomobAdBuilder$ShowClickAnimViewThread;-><init>(Lcn/domob/android/ads/DomobAdBuilder;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdBuilder;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    const-string v0, "container"

    return-object v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdBuilder;->l()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 544
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x3

    .line 219
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdBuilder;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdBuilder;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdBuilder;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdBuilder;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 223
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 225
    iget-wide v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->e:J

    .line 229
    :cond_2
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keycode"    # I
    .param p2, "keyevent"    # Landroid/view/KeyEvent;

    .prologue
    const-string v2, "DomobSDK"

    .line 233
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyDown:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    const/16 v0, 0x42

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-ne v0, p1, :cond_2

    .line 237
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->g:Ljava/util/Vector;

    invoke-direct {p0, p2, v0}, Lcn/domob/android/ads/DomobAdBuilder;->a(Landroid/view/KeyEvent;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->g:Ljava/util/Vector;

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdBuilder;->setPressed(Z)V

    .line 241
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keycode"    # I
    .param p2, "keyevent"    # Landroid/view/KeyEvent;

    .prologue
    const-string v2, "DomobSDK"

    .line 246
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyUp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdBuilder;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x42

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-ne v0, p1, :cond_2

    .line 250
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->g:Ljava/util/Vector;

    invoke-direct {p0, p2, v0}, Lcn/domob/android/ads/DomobAdBuilder;->a(Landroid/view/KeyEvent;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->g:Ljava/util/Vector;

    .line 251
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdBuilder;->j()V

    .line 254
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdBuilder;->setPressed(Z)V

    .line 256
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setPressed(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, 0x3

    const-string v1, "DomobSDK"

    .line 435
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->f:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 436
    const-string v0, "DomobSDK"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "DomobSDK"

    const-string v0, "already pressed and clicked!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdBuilder;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 443
    if-eqz p1, :cond_5

    .line 444
    const-string v0, "DomobSDK"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    const-string v0, "DomobSDK"

    const-string v0, "press down, show hightlight"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->d:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 449
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdBuilder;->b(Lcn/domob/android/ads/DomobAdEngine;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 450
    sput-object v0, Lcn/domob/android/ads/DomobAdBuilder;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 451
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->d:Landroid/view/View;

    sget-object v1, Lcn/domob/android/ads/DomobAdBuilder;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 455
    :cond_4
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 464
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdBuilder;->invalidate()V

    goto :goto_0

    .line 457
    :cond_5
    const-string v0, "DomobSDK"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 458
    const-string v0, "DomobSDK"

    const-string v0, "press up, hide highlight"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_6
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
