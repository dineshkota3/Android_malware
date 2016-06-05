.class final Lcn/domob/android/ads/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/i$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/Dialog;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/view/animation/Animation;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/os/Handler;

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/view/animation/RotateAnimation;

.field private w:I

.field private x:Lcn/domob/android/ads/DomobAdView;

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/app/ProgressDialog;

    .line 61
    iput-object v0, p0, Lcn/domob/android/ads/i;->c:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcn/domob/android/ads/i;->d:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/i;->n:Landroid/os/Handler;

    .line 74
    iput v1, p0, Lcn/domob/android/ads/i;->o:I

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/domob/android/ads/i;->r:F

    .line 479
    iput-boolean v1, p0, Lcn/domob/android/ads/i;->y:Z

    .line 480
    iput-boolean v1, p0, Lcn/domob/android/ads/i;->z:Z

    .line 51
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/i;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v5, "asset stream close error"

    const-string v4, "DomobSDK"

    .line 640
    .line 643
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 645
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 646
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 647
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 656
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v2

    .line 664
    :goto_0
    return-object v0

    .line 651
    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_1
    :try_start_3
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 656
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v6

    goto :goto_0

    .line 659
    :catch_1
    move-exception v0

    const-string v0, "DomobSDK"

    const-string v0, "asset stream close error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    .line 654
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 656
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 663
    :goto_3
    throw v0

    .line 659
    :catch_2
    move-exception v1

    const-string v1, "DomobSDK"

    const-string v1, "asset stream close error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v0, "DomobSDK"

    const-string v0, "asset stream close error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    .line 654
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 651
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private a()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/high16 v5, 0x41f00000    # 30.0f

    .line 707
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 711
    iget v1, p0, Lcn/domob/android/ads/i;->o:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 713
    const-string v1, "close.png"

    .line 714
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 721
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    new-instance v2, Lcn/domob/android/ads/i$14;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/i$14;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    invoke-direct {p0, v1, v0}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    .line 718
    :cond_0
    const-string v1, "exit.png"

    .line 719
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x41f00000    # 30.0f

    .line 670
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 672
    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-static {p1, v1}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 674
    iget v1, p0, Lcn/domob/android/ads/i;->o:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 676
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 682
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 685
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 684
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 687
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 688
    return-object v0

    .line 680
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 348
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    move v2, v7

    move-object v3, v0

    move v0, v6

    .line 350
    :goto_0
    if-lt v0, v1, :cond_2

    .line 361
    :cond_0
    const-string v0, "http://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move-object v0, v3

    .line 369
    :goto_1
    return-object v0

    .line 351
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 352
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    and-int/2addr v2, v4

    .line 356
    sub-int v4, v1, v7

    if-ne v0, v4, :cond_3

    if-nez v2, :cond_3

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_4
    const-string v0, "http:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 364
    :cond_5
    const-string v0, "http:/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https:/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 365
    :cond_6
    const-string v0, "/"

    const-string v1, "//"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 366
    :cond_7
    const-string v0, ":"

    const-string v1, "://"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/i;I)V
    .locals 5

    .prologue
    .line 911
    new-instance v1, Lcn/domob/android/ads/DomobReport;

    iget-object v0, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcn/domob/android/ads/DomobReport;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcn/domob/android/ads/DomobReport$ReportInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1}, Lcn/domob/android/ads/DomobReport$ReportInfo;-><init>(Lcn/domob/android/ads/DomobReport;)V

    iput p1, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->a:I

    const/4 v0, 0x1

    iput v0, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->c:Ljava/util/ArrayList;

    iget-object v3, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/domob/android/ads/i;->g:Ljava/util/HashMap;

    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/domob/android/ads/i;->g:Ljava/util/HashMap;

    const-string v3, "rpurlmd5"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->d:Ljava/lang/String;

    iget-object v0, p0, Lcn/domob/android/ads/i;->x:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->getSpots()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/DomobReport;->a(Lcn/domob/android/ads/DomobReport$ReportInfo;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/i;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 6

    .prologue
    const-string v2, "DomobSDK"

    const-string v5, "name"

    .line 924
    iget-object v0, p0, Lcn/domob/android/ads/i;->g:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcn/domob/android/download/AppExchangeDownloader;->appIsDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/domob/android/ads/i;->g:Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u5df2\u7ecf\u4e0b\u8f7d\u662f\u5426\u73b0\u5728\u5b89\u88c5?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u5426"

    new-instance v3, Lcn/domob/android/ads/i$5;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/i$5;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u662f"

    new-instance v3, Lcn/domob/android/ads/i$6;

    invoke-direct {v3, p0, p2, v1}, Lcn/domob/android/ads/i$6;-><init>(Lcn/domob/android/ads/i;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startDownload url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/i;->g:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcn/domob/android/ads/i$7;

    invoke-direct {v1, p0, p2}, Lcn/domob/android/ads/i$7;-><init>(Lcn/domob/android/ads/i;Landroid/content/Context;)V

    invoke-static {p1, v0, p2, v1}, Lcn/domob/android/download/AppExchangeDownloader;->downloadApp(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/download/AppExchangeDownloaderListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/i;Z)V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/i;->y:Z

    return-void
.end method

.method private static a(II)Z
    .locals 4

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 333
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    .line 335
    ushr-int v1, p0, v0

    rem-int/lit8 v1, v1, 0x2

    .line 336
    ushr-int v0, v3, v0

    rem-int/lit8 v0, v0, 0x2

    .line 337
    if-ne v1, v0, :cond_0

    move v0, v2

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcn/domob/android/ads/i;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcn/domob/android/ads/i;->o:I

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 876
    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/i;->s:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "preview.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    :try_start_1
    iget-object v0, p0, Lcn/domob/android/ads/i;->t:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "next.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 909
    :goto_1
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 887
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcn/domob/android/ads/i;->s:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "preview_off.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 888
    :catch_1
    move-exception v0

    .line 889
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 897
    :catch_2
    move-exception v0

    .line 898
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 904
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcn/domob/android/ads/i;->t:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "next_off.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 905
    :catch_3
    move-exception v0

    .line 906
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcn/domob/android/ads/i;Z)V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/i;->z:Z

    return-void
.end method

.method static synthetic c(Lcn/domob/android/ads/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/i;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcn/domob/android/ads/i;->w:I

    return v0
.end method

.method static synthetic e(Lcn/domob/android/ads/i;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/ads/i;)Landroid/view/animation/RotateAnimation;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/ads/i;)Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->y:Z

    return v0
.end method

.method static synthetic h(Lcn/domob/android/ads/i;)V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0}, Lcn/domob/android/ads/i;->b()V

    return-void
