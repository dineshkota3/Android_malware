.class final Lcom/madhouse/android/ads/b;
.super Landroid/widget/LinearLayout;


# instance fields
.field _:Lcom/madhouse/android/ads/bb;

.field __:Landroid/widget/ImageView;

.field ___:Landroid/widget/ProgressBar;


# direct methods
.method protected constructor <init>(Lcom/madhouse/android/ads/_____;Landroid/content/Context;I)V
    .locals 9

    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/madhouse/android/ads/b;->setOrientation(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/b;->setBackgroundColor(I)V

    invoke-virtual {p0, v8}, Lcom/madhouse/android/ads/b;->setGravity(I)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/madhouse/android/ads/bb;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/madhouse/android/ads/bb;-><init>(Lcom/madhouse/android/ads/b;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/madhouse/android/ads/b;->_:Lcom/madhouse/android/ads/bb;

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->_:Lcom/madhouse/android/ads/bb;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/bb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->_:Lcom/madhouse/android/ads/bb;

    invoke-virtual {v0, v8}, Lcom/madhouse/android/ads/bb;->setGravity(I)V

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->_:Lcom/madhouse/android/ads/bb;

    invoke-virtual {v0, v6}, Lcom/madhouse/android/ads/bb;->setTextColor(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/madhouse/android/ads/b;->__:Landroid/widget/ImageView;

    shl-int/lit8 v0, p3, 0x3

    div-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/madhouse/android/ads/b;->__:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->__:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/madhouse/android/ads/b;->___:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->___:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->___:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->___:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->___:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/b;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->__:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/b;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->_:Lcom/madhouse/android/ads/bb;

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/b;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final _()V
    .locals 2

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->___:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->__:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/b;->__:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
