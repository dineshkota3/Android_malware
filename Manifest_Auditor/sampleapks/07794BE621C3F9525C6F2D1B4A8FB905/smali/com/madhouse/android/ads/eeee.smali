.class final Lcom/madhouse/android/ads/eeee;
.super Landroid/view/View;


# instance fields
.field private $:I

.field private $$:[B

.field private $$$:Ljava/lang/String;

.field private $$$$:Ljava/lang/String;

.field private $$$$$:Landroid/graphics/Bitmap;

.field _:I

.field __:I

.field private ___:I

.field private ____:I

.field private _____:I

.field private a:Landroid/graphics/Paint;

.field private aa:Landroid/graphics/Matrix;

.field private aaa:Lcom/madhouse/android/ads/__;

.field private aaaa:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Lcom/madhouse/android/ads/__;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/madhouse/android/ads/eeee;-><init>(Lcom/madhouse/android/ads/__;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Lcom/madhouse/android/ads/__;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2, v5, v4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/madhouse/android/ads/eeee;->aaa:Lcom/madhouse/android/ads/__;

    iput-object p2, p0, Lcom/madhouse/android/ads/eeee;->aaaa:Landroid/content/Context;

    iget-object v0, p1, Lcom/madhouse/android/ads/__;->____:Ljava/lang/String;

    invoke-static {v0}, Lcom/madhouse/android/ads/f;->__(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/madhouse/android/ads/eeee;->_:I

    iget-object v0, p1, Lcom/madhouse/android/ads/__;->_____:Ljava/lang/String;

    invoke-static {v0}, Lcom/madhouse/android/ads/f;->__(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/madhouse/android/ads/eeee;->__:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/madhouse/android/ads/eeee;->___:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/madhouse/android/ads/eeee;->____:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/madhouse/android/ads/eeee;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/madhouse/android/ads/eeee;->setClickable(Z)V

    iget-object v0, p1, Lcom/madhouse/android/ads/__;->$:Ljava/lang/String;

    iget-object v1, p1, Lcom/madhouse/android/ads/__;->___:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    iput-object v5, p0, Lcom/madhouse/android/ads/eeee;->$$:[B

    iget-boolean v2, p1, Lcom/madhouse/android/ads/__;->$$$$:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/madhouse/android/ads/eeee;->aaaa:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/madhouse/android/ads/e;->_(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/madhouse/android/ads/eeee;->$$:[B

    iget-object v2, p0, Lcom/madhouse/android/ads/eeee;->$$:[B

    if-nez v2, :cond_0

    invoke-static {v0, v4}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$:[B

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->aaaa:Landroid/content/Context;

    iget-object v2, p0, Lcom/madhouse/android/ads/eeee;->$$:[B

    invoke-static {v0, v1, v2}, Lcom/madhouse/android/ads/e;->_(Landroid/content/Context;Ljava/lang/String;[B)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$:[B

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/madhouse/android/ads/eeee;->a:Landroid/graphics/Paint;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/madhouse/android/ads/eeee;->$$:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/madhouse/android/ads/eeee;->_____:I

    iget-object v1, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/madhouse/android/ads/eeee;->$:I

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/madhouse/android/ads/eeee;->aa:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/madhouse/android/ads/eeee;->___:I

    iget v2, p0, Lcom/madhouse/android/ads/eeee;->____:I

    if-gt v1, v2, :cond_5

    iget v1, p0, Lcom/madhouse/android/ads/eeee;->_:I

    int-to-float v1, v1

    iget v2, p0, Lcom/madhouse/android/ads/eeee;->_____:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/madhouse/android/ads/eeee;->aa:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/madhouse/android/ads/eeee;->invalidate()V

    :cond_3
    return-void

    :cond_4
    invoke-static {v0, v4}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$:[B

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/madhouse/android/ads/eeee;->____:I

    int-to-float v1, v1

    iget v2, p0, Lcom/madhouse/android/ads/eeee;->$:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/madhouse/android/ads/eeee;->aa:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private __()V
    .locals 2

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->aaa:Lcom/madhouse/android/ads/__;

    iget-object v0, v0, Lcom/madhouse/android/ads/__;->$$$:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->aaa:Lcom/madhouse/android/ads/__;

    iget-object v0, v0, Lcom/madhouse/android/ads/__;->$$$:Ljava/lang/String;

    invoke-static {v0}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$:Ljava/lang/String;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->aaaa:Landroid/content/Context;

    iget-object v1, p0, Lcom/madhouse/android/ads/eeee;->$$$:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/f;->___(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->aaa:Lcom/madhouse/android/ads/__;

    iget-object v0, v0, Lcom/madhouse/android/ads/__;->$$:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->aaa:Lcom/madhouse/android/ads/__;

    iget-object v0, v0, Lcom/madhouse/android/ads/__;->$$:Ljava/lang/String;

    iput-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->aaaa:Landroid/content/Context;

    iget-object v1, p0, Lcom/madhouse/android/ads/eeee;->$$$$:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/f;->__(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected final _()V
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/madhouse/android/ads/eeee;->setPressed(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/eeee;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/madhouse/android/ads/eeee;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/madhouse/android/ads/eeee;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/madhouse/android/ads/eeee;->getBottom()I

    move-result v5

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

    :cond_2
    invoke-virtual {p0, v7}, Lcom/madhouse/android/ads/eeee;->setPressed(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6}, Lcom/madhouse/android/ads/eeee;->setPressed(Z)V

    goto :goto_0

    :cond_4
    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Lcom/madhouse/android/ads/eeee;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/madhouse/android/ads/eeee;->__()V

    :cond_5
    invoke-virtual {p0, v7}, Lcom/madhouse/android/ads/eeee;->setPressed(Z)V

    goto :goto_0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/eeee;->setPressed(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/madhouse/android/ads/eeee;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/madhouse/android/ads/eeee;->__()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/eeee;->setPressed(Z)V

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->aa:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->aa:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget v0, p0, Lcom/madhouse/android/ads/eeee;->___:I

    iget v1, p0, Lcom/madhouse/android/ads/eeee;->____:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/madhouse/android/ads/eeee;->____:I

    iget v3, p0, Lcom/madhouse/android/ads/eeee;->$:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/madhouse/android/ads/eeee;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/madhouse/android/ads/eeee;->___:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/madhouse/android/ads/eeee;->___:I

    int-to-double v2, v2

    const-wide v4, 0x3fc07ae147ae147bL    # 0.12875

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/madhouse/android/ads/eeee;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/eeee;->$$$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/eeee;->setPressed(Z)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/madhouse/android/ads/eeee;->__()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/eeee;->setPressed(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/madhouse/android/ads/eeee;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setPressed(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/eeee;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/madhouse/android/ads/eeee;->invalidate()V

    :cond_0
    return-void
.end method
