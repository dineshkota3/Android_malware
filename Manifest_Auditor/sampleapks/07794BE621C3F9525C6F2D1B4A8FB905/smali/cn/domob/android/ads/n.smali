.class final Lcn/domob/android/ads/n;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/n$a;
    }
.end annotation


# static fields
.field private static c:I

.field private static d:I


# instance fields
.field private a:[[Landroid/widget/ImageView;

.field private b:Landroid/os/Handler;

.field private e:Lcn/domob/android/ads/DomobAdView;

.field private f:Lcn/domob/android/ads/DomobAdBuilder;

.field private g:Lcn/domob/android/ads/DomobAdBuilder;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 18
    const/4 v0, 0x3

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/domob/android/ads/n;->a:[[Landroid/widget/ImageView;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/n;->b:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method private a(Landroid/view/animation/TranslateAnimation;II)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x7d0

    .line 116
    invoke-virtual {p1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 117
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 118
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 119
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 120
    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 121
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/n;->a:[[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/n;)[[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/domob/android/ads/n;->a:[[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/DomobAdView;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdBuilder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/domob/android/ads/n;->f:Lcn/domob/android/ads/DomobAdBuilder;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdBuilder;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/domob/android/ads/n;->g:Lcn/domob/android/ads/DomobAdBuilder;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/android/ads/n;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/android/ads/n;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/ads/n;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/domob/android/ads/n;->h:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;Lcn/domob/android/ads/DomobAdBuilder;)V
    .locals 18

    .prologue
    .line 35
    invoke-virtual/range {p3 .. p3}, Lcn/domob/android/ads/DomobAdBuilder;->getWidth()I

    move-result v4

    sput v4, Lcn/domob/android/ads/n;->c:I

    .line 36
    invoke-virtual/range {p3 .. p3}, Lcn/domob/android/ads/DomobAdBuilder;->getHeight()I

    move-result v4

    sput v4, Lcn/domob/android/ads/n;->d:I

    .line 38
    invoke-virtual/range {p3 .. p3}, Lcn/domob/android/ads/DomobAdBuilder;->getWidth()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcn/domob/android/ads/DomobAdBuilder;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/n;->i:Landroid/graphics/Bitmap;

    .line 39
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->i:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->draw(Landroid/graphics/Canvas;)V

    .line 41
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/DomobAdView;

    .line 42
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/n;->f:Lcn/domob/android/ads/DomobAdBuilder;

    .line 43
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/n;->g:Lcn/domob/android/ads/DomobAdBuilder;

    .line 45
    const/4 v4, 0x0

    .line 46
    const v5, 0x3c34eb12

    .line 47
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/n;->h:Ljava/util/ArrayList;

    .line 49
    const/4 v6, 0x0

    :goto_0
    sget v7, Lcn/domob/android/ads/n;->d:I

    if-lt v6, v7, :cond_1

    .line 56
    const/4 v6, 0x0

    move/from16 v17, v5

    move v5, v4

    move/from16 v4, v17

    :goto_1
    const/4 v7, 0x3

    if-lt v6, v7, :cond_3

    .line 83
    const/4 v4, 0x0

    move v13, v4

    :goto_2
    const/4 v4, 0x3

    if-lt v13, v4, :cond_8

    .line 108
    const-string v4, "DomobSDK"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    const-string v4, "DomobSDK"

    const-string v5, "FragmentAnimation finish"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    new-instance v4, Lcn/domob/android/ads/n$a;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/domob/android/ads/n$a;-><init>(Lcn/domob/android/ads/n;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->b:Landroid/os/Handler;

    move-object v5, v0

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-void

    .line 50
    :cond_1
    const/4 v7, 0x0

    :goto_3
    sget v8, Lcn/domob/android/ads/n;->c:I

    if-lt v7, v8, :cond_2

    .line 49
    sget v7, Lcn/domob/android/ads/n;->d:I

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    goto :goto_0

    .line 52
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->h:Ljava/util/ArrayList;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->i:Landroid/graphics/Bitmap;

    move-object v9, v0

    sget v10, Lcn/domob/android/ads/n;->c:I

    div-int/lit8 v10, v10, 0x10

    sget v11, Lcn/domob/android/ads/n;->d:I

    div-int/lit8 v11, v11, 0x3

    invoke-static {v9, v7, v6, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget v8, Lcn/domob/android/ads/n;->c:I

    div-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v8

    goto :goto_3

    .line 57
    :cond_3
    const/4 v7, 0x0

    :goto_4
    const/16 v8, 0x10

    if-lt v7, v8, :cond_4

    .line 56
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 59
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->a:[[Landroid/widget/ImageView;

    move-object v8, v0

    aget-object v8, v8, v6

    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/DomobAdView;

    move-object v10, v0

    invoke-virtual {v10}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v7

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->a:[[Landroid/widget/ImageView;

    move-object v8, v0

    aget-object v8, v8, v6

    aget-object v8, v8, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->h:Ljava/util/ArrayList;

    move-object v9, v0

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->a:[[Landroid/widget/ImageView;

    move-object v8, v0

    aget-object v8, v8, v6

    aget-object v8, v8, v7

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 63
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v10, -0x2

    invoke-direct {v4, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    if-nez v6, :cond_5

    if-eqz v7, :cond_6

    .line 69
    :cond_5
    if-nez v7, :cond_7

    .line 71
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->a:[[Landroid/widget/ImageView;

    move-object v10, v0

    const/4 v11, 0x1

    sub-int v11, v6, v11

    aget-object v10, v10, v11

    aget-object v10, v10, v7

    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/DomobAdView;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->a:[[Landroid/widget/ImageView;

    move-object v10, v0

    aget-object v10, v10, v6

    aget-object v10, v10, v7

    invoke-virtual {v8, v10, v4}, Lcn/domob/android/ads/DomobAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    add-int/lit8 v4, v5, 0x1

    .line 57
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v4

    move v4, v9

    goto :goto_4

    .line 75
    :cond_7
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->a:[[Landroid/widget/ImageView;

    move-object v10, v0

    aget-object v10, v10, v6

    const/4 v11, 0x1

    sub-int v11, v7, v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 76
    const/16 v8, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/n;->a:[[Landroid/widget/ImageView;

    move-object v10, v0

    aget-object v10, v10, v6

    const/4 v11, 0x1

    sub-int v11, v7, v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_5

    .line 84
    :cond_8
    const/4 v4, 0x0

    move v14, v4

    :goto_6
    const/16 v4, 0x10

    if-lt v14, v4, :cond_9

    .line 83
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto/16 :goto_2

    .line 86
    :cond_9
    if-gtz v13, :cond_a

    const/16 v4, 0x8

    if-ge v14, v4, :cond_a

    .line 89
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v9, v9

    add-float/2addr v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, -0x40800000    # -1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    double-to-float v15, v15

    add-float/2addr v12, v15

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 90
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/n;->a(Landroid/view/animation/TranslateAnimation;II)V

    .line 92
    :cond_a
    if-gtz v13, :cond_b

    const/16 v4, 0x8

    if-lt v14, v4, :cond_b

    .line 94
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v9, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, -0x40800000    # -1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    double-to-float v15, v15

    add-float/2addr v12, v15

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 95
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/n;->a(Landroid/view/animation/TranslateAnimation;II)V

    .line 97
    :cond_b
    if-lez v13, :cond_c

    const/16 v4, 0x8

    if-ge v14, v4, :cond_c

    .line 99
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v9, v9

    add-float/2addr v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    double-to-float v15, v15

    sub-float/2addr v12, v15

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 100
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/n;->a(Landroid/view/animation/TranslateAnimation;II)V

    .line 102
    :cond_c
    if-lez v13, :cond_d

    const/16 v4, 0x8

    if-lt v14, v4, :cond_d

    .line 104
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v9, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    double-to-float v15, v15

    sub-float/2addr v12, v15

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 105
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/n;->a(Landroid/view/animation/TranslateAnimation;II)V

    .line 84
    :cond_d
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto/16 :goto_6
.end method
