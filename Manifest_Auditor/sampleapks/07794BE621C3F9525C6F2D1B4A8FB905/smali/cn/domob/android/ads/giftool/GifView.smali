.class public Lcn/domob/android/ads/giftool/GifView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/giftool/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/giftool/GifView$a;,
        Lcn/domob/android/ads/giftool/GifView$GifImageType;
    }
.end annotation


# static fields
.field private static synthetic k:[I


# instance fields
.field private a:Lcn/domob/android/ads/giftool/b;

.field private b:Landroid/graphics/Bitmap;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/view/View;

.field private h:Lcn/domob/android/ads/giftool/GifView$a;

.field private i:Lcn/domob/android/ads/giftool/GifView$GifImageType;

.field private j:Lcn/domob/android/ads/giftool/GifView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    .line 27
    iput-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->c:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->d:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/giftool/GifView;->e:I

    .line 34
    iput-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->f:Landroid/graphics/Rect;

    .line 35
    iput-object p0, p0, Lcn/domob/android/ads/giftool/GifView;->g:Landroid/view/View;

    .line 37
    iput-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->h:Lcn/domob/android/ads/giftool/GifView$a;

    .line 39
    sget-object v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;->SYNC_DECODER:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->i:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    .line 249
    iput-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->j:Lcn/domob/android/ads/giftool/GifView$a;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/domob/android/ads/giftool/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    .line 27
    iput-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->c:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->d:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/giftool/GifView;->e:I

    .line 34
    iput-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->f:Landroid/graphics/Rect;

    .line 35
    iput-object p0, p0, Lcn/domob/android/ads/giftool/GifView;->g:Landroid/view/View;

    .line 37
    iput-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->h:Lcn/domob/android/ads/giftool/GifView$a;

    .line 39
    sget-object v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;->SYNC_DECODER:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->i:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    .line 249
    iput-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->j:Lcn/domob/android/ads/giftool/GifView$a;

    .line 79
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/giftool/GifView;)Lcn/domob/android/ads/giftool/b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/giftool/GifView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->a()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    .line 113
    :cond_0
    new-instance v0, Lcn/domob/android/ads/giftool/b;

    invoke-direct {v0, p1, p0}, Lcn/domob/android/ads/giftool/b;-><init>(Ljava/io/InputStream;Lcn/domob/android/ads/giftool/a;)V

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->start()V

    .line 115
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcn/domob/android/ads/giftool/GifView;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/domob/android/ads/giftool/GifView$GifImageType;->values()[Lcn/domob/android/ads/giftool/GifView$GifImageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/domob/android/ads/giftool/GifView$GifImageType;->COVER:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    invoke-virtual {v1}, Lcn/domob/android/ads/giftool/GifView$GifImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcn/domob/android/ads/giftool/GifView$GifImageType;->SYNC_DECODER:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    invoke-virtual {v1}, Lcn/domob/android/ads/giftool/GifView$GifImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcn/domob/android/ads/giftool/GifView$GifImageType;->WAIT_FINISH:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    invoke-virtual {v1}, Lcn/domob/android/ads/giftool/GifView$GifImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcn/domob/android/ads/giftool/GifView;->k:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcn/domob/android/ads/giftool/GifView;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->c:Z

    return v0
.end method

.method static synthetic c(Lcn/domob/android/ads/giftool/GifView;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->d:Z

    return v0
.end method

.method static synthetic d(Lcn/domob/android/ads/giftool/GifView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->a()V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->c:Z

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    .line 353
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    .line 152
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 157
    invoke-virtual {p0}, Lcn/domob/android/ads/giftool/GifView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/domob/android/ads/giftool/GifView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 158
    iget v1, p0, Lcn/domob/android/ads/giftool/GifView;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 159
    iget-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 163
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/domob/android/ads/giftool/GifView;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 168
    invoke-virtual {p0}, Lcn/domob/android/ads/giftool/GifView;->getPaddingLeft()I

    move-result v0

    .line 169
    invoke-virtual {p0}, Lcn/domob/android/ads/giftool/GifView;->getPaddingRight()I

    move-result v1

    .line 170
    invoke-virtual {p0}, Lcn/domob/android/ads/giftool/GifView;->getPaddingTop()I

    move-result v2

    .line 171
    invoke-virtual {p0}, Lcn/domob/android/ads/giftool/GifView;->getPaddingBottom()I

    move-result v3

    .line 179
    iget-object v4, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    if-nez v4, :cond_0

    move v4, v5

    .line 187
    :goto_0
    add-int/2addr v0, v1

    add-int/2addr v0, v5

    .line 188
    add-int v1, v2, v3

    add-int/2addr v1, v4

    .line 190
    invoke-virtual {p0}, Lcn/domob/android/ads/giftool/GifView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 191
    invoke-virtual {p0}, Lcn/domob/android/ads/giftool/GifView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 193
    invoke-static {v0, p1}, Lcn/domob/android/ads/giftool/GifView;->resolveSize(II)I

    move-result v0

    .line 194
    invoke-static {v1, p2}, Lcn/domob/android/ads/giftool/GifView;->resolveSize(II)I

    move-result v1

    .line 196
    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/giftool/GifView;->setMeasuredDimension(II)V

    .line 197
    return-void

    .line 183
    :cond_0
    iget-object v4, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    iget v4, v4, Lcn/domob/android/ads/giftool/b;->a:I

    .line 184
    iget-object v5, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    iget v5, v5, Lcn/domob/android/ads/giftool/b;->b:I

    move v6, v5

    move v5, v4

    move v4, v6

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->d:Z

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->d:Z

    goto :goto_0
.end method

.method public parseOk(ZI)V
    .locals 4
    .param p1, "parseStatus"    # Z
    .param p2, "frameIndex"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcn/domob/android/ads/giftool/GifView;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/giftool/GifView;->i:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    invoke-virtual {v1}, Lcn/domob/android/ads/giftool/GifView$GifImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 255
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 256
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->b()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 257
    new-instance v0, Lcn/domob/android/ads/giftool/GifView$a;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/giftool/GifView$a;-><init>(Lcn/domob/android/ads/giftool/GifView;)V

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->j:Lcn/domob/android/ads/giftool/GifView$a;

    .line 258
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->j:Lcn/domob/android/ads/giftool/GifView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/GifView$a;->start()V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 265
    :pswitch_1
    if-ne p2, v2, :cond_2

    .line 266
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    .line 267
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 268
    :cond_2
    if-ne p2, v3, :cond_0

    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->b()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 270
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->h:Lcn/domob/android/ads/giftool/GifView$a;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcn/domob/android/ads/giftool/GifView$a;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/giftool/GifView$a;-><init>(Lcn/domob/android/ads/giftool/GifView;)V

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->h:Lcn/domob/android/ads/giftool/GifView$a;

    .line 272
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->h:Lcn/domob/android/ads/giftool/GifView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/GifView$a;->start()V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 280
    :pswitch_2
    if-ne p2, v2, :cond_4

    .line 281
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    .line 282
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 283
    :cond_4
    if-ne p2, v3, :cond_5

    .line 284
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 286
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->h:Lcn/domob/android/ads/giftool/GifView$a;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcn/domob/android/ads/giftool/GifView$a;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/giftool/GifView$a;-><init>(Lcn/domob/android/ads/giftool/GifView;)V

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->h:Lcn/domob/android/ads/giftool/GifView$a;

    .line 288
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->h:Lcn/domob/android/ads/giftool/GifView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/GifView$a;->start()V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setGifImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcn/domob/android/ads/giftool/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Lcn/domob/android/ads/giftool/GifView;->a(Ljava/io/InputStream;)V

    .line 141
    return-void
.end method

.method public setGifImage(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcn/domob/android/ads/giftool/GifView;->a(Ljava/io/InputStream;)V

    .line 131
    return-void
.end method

.method public setGifImage([B)V
    .locals 1
    .param p1, "gif"    # [B

    .prologue
    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    :cond_0
    new-instance v0, Lcn/domob/android/ads/giftool/b;

    invoke-direct {v0, p1, p0}, Lcn/domob/android/ads/giftool/b;-><init>([BLcn/domob/android/ads/giftool/a;)V

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->start()V

    .line 123
    return-void
.end method

.method public setGifImageType(Lcn/domob/android/ads/giftool/GifView$GifImageType;)V
    .locals 1
    .param p1, "type"    # Lcn/domob/android/ads/giftool/GifView$GifImageType;

    .prologue
    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    if-nez v0, :cond_0

    .line 228
    iput-object p1, p0, Lcn/domob/android/ads/giftool/GifView;->i:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    .line 229
    :cond_0
    return-void
.end method

.method public setShowDimension(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 238
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 239
    iput p1, p0, Lcn/domob/android/ads/giftool/GifView;->e:I

    .line 241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->f:Landroid/graphics/Rect;

    .line 242
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->f:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->f:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 244
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->f:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 245
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->f:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 247
    :cond_0
    return-void
.end method

.method public showAnimation()V
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->d:Z

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->d:Z

    .line 219
    :cond_0
    return-void
.end method

.method public showCover()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/giftool/GifView;->d:Z

    .line 207
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->a:Lcn/domob/android/ads/giftool/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/GifView;->b:Landroid/graphics/Bitmap;

    .line 208
    invoke-virtual {p0}, Lcn/domob/android/ads/giftool/GifView;->invalidate()V

    goto :goto_0
.end method