.end method

.method static synthetic i(Lcn/domob/android/ads/i;)Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->z:Z

    return v0
.end method

.method static synthetic j(Lcn/domob/android/ads/i;)V
    .locals 9

    .prologue
    .line 734
    iget v0, p0, Lcn/domob/android/ads/i;->o:I

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->k:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcn/domob/android/ads/i;->k:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcn/domob/android/ads/i;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/domob/android/ads/i;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->m:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcn/domob/android/ads/i;->m:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcn/domob/android/ads/i;->i:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcn/domob/android/ads/i;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic k(Lcn/domob/android/ads/i;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/domob/android/ads/i;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcn/domob/android/ads/i;)V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    invoke-direct {p0}, Lcn/domob/android/ads/i;->b()V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcn/domob/android/ads/i;)V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    invoke-direct {p0}, Lcn/domob/android/ads/i;->b()V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcn/domob/android/ads/i;)V
    .locals 3

    .prologue
    .line 827
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic o(Lcn/domob/android/ads/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcn/domob/android/ads/i;)V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/android/ads/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;Lcn/domob/android/ads/DomobAdView;Ljava/util/HashMap;)Landroid/app/Dialog;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/ProgressDialog;",
            "Lcn/domob/android/ads/DomobAdView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    .line 94
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/i;->g:Ljava/util/HashMap;

    .line 95
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/i;->x:Lcn/domob/android/ads/DomobAdView;

    .line 97
    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-static/range {p5 .. p5}, Lcn/domob/android/ads/DomobAdManager;->a(Landroid/view/View;)F

    move-result v2

    iput v2, p0, Lcn/domob/android/ads/i;->r:F

    .line 100
    invoke-static {p2}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/ads/i;->c:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcn/domob/android/ads/i;->d:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcn/domob/android/ads/i;->a:Landroid/app/ProgressDialog;

    .line 103
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    .line 104
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    iget-object v3, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v9, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    const/16 v2, 0xd

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    .line 110
    iget-object v2, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "loading.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v2, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v2, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    .line 113
    iget-object v2, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 114
    iget-object v2, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 115
    iget-object v2, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 117
    iget-object v8, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/domob/android/ads/i;->d:Ljava/lang/String;

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    new-instance v3, Lcn/domob/android/ads/i$11;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/i$11;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    new-instance v3, Lcn/domob/android/ads/i$12;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/i$12;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    new-instance v3, Lcn/domob/android/ads/i$13;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/i$13;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v3, 0x42200000    # 40.0f

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 118
    iget-object v2, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 123
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "banner.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    new-instance v4, Landroid/widget/ImageButton;

    iget-object v5, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/domob/android/ads/i;->s:Landroid/widget/ImageButton;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    iget v7, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcn/domob/android/ads/i;->s:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "preview.png"

    :goto_1
    iget-object v5, p0, Lcn/domob/android/ads/i;->s:Landroid/widget/ImageButton;

    new-instance v6, Lcn/domob/android/ads/i$15;

    invoke-direct {v6, p0}, Lcn/domob/android/ads/i$15;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcn/domob/android/ads/i;->s:Landroid/widget/ImageButton;

    invoke-direct {p0, v4, v5}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v4, Landroid/widget/ImageButton;

    iget-object v5, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/domob/android/ads/i;->t:Landroid/widget/ImageButton;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    iget v7, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcn/domob/android/ads/i;->t:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcn/domob/android/ads/i;->t:Landroid/widget/ImageButton;

    new-instance v5, Lcn/domob/android/ads/i$2;

    invoke-direct {v5, p0}, Lcn/domob/android/ads/i$2;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "next_off.png"

    iget-object v5, p0, Lcn/domob/android/ads/i;->t:Landroid/widget/ImageButton;

    invoke-direct {p0, v4, v5}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v4, Landroid/widget/ImageButton;

    iget-object v5, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42200000    # 40.0f

    iget v7, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x42200000    # 40.0f

    iget v8, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcn/domob/android/ads/i$4;

    invoke-direct {v5, p0}, Lcn/domob/android/ads/i$4;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "refresh.png"

    invoke-direct {p0, v5, v4}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v4, Landroid/widget/ImageButton;

    iget-object v5, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42200000    # 40.0f

    iget v7, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x42200000    # 40.0f

    iget v8, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcn/domob/android/ads/i$3;

    invoke-direct {v5, p0}, Lcn/domob/android/ads/i$3;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "out.png"

    invoke-direct {p0, v5, v4}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-direct {p0}, Lcn/domob/android/ads/i;->a()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v4, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const/4 v2, 0x0

    .line 138
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 139
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object p2, v0

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 142
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x400

    invoke-static {v2, v3}, Lcn/domob/android/ads/i;->a(II)Z

    move-result v2

    .line 145
    :cond_0
    if-eqz v2, :cond_3

    .line 146
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x1030011

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    .line 152
    :goto_2
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcn/domob/android/ads/i;->j:Landroid/view/animation/Animation;

    .line 153
    iget-object v2, p0, Lcn/domob/android/ads/i;->j:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 154
    iget-object v2, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/android/ads/i;->j:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    iget-object v2, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 157
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 158
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 159
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 160
    iget-object v3, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 161
    iget-object v2, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 162
    iget-object v2, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 163
    iget-object v2, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 165
    iget-object v2, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    new-instance v3, Lcn/domob/android/ads/i$1;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/i$1;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 174
    iget-object v2, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    return-object v2

    .line 117
    :cond_1
    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_2
    const-string v4, "preview_off.png"

    goto/16 :goto_1

    .line 148
    :cond_3
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x1030010

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    goto :goto_2
.end method

