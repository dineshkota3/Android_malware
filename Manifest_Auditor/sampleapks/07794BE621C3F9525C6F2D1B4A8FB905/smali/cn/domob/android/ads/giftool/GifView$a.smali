.class final Lcn/domob/android/ads/giftool/GifView$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/giftool/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/giftool/GifView;


# direct methods
.method synthetic constructor <init>(Lcn/domob/android/ads/giftool/GifView;)V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/giftool/GifView$a;-><init>(Lcn/domob/android/ads/giftool/GifView;B)V

    return-void
.end method

.method private constructor <init>(Lcn/domob/android/ads/giftool/GifView;B)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcn/domob/android/ads/giftool/GifView$a;->a:Lcn/domob/android/ads/giftool/GifView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView$a;->a:Lcn/domob/android/ads/giftool/GifView;

    invoke-static {v0}, Lcn/domob/android/ads/giftool/GifView;->a(Lcn/domob/android/ads/giftool/GifView;)Lcn/domob/android/ads/giftool/b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView$a;->a:Lcn/domob/android/ads/giftool/GifView;

    invoke-static {v0}, Lcn/domob/android/ads/giftool/GifView;->c(Lcn/domob/android/ads/giftool/GifView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView$a;->a:Lcn/domob/android/ads/giftool/GifView;

    invoke-static {v0}, Lcn/domob/android/ads/giftool/GifView;->a(Lcn/domob/android/ads/giftool/GifView;)Lcn/domob/android/ads/giftool/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/b;->d()Lcn/domob/android/ads/giftool/c;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcn/domob/android/ads/giftool/GifView$a;->a:Lcn/domob/android/ads/giftool/GifView;

    iget-object v2, v0, Lcn/domob/android/ads/giftool/c;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcn/domob/android/ads/giftool/GifView;->a(Lcn/domob/android/ads/giftool/GifView;Landroid/graphics/Bitmap;)V

    .line 327
    iget v0, v0, Lcn/domob/android/ads/giftool/c;->b:I

    int-to-long v0, v0

    .line 328
    iget-object v2, p0, Lcn/domob/android/ads/giftool/GifView$a;->a:Lcn/domob/android/ads/giftool/GifView;

    invoke-static {v2}, Lcn/domob/android/ads/giftool/GifView;->d(Lcn/domob/android/ads/giftool/GifView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcn/domob/android/ads/giftool/GifView$a;->a:Lcn/domob/android/ads/giftool/GifView;

    invoke-static {v2}, Lcn/domob/android/ads/giftool/GifView;->d(Lcn/domob/android/ads/giftool/GifView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    .line 330
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 319
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/giftool/GifView$a;->a:Lcn/domob/android/ads/giftool/GifView;

    invoke-static {v0}, Lcn/domob/android/ads/giftool/GifView;->b(Lcn/domob/android/ads/giftool/GifView;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 339
    :cond_3
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1
.end method
