.class final Lcn/domob/android/ads/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/n;


# direct methods
.method synthetic constructor <init>(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/n$a;-><init>(Lcn/domob/android/ads/n;B)V

    return-void
.end method

.method private constructor <init>(Lcn/domob/android/ads/n;B)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const-string v5, "DomobSDK"

    .line 130
    move v0, v4

    :goto_0
    if-lt v0, v6, :cond_3

    .line 137
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->c(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->b(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v1}, Lcn/domob/android/ads/n;->c(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;)Lcn/domob/android/ads/DomobAdBuilder;

    .line 140
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 141
    const-wide/16 v1, 0x640

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 143
    iget-object v1, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v1}, Lcn/domob/android/ads/n;->c(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/DomobAdBuilder;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->b(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v1}, Lcn/domob/android/ads/n;->d(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->removeView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->d(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 147
    iget-object v0, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->e(Lcn/domob/android/ads/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->e(Lcn/domob/android/ads/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->f(Lcn/domob/android/ads/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 158
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const-string v0, "DomobSDK"

    const-string v1, "recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v4

    .line 131
    :goto_3
    const/16 v2, 0x10

    if-lt v1, v2, :cond_4

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 132
    :cond_4
    iget-object v2, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v2}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)[[Landroid/widget/ImageView;

    move-result-object v2

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v2, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v2}, Lcn/domob/android/ads/n;->b(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/n$a;->a:Lcn/domob/android/ads/n;

    invoke-static {v3}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)[[Landroid/widget/ImageView;

    move-result-object v3

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/DomobAdView;->removeView(Landroid/view/View;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 151
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReplaceBuilderThread error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
