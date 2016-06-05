.class final Lcom/madhouse/android/ads/____;
.super Landroid/view/View;


# instance fields
.field private $:Ljava/lang/String;

.field private $$:Landroid/graphics/Rect;

.field private $$$:Landroid/graphics/Bitmap;

.field private $$$$:Landroid/graphics/Paint;

.field private $$$$$:Landroid/graphics/Matrix;

.field _:I

.field __:I

.field ___:Lcom/madhouse/android/ads/__;

.field private ____:[B

.field private _____:Ljava/lang/String;

.field private a:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Lcom/madhouse/android/ads/__;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/madhouse/android/ads/____;-><init>(Lcom/madhouse/android/ads/__;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Lcom/madhouse/android/ads/__;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p2, v5, v4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/madhouse/android/ads/____;->___:Lcom/madhouse/android/ads/__;

    iput-object p2, p0, Lcom/madhouse/android/ads/____;->a:Landroid/content/Context;

    iget-object v0, p1, Lcom/madhouse/android/ads/__;->____:Ljava/lang/String;

    invoke-static {v0}, Lcom/madhouse/android/ads/f;->__(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcom/madhouse/android/ads/__;->_____:Ljava/lang/String;

    invoke-static {v1}, Lcom/madhouse/android/ads/f;->__(Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    iput v0, p0, Lcom/madhouse/android/ads/____;->_:I

    iput v1, p0, Lcom/madhouse/android/ads/____;->__:I

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/madhouse/android/ads/____;->_:I

    iget v2, p0, Lcom/madhouse/android/ads/____;->__:I

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/madhouse/android/ads/____;->$$:Landroid/graphics/Rect;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Lcom/madhouse/android/ads/____;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/madhouse/android/ads/____;->setClickable(Z)V

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

    iput-object v5, p0, Lcom/madhouse/android/ads/____;->____:[B

    iget-boolean v2, p1, Lcom/madhouse/android/ads/__;->$$$$:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/madhouse/android/ads/____;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/madhouse/android/ads/e;->_(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/madhouse/android/ads/____;->____:[B

    iget-object v2, p0, Lcom/madhouse/android/ads/____;->____:[B

    if-nez v2, :cond_0

    invoke-static {v0, v4}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/madhouse/android/ads/____;->____:[B

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/madhouse/android/ads/____;->____:[B

    invoke-static {v0, v1, v2}, Lcom/madhouse/android/ads/e;->_(Landroid/content/Context;Ljava/lang/String;[B)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/madhouse/android/ads/____;->____:[B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/madhouse/android/ads/____;->____:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    :cond_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/madhouse/android/ads/____;->_:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    iget v3, p0, Lcom/madhouse/android/ads/____;->__:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/madhouse/android/ads/____;->$$$$$:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/madhouse/android/ads/____;->$$$$$:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/madhouse/android/ads/____;->$$$$:Landroid/graphics/Paint;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/madhouse/android/ads/____;->invalidate()V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v1, v0, :cond_5

    iput v1, p0, Lcom/madhouse/android/ads/____;->_:I

    mul-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/madhouse/android/ads/____;->__:I

    goto/16 :goto_0

    :cond_5
    iput v0, p0, Lcom/madhouse/android/ads/____;->_:I

    mul-int/lit8 v0, v1, 0xf

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/madhouse/android/ads/____;->__:I

    goto/16 :goto_0

    :cond_6
    invoke-static {v0, v4}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/madhouse/android/ads/____;->____:[B

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private __()V
    .locals 2

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->___:Lcom/madhouse/android/ads/__;

    iget-object v0, v0, Lcom/madhouse/android/ads/__;->$$$:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->___:Lcom/madhouse/android/ads/__;

    iget-object v0, v0, Lcom/madhouse/android/ads/__;->$$$:Ljava/lang/String;

    invoke-static {v0}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/madhouse/android/ads/____;->_____:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/madhouse/android/ads/____;->_____:Ljava/lang/String;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/madhouse/android/ads/____;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/madhouse/android/ads/____;->_____:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/f;->___(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/madhouse/android/ads/____;->___:Lcom/madhouse/android/ads/__;

    iget-object v0, v0, Lcom/madhouse/android/ads/__;->$$:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->___:Lcom/madhouse/android/ads/__;

    iget-object v0, v0, Lcom/madhouse/android/ads/__;->$$:Ljava/lang/String;

    iput-object v0, p0, Lcom/madhouse/android/ads/____;->$:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/madhouse/android/ads/____;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/madhouse/android/ads/____;->$:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

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

    invoke-super {p0, v6}, Landroid/view/View;->setPressed(Z)V

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

    invoke-virtual {p0}, Lcom/madhouse/android/ads/____;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/madhouse/android/ads/____;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/madhouse/android/ads/____;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/madhouse/android/ads/____;->getBottom()I

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
    invoke-super {p0, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_3
    invoke-super {p0, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_4
    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Lcom/madhouse/android/ads/____;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/madhouse/android/ads/____;->__()V

    :cond_5
    invoke-super {p0, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/madhouse/android/ads/____;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/madhouse/android/ads/____;->__()V

    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$$$$:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$$$:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/madhouse/android/ads/____;->$$$$$:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/madhouse/android/ads/____;->$$$$:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/madhouse/android/ads/____;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/madhouse/android/ads/____;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v2, -0x1180d9

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/CornerPathEffect;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v4, 0x40a00000    # 5.0f

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/____;->$$$:Landroid/graphics/Bitmap;

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

    invoke-super {p0, v0}, Landroid/view/View;->setPressed(Z)V

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
    invoke-direct {p0}, Lcom/madhouse/android/ads/____;->__()V

    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/madhouse/android/ads/____;->_:I

    iget v1, p0, Lcom/madhouse/android/ads/____;->__:I

    invoke-virtual {p0, v0, v1}, Lcom/madhouse/android/ads/____;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setPressed(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method
