.class public Lcn/domob/android/ads/DomobImageView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcn/domob/android/ads/giftool/GifView;

.field private c:I

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcn/domob/android/ads/DomobImageView;->a:Landroid/widget/ImageView;

    .line 16
    iput-object v1, p0, Lcn/domob/android/ads/DomobImageView;->b:Lcn/domob/android/ads/giftool/GifView;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/ads/DomobImageView;->c:I

    .line 18
    iput-object v1, p0, Lcn/domob/android/ads/DomobImageView;->d:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcn/domob/android/ads/DomobImageView;->d:Landroid/content/Context;

    .line 27
    iput p2, p0, Lcn/domob/android/ads/DomobImageView;->c:I

    .line 28
    iget v0, p0, Lcn/domob/android/ads/DomobImageView;->c:I

    packed-switch v0, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 31
    :pswitch_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobImageView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobImageView;->a:Landroid/widget/ImageView;

    goto :goto_0

    .line 34
    :pswitch_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 35
    new-instance v0, Lcn/domob/android/ads/giftool/GifView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobImageView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/giftool/GifView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobImageView;->b:Lcn/domob/android/ads/giftool/GifView;

    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/DomobImageView;->b:Lcn/domob/android/ads/giftool/GifView;

    sget-object v1, Lcn/domob/android/ads/giftool/GifView$GifImageType;->WAIT_FINISH:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/giftool/GifView;->setGifImageType(Lcn/domob/android/ads/giftool/GifView$GifImageType;)V

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcn/domob/android/ads/DomobImageView;->c:I

    packed-switch v0, :pswitch_data_0

    .line 57
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobImageView;->a:Landroid/widget/ImageView;

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobImageView;->b:Lcn/domob/android/ads/giftool/GifView;

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;[B)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "data"    # [B

    .prologue
    .line 68
    iget v0, p0, Lcn/domob/android/ads/DomobImageView;->c:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 74
    :pswitch_1
    if-eqz p2, :cond_0

    .line 75
    iget-object v0, p0, Lcn/domob/android/ads/DomobImageView;->b:Lcn/domob/android/ads/giftool/GifView;

    invoke-virtual {v0, p2}, Lcn/domob/android/ads/giftool/GifView;->setGifImage([B)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/domob/android/ads/DomobImageView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcn/domob/android/ads/DomobImageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    :cond_0
    return-void
.end method
