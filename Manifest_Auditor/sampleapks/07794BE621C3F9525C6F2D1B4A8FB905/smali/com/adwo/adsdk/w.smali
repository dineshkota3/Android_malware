.class final Lcom/adwo/adsdk/w;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/j;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/j;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adwo/adsdk/w;)Lcom/adwo/adsdk/j;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 704
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->c(Lcom/adwo/adsdk/j;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->c(Lcom/adwo/adsdk/j;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v0, v2}, Lcom/adwo/adsdk/j;->c(Z)V

    .line 708
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v0, v2}, Lcom/adwo/adsdk/j;->a(Z)V

    .line 709
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v0, v2}, Lcom/adwo/adsdk/j;->b(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    iget-object v0, v0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 694
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    iget-object v0, v0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 695
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->b(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->b(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 701
    :cond_1
    :goto_1
    return-void

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->b(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->b(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v11, "http"

    const-string v10, "Adwo AdSDK"

    const-string v8, "android.intent.action.VIEW"

    .line 461
    if-eqz p2, :cond_10

    .line 462
    const/4 v2, 0x0

    .line 467
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 469
    if-nez v0, :cond_0

    move v0, v9

    .line 663
    :goto_0
    return v0

    .line 476
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    new-instance v3, Landroid/content/Intent;

    .line 479
    const-string v4, "android.intent.action.DIAL"

    .line 478
    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 482
    if-eqz v0, :cond_1

    .line 483
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    move v0, v7

    .line 487
    goto :goto_0

    .line 488
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 489
    const-string v4, "sms"

    .line 488
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 490
    new-instance v3, Landroid/content/Intent;

    .line 491
    const-string v4, "android.intent.action.VIEW"

    .line 490
    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 494
    if-eqz v0, :cond_3

    .line 495
    :try_start_3
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    move v0, v7

    .line 499
    goto :goto_0

    .line 500
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 501
    const-string v4, "market"

    .line 500
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 502
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 503
    const-string v4, "http://market.android.com"

    .line 502
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 504
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 505
    const-string v4, "https://market.android.com"

    .line 504
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 506
    :cond_5
    new-instance v3, Landroid/content/Intent;

    .line 507
    const-string v4, "android.intent.action.VIEW"

    .line 506
    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 510
    if-eqz v0, :cond_6

    .line 511
    :try_start_5
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    :goto_3
    move v0, v7

    .line 515
    goto :goto_0

    .line 518
    :cond_7
    :try_start_6
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 519
    const-string v4, "http"

    .line 518
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 520
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 521
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/adwo/adsdk/x;

    invoke-direct {v3, p0, p2, v0}, Lcom/adwo/adsdk/x;-><init>(Lcom/adwo/adsdk/w;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 525
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v0, v7

    .line 527
    goto/16 :goto_0

    .line 528
    :cond_8
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 529
    const-string v3, "http"

    .line 528
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 530
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 531
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 532
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 533
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 534
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".bmp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 535
    :cond_a
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/adwo/adsdk/y;

    invoke-direct {v3, p0, p2, v0}, Lcom/adwo/adsdk/y;-><init>(Lcom/adwo/adsdk/w;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 539
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v0, v7

    .line 540
    goto/16 :goto_0

    .line 541
    :cond_b
    const-string v1, ".3gp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 542
    const-string v1, ".mp3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 543
    const-string v1, ".mp4"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 544
    const-string v1, ".mpeg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 545
    const-string v1, ".wav"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 548
    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    invoke-static {p2}, Lcom/adwo/adsdk/O;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 562
    if-eqz v0, :cond_d

    .line 563
    :try_start_7
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_d
    :goto_4
    move v0, v7

    .line 568
    goto/16 :goto_0

    .line 571
    :cond_e
    :try_start_8
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 572
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 574
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 573
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 576
    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 578
    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 579
    const-string v4, "Content-Type"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 582
    const-string v4, "Adwo AdSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response Code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Response Message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 584
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v1, "Adwo AdSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "locurlString: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-object v1, v2

    .line 598
    :goto_5
    if-eqz p2, :cond_11

    .line 599
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 604
    if-nez v1, :cond_f

    .line 605
    const-string v1, ""

    .line 607
    :cond_f
    if-eqz v2, :cond_10

    .line 608
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 610
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "market"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 612
    const-string v1, "Adwo AdSDK"

    .line 613
    const-string v1, "Android Market URL, launch the Market Application"

    .line 612
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 616
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_10
    :goto_6
    move v0, v7

    .line 663
    goto/16 :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 588
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move v0, v9

    .line 590
    goto/16 :goto_0

    .line 591
    :catch_1
    move-exception v1

    .line 592
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_5

    :cond_11
    move v0, v9

    .line 601
    goto/16 :goto_0

    .line 619
    :cond_12
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 620
    const-string v4, "rtsp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 621
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 622
    const-string v4, "http"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 623
    const-string v3, "video/mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 624
    const-string v3, "video/3gpp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 625
    :cond_13
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 626
    const-string v3, "tel"

    .line 625
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 627
    const-string v1, "Adwo AdSDK"

    .line 628
    const-string v1, "Telephone Number, launch the phone"

    .line 627
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 631
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 632
    :cond_14
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 633
    const-string v3, "sms"

    .line 632
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 634
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 636
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 637
    :cond_15
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 638
    const-string v1, "http"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 639
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 640
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 641
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 642
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 643
    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 652
    :cond_16
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 658
    invoke-direct {p0}, Lcom/adwo/adsdk/w;->a()V

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_4
.end method
