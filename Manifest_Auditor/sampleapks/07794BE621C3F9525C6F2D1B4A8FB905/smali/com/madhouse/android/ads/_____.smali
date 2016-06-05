.class final Lcom/madhouse/android/ads/_____;
.super Landroid/widget/LinearLayout;


# instance fields
.field private $:I

.field private $$:I

.field _:Z

.field __:Lcom/madhouse/android/ads/b;

.field ___:Lcom/madhouse/android/ads/bbbb;

.field ____:Lcom/madhouse/android/ads/$$$$$;

.field _____:Lcom/madhouse/android/ads/dd;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v9, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide v6, 0x3fb4cccccccccccdL    # 0.08125

    const-wide v3, 0x3fa851eb851eb852L    # 0.0475

    const/4 v5, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/madhouse/android/ads/_____;->_:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/madhouse/android/ads/_____;->$:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    iput v1, p0, Lcom/madhouse/android/ads/_____;->$$:I

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/_____;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/_____;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/madhouse/android/ads/b;

    iget v2, p0, Lcom/madhouse/android/ads/_____;->$:I

    invoke-direct {v1, p0, p1, v2}, Lcom/madhouse/android/ads/b;-><init>(Lcom/madhouse/android/ads/_____;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/madhouse/android/ads/_____;->__:Lcom/madhouse/android/ads/b;

    iget-object v1, p0, Lcom/madhouse/android/ads/_____;->__:Lcom/madhouse/android/ads/b;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/madhouse/android/ads/_____;->$:I

    invoke-direct {v2, v5, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v2}, Lcom/madhouse/android/ads/_____;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/madhouse/android/ads/bbbb;

    invoke-direct {v2, p0, p1}, Lcom/madhouse/android/ads/bbbb;-><init>(Lcom/madhouse/android/ads/_____;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    iget-object v2, p0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    new-instance v3, Lcom/madhouse/android/ads/$;

    invoke-direct {v3, p0, p1}, Lcom/madhouse/android/ads/$;-><init>(Lcom/madhouse/android/ads/_____;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/madhouse/android/ads/bbbb;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance v2, Lcom/madhouse/android/ads/dd;

    invoke-direct {v2, p0, p1}, Lcom/madhouse/android/ads/dd;-><init>(Lcom/madhouse/android/ads/_____;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/madhouse/android/ads/_____;->_____:Lcom/madhouse/android/ads/dd;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/madhouse/android/ads/_____;->_____:Lcom/madhouse/android/ads/dd;

    new-instance v4, Lcom/madhouse/android/ads/$$;

    invoke-direct {v4, p0}, Lcom/madhouse/android/ads/$$;-><init>(Lcom/madhouse/android/ads/_____;)V

    iget-object v3, v3, Lcom/madhouse/android/ads/dd;->_:Lcom/madhouse/android/ads/dddd;

    invoke-virtual {v3, v4}, Lcom/madhouse/android/ads/dddd;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/madhouse/android/ads/_____;->_____:Lcom/madhouse/android/ads/dd;

    new-instance v4, Lcom/madhouse/android/ads/$$$;

    invoke-direct {v4, p0}, Lcom/madhouse/android/ads/$$$;-><init>(Lcom/madhouse/android/ads/_____;)V

    iget-object v3, v3, Lcom/madhouse/android/ads/dd;->__:Lcom/madhouse/android/ads/dddd;

    invoke-virtual {v3, v4}, Lcom/madhouse/android/ads/dddd;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/madhouse/android/ads/_____;->_____:Lcom/madhouse/android/ads/dd;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/madhouse/android/ads/dd;->setVisibility(I)V

    iget-object v3, p0, Lcom/madhouse/android/ads/_____;->_____:Lcom/madhouse/android/ads/dd;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v2}, Lcom/madhouse/android/ads/_____;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/madhouse/android/ads/$$$$$;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/madhouse/android/ads/_____;->$$:I

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/madhouse/android/ads/$$$$$;-><init>(Lcom/madhouse/android/ads/_____;Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/madhouse/android/ads/_____;->____:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, p0, Lcom/madhouse/android/ads/_____;->____:Lcom/madhouse/android/ads/$$$$$;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/madhouse/android/ads/_____;->$$:I

    invoke-direct {v1, v5, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/madhouse/android/ads/_____;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/madhouse/android/ads/_____;->$:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    iput v1, p0, Lcom/madhouse/android/ads/_____;->$$:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected final _()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/madhouse/android/ads/$$$$;

    invoke-direct {v1, p0}, Lcom/madhouse/android/ads/$$$$;-><init>(Lcom/madhouse/android/ads/_____;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/_____;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected final _(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/madhouse/android/ads/f;->_(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/madhouse/android/ads/_____;->_:Z

    iget-object v0, p0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    invoke-virtual {v0, p1}, Lcom/madhouse/android/ads/bbbb;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/bbbb;->requestFocus()Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/_____;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/bbbb;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/bbbb;->goBack()V

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/madhouse/android/ads/_____;->_:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/madhouse/android/ads/_____;->_()V

    iput-boolean v2, p0, Lcom/madhouse/android/ads/_____;->_:Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method
