.class final Lcom/adwo/adsdk/v;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/j;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/j;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adwo/adsdk/v;)Lcom/adwo/adsdk/j;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 843
    const-string v0, "Adwo AdSDK"

    const-string v1, "Showing and enabling bottom bar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->c(Lcom/adwo/adsdk/j;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 850
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->c(Lcom/adwo/adsdk/j;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v0, v2}, Lcom/adwo/adsdk/j;->c(Z)V

    .line 848
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v0, v2}, Lcom/adwo/adsdk/j;->a(Z)V

    .line 849
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v0, v2}, Lcom/adwo/adsdk/j;->b(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 817
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    iget-object v0, v0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 829
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    iget-object v0, v0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 830
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->b(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->b(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 838
    :cond_1
    :goto_1
    return-void

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 834
    :cond_3
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->b(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-static {v0}, Lcom/adwo/adsdk/j;->b(Lcom/adwo/adsdk/j;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const-string v11, "http"

    const-string v9, "android.intent.action.VIEW"

    const-string v8, "Adwo AdSDK"

    .line 582
    if-eqz p2, :cond_d

    .line 584
    const/4 v2, 0x0

    .line 589
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 591
    if-nez v0, :cond_0

    move v0, v10

    .line 798
    :goto_0
    return v0

    .line 604
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 609
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 611
    if-eqz v0, :cond_1

    .line 612
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    move v0, v7

    .line 616
    goto :goto_0

    .line 618
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 621
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 623
    if-eqz v0, :cond_3

    .line 624
    :try_start_3
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    move v0, v7

    .line 628
    goto :goto_0

    .line 629
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "market"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 630
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://market.android.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 631
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://market.android.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 635
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 637
    if-eqz v0, :cond_6

    .line 638
    :try_start_5
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    :goto_3
    move v0, v7

    .line 642
    goto :goto_0

    .line 645
    :cond_7
    :try_start_6
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 646
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".apk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 650
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/adwo/adsdk/w;

    invoke-direct {v3, p0, p2, v0}, Lcom/adwo/adsdk/w;-><init>(Lcom/adwo/adsdk/v;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 656
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v0, v7

    .line 659
    goto/16 :goto_0

    .line 662
    :cond_8
    const-string v1, ".3gp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 663
    const-string v1, ".mp3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 664
    const-string v1, ".mp4"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 665
    const-string v1, ".mpeg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 666
    const-string v1, ".wav"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 670
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 673
    invoke-static {p2}, Lcom/adwo/adsdk/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 677
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 682
    if-eqz v0, :cond_a

    .line 683
    :try_start_7
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_a
    :goto_4
    move v0, v7

    .line 689
    goto/16 :goto_0

    .line 693
    :cond_b
    :try_start_8
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 694
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 695
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 697
    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 699
    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    const-string v4, "Content-Type"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 703
    const-string v4, "Adwo AdSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response Code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Response Message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
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

    .line 722
    :goto_5
    if-eqz p2, :cond_e

    .line 724
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 725
    const-string v3, "Adwo AdSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "====DestinationURI====: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    if-nez v1, :cond_c

    .line 733
    const-string v1, ""

    .line 735
    :cond_c
    if-eqz v2, :cond_d

    .line 736
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 739
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "market"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 741
    const-string v1, "Adwo AdSDK"

    const-string v1, "Android Market URL, launch the Market Application"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 743
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_d
    :goto_6
    move v0, v7

    .line 798
    goto/16 :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 709
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move v0, v10

    .line 711
    goto/16 :goto_0

    .line 713
    :catch_1
    move-exception v1

    .line 715
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_5

    :cond_e
    move v0, v10

    .line 729
    goto/16 :goto_0

    .line 748
    :cond_f
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rtsp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "video/mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "video/3gpp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 759
    :cond_10
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 761
    const-string v1, "Adwo AdSDK"

    const-string v1, "Telephone Number, launch the phone"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 763
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 765
    :cond_11
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 768
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 769
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 771
    :cond_12
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 773
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 785
    :cond_13
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 793
    invoke-direct {p0}, Lcom/adwo/adsdk/v;->a()V

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
