.class final Lcn/domob/android/ads/k;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:Z

.field public c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/domob/android/ads/k;->a:F

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/k;->b:Z

    .line 19
    iput p2, p0, Lcn/domob/android/ads/k;->c:F

    .line 21
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/k;->setGravity(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x3

    const-string v9, "DomobSDK"

    .line 25
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 27
    iget-boolean v0, p0, Lcn/domob/android/ads/k;->b:Z

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p0}, Lcn/domob/android/ads/k;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcn/domob/android/ads/k;->getTextSize()F

    move-result v1

    .line 31
    invoke-virtual {p0}, Lcn/domob/android/ads/k;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 32
    new-instance v3, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcn/domob/android/ads/k;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 33
    if-eqz v2, :cond_2

    move v4, v1

    .line 35
    :goto_0
    const-string v5, "DomobSDK"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 36
    const-string v5, "DomobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DomobTextView - getMeasuredWidth():"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/domob/android/ads/k;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | getMeasuredHeight():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcn/domob/android/ads/k;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget v5, p0, Lcn/domob/android/ads/k;->a:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    .line 40
    const-string v0, "DomobSDK"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const-string v0, "DomobSDK"

    const-string v0, "font size is less than min size!"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    :goto_1
    cmpl-float v0, v1, v4

    if-eqz v0, :cond_2

    .line 74
    const/4 v0, 0x1

    iget v1, p0, Lcn/domob/android/ads/k;->c:F

    div-float v1, v4, v1

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/k;->setTextSize(IF)V

    .line 78
    :cond_2
    return-void

    .line 46
    :cond_3
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 47
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 49
    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 51
    invoke-virtual {p0}, Lcn/domob/android/ads/k;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    .line 52
    const-string v5, "DomobSDK"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 53
    const-string v5, "DomobSDK"

    const-string v5, "char sequence length is less than measured width!"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_4
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 58
    iget v6, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v5, v6, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    .line 59
    invoke-virtual {p0}, Lcn/domob/android/ads/k;->getMeasuredHeight()I

    move-result v7

    int-to-double v7, v7

    cmpg-double v7, v5, v7

    if-gtz v7, :cond_5

    .line 60
    const-string v0, "DomobSDK"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "font height("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is less than measured height!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    :cond_5
    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    .line 69
    goto/16 :goto_0
.end method