.method protected final a(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/util/HashMap;)Landroid/app/Dialog;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/DomobAdView;",
            "Ljava/lang/String;",
            "Landroid/app/ProgressDialog;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/ads/i;->o:I

    .line 179
    iput-object p4, p0, Lcn/domob/android/ads/i;->g:Ljava/util/HashMap;

    .line 180
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    .line 182
    iget-object v0, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-static {p1}, Lcn/domob/android/ads/DomobAdManager;->a(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/i;->r:F

    .line 185
    invoke-static {p2}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/i;->c:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lcn/domob/android/ads/i;->a:Landroid/app/ProgressDialog;

    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/domob/android/ads/DomobAdManager;->a(Landroid/content/Context;Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/i;->p:I

    .line 189
    iget-object v0, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/i;->q:I

    .line 191
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 192
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 194
    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 195
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 197
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->i:Landroid/widget/RelativeLayout;

    .line 199
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    .line 200
    iget-object v0, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 202
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 203
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 204
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    .line 205
    iget-object v0, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "loading.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v0, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    .line 208
    iget-object v0, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 209
    iget-object v0, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 210
    iget-object v0, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 212
    iget-object v0, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/android/ads/i;->v:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    new-instance v2, Lcn/domob/android/ads/i$9;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/i$9;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    new-instance v2, Lcn/domob/android/ads/i$10;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/i$10;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v1, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/DomobAdManager;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcn/domob/android/ads/i;->q:I

    iget v2, p0, Lcn/domob/android/ads/i;->p:I

    div-int/2addr v1, v2

    if-lez v1, :cond_2

    iget-object p1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget v1, p0, Lcn/domob/android/ads/i;->p:I

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x43960000    # 300.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x43c80000    # 400.0f

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/domob/android/ads/i;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/i;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 217
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    const/4 v1, 0x0

    .line 220
    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 221
    iget-object p1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 224
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcn/domob/android/ads/i;->a(II)Z

    move-result v1

    .line 227
    :cond_0
    if-eqz v1, :cond_8

    .line 228
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    const v3, 0x1030011

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    .line 233
    :goto_1
    iget-object v1, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 234
    iget-object v1, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 235
    iget-object p1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, p0, Lcn/domob/android/ads/i;->w:I

    .line 236
    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/DomobAdManager;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "v"

    if-ne v2, v3, :cond_c

    .line 238
    iget-object p1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 239
    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    iget v3, p0, Lcn/domob/android/ads/i;->p:I

    div-int/2addr v2, v3

    if-lez v2, :cond_a

    .line 241
    iget v2, p0, Lcn/domob/android/ads/i;->p:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_9

    .line 243
    const/high16 v2, 0x43a00000    # 320.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 244
    const/high16 v2, 0x43d20000    # 420.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 296
    :goto_2
    const v2, 0x3f333333    # 0.7f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 297
    iget-object v2, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 298
    iget-object v1, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 300
    iget-object v1, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v1, p0, Lcn/domob/android/ads/i;->i:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v1, p0, Lcn/domob/android/ads/i;->i:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 303
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 304
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 305
    iget-object v2, p0, Lcn/domob/android/ads/i;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/android/ads/i;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v1, p0, Lcn/domob/android/ads/i;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/domob/android/ads/i;->a()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/android/ads/i;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 309
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->l:Landroid/view/animation/Animation;

    .line 310
    iget-object v0, p0, Lcn/domob/android/ads/i;->l:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 311
    iget-object v0, p0, Lcn/domob/android/ads/i;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/i;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    iget-object v0, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    new-instance v1, Lcn/domob/android/ads/i$8;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/i$8;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 322
    iget-object v0, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    return-object v0

    .line 212
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/i;->p:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->p:I

    const/16 v4, 0x14

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_2
    iget v1, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    const/16 v2, 0x190

    if-lt v1, v2, :cond_3

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x43c80000    # 400.0f

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v4, 0x14

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget v1, p0, Lcn/domob/android/ads/i;->p:I

    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    div-int/2addr v1, v2

    if-lez v1, :cond_6

    iget v1, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x43960000    # 300.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x43c80000    # 400.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x43960000    # 300.0f

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v4, 0x14

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    const/16 v2, 0x190

    if-lt v1, v2, :cond_7

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x43c80000    # 400.0f

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v4, 0x14

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    .line 230
    :cond_8
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    const v3, 0x1030010

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/domob/android/ads/i;->f:Landroid/app/Dialog;

    goto/16 :goto_1

    .line 248
    :cond_9
    iget v2, p0, Lcn/domob/android/ads/i;->p:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    iget v2, p0, Lcn/domob/android/ads/i;->p:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    shl-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_2

    .line 254
    :cond_a
    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    const/16 v3, 0x190

    if-lt v2, v3, :cond_b

    .line 256
    const/high16 v2, 0x43960000    # 300.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 257
    const/high16 v2, 0x43c80000    # 400.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_2

    .line 261
    :cond_b
    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 262
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_2

    .line 268
    :cond_c
    iget-object p1, p0, Lcn/domob/android/ads/i;->e:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 269
    iget v2, p0, Lcn/domob/android/ads/i;->p:I

    iget v3, p0, Lcn/domob/android/ads/i;->q:I

    div-int/2addr v2, v3

    if-lez v2, :cond_e

    .line 271
    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    const/16 v3, 0x190

    if-lt v2, v3, :cond_d

    .line 273
    const/high16 v2, 0x43960000    # 300.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 274
    const/high16 v2, 0x43c80000    # 400.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_2

    .line 278
    :cond_d
    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 279
    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_2

    .line 284
    :cond_e
    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    const/16 v3, 0x190

    if-lt v2, v3, :cond_f

    .line 286
    const/high16 v2, 0x43960000    # 300.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 287
    const/high16 v2, 0x43c80000    # 400.0f

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_2

    .line 291
    :cond_f
    iget v2, p0, Lcn/domob/android/ads/i;->q:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 292
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/ads/i;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_2
.end method
