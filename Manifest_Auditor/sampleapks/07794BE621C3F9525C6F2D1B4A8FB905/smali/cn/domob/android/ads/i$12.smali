.class final Lcn/domob/android/ads/i$12;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/i;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    .line 510
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->g(Lcn/domob/android/ads/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;Z)V

    .line 585
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;I)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->e(Lcn/domob/android/ads/i;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 589
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->e(Lcn/domob/android/ads/i;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->h(Lcn/domob/android/ads/i;)V

    .line 591
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 594
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 595
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->e(Lcn/domob/android/ads/i;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->e(Lcn/domob/android/ads/i;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v1}, Lcn/domob/android/ads/i;->f(Lcn/domob/android/ads/i;)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 597
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->h(Lcn/domob/android/ads/i;)V

    .line 598
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const-string v2, "DomobSDK"

    .line 603
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->i(Lcn/domob/android/ads/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/i;->b(Lcn/domob/android/ads/i;Z)V

    .line 606
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;I)V

    .line 609
    :cond_0
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView ReceivedError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const-string v7, "wtai://wp/mc;"

    const-string v5, "android.intent.action.VIEW"

    const-string v4, "DomobSDK"

    .line 516
    const-string v0, "wtai://wp/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const-string v0, "wtai://wp/mc;"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "in"

    const-string v1, "tel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    const-string v2, "wtai://wp/mc;"

    .line 525
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 524
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 522
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 521
    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 526
    iget-object v1, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v1}, Lcn/domob/android/ads/i;->c(Lcn/domob/android/ads/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 576
    :goto_0
    return v0

    .line 546
    :cond_0
    :try_start_0
    const-string v0, "market://search?q="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 549
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    iget-object v1, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v1}, Lcn/domob/android/ads/i;->c(Lcn/domob/android/ads/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 551
    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    const-string v0, "DomobSDK"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to intent market "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_1
    const-string v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 565
    :cond_2
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 566
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 567
    iget-object v0, p0, Lcn/domob/android/ads/i$12;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->c(Lcn/domob/android/ads/i;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    .line 568
    goto :goto_0

    .line 570
    :catch_1
    move-exception v0

    const-string v0, "DomobSDK"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to intent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v3

    .line 576
    goto/16 :goto_0
.end method
