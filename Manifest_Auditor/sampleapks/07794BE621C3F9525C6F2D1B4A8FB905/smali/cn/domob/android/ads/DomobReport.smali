.class Lcn/domob/android/ads/DomobReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobReport$ActionType;,
        Lcn/domob/android/ads/DomobReport$IDType;,
        Lcn/domob/android/ads/DomobReport$ReportInfo;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcn/domob/android/ads/DomobReport;->a:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static a(Lcn/domob/android/ads/DomobAdView;)I
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 56
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 57
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->h()Ljava/util/ArrayList;

    move-result-object v2

    .line 58
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    :cond_0
    const/16 v0, 0x9

    if-ne v1, v0, :cond_2

    .line 64
    const/4 v0, 0x7

    .line 66
    :goto_1
    return v0

    .line 59
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobReport;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcn/domob/android/ads/DomobReport;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(ILcn/domob/android/ads/DomobAdView;)Landroid/view/animation/Animation;
    .locals 9

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 46
    :pswitch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v3, p0, v0

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float v4, p0, p1

    new-instance v0, Lcn/domob/android/ads/p;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/p;-><init>(FFFFFZ)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object p0, v0

    goto :goto_0

    .line 36
    :pswitch_2
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v3, p0, v0

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float v4, p0, p1

    new-instance v0, Lcn/domob/android/ads/p;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/p;-><init>(FFFFFZ)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object p0, v0

    goto :goto_0

    .line 38
    :pswitch_3
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 p1, 0x3f800000    # 1.0f

    const v0, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, p1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 40
    :pswitch_4
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const p1, 0x3e99999a    # 0.3f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x640

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 42
    :pswitch_5
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object p0, v0

    goto/16 :goto_0

    .line 44
    :pswitch_6
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    if-nez p0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object p0, v0

    :goto_1
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object p0, v0

    goto :goto_1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, ""

    .line 56
    packed-switch p0, :pswitch_data_0

    .line 89
    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    const-string v0, "download_start"

    goto :goto_0

    .line 62
    :pswitch_1
    const-string v0, "download_finish"

    goto :goto_0

    .line 65
    :pswitch_2
    const-string v0, "download_failed"

    goto :goto_0

    .line 68
    :pswitch_3
    const-string v0, "download_cancel"

    goto :goto_0

    .line 71
    :pswitch_4
    const-string v0, "load_success"

    goto :goto_0

    .line 74
    :pswitch_5
    const-string v0, "load_failed"

    goto :goto_0

    .line 77
    :pswitch_6
    const-string v0, "close_lp"

    goto :goto_0

    .line 80
    :pswitch_7
    const-string v0, "install_success"

    goto :goto_0

    .line 83
    :pswitch_8
    const-string v0, "run"

    goto :goto_0

    .line 86
    :pswitch_9
    const-string v0, "confirm_download"

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobReport;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcn/domob/android/ads/DomobReport;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobReport;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-static {p1}, Lcn/domob/android/ads/DomobReport;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const-string v6, "DomobSDK"

    const-string v0, "="

    const-string v0, "UTF-8"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "post params string:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    return-object v0

    .line 143
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 146
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-eqz p0, :cond_3

    if-eqz v3, :cond_4

    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 149
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 146
    :cond_4
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobReport;Lcn/domob/android/ads/DomobReport$ReportInfo;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcn/domob/android/ads/DomobReport;->b(Lcn/domob/android/ads/DomobReport$ReportInfo;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcn/domob/android/ads/DomobReport$ReportInfo;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/DomobReport$ReportInfo;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x0

    const-string v4, "DomobSDK"

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    const-string v1, "rt"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lcn/domob/android/ads/DomobReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 182
    if-nez v1, :cond_0

    .line 183
    const-string v1, "Android,,,,,,,,"

    .line 185
    :cond_0
    const-string v2, "ua"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v1, p0, Lcn/domob/android/ads/DomobReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/DomobAdManager;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_2

    .line 189
    const-string v2, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_2
    iget-object v1, p0, Lcn/domob/android/ads/DomobReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/DomobAdManager;->getPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 198
    const-string v2, "ipb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :goto_0
    iget-object v1, p1, Lcn/domob/android/ads/DomobReport$ReportInfo;->d:Ljava/lang/String;

    .line 204
    if-eqz v1, :cond_3

    .line 206
    const-string v2, "rp_md5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_3
    iget-object v1, p1, Lcn/domob/android/ads/DomobReport$ReportInfo;->e:Ljava/lang/String;

    .line 210
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 212
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_4

    .line 214
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 216
    :cond_4
    const-string v2, "spot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_5
    iget-object v1, p1, Lcn/domob/android/ads/DomobReport$ReportInfo;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 222
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move v2, v5

    .line 223
    :goto_1
    iget-object v3, p1, Lcn/domob/android/ads/DomobReport$ReportInfo;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_8

    .line 227
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 228
    const-string v3, "type"

    iget v4, p1, Lcn/domob/android/ads/DomobReport$ReportInfo;->a:I

    invoke-static {v4}, Lcn/domob/android/ads/DomobReport;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v3, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 230
    const-string v3, "idtype"

    iget v4, p1, Lcn/domob/android/ads/DomobReport$ReportInfo;->b:I

    const-string v5, ""

    packed-switch v4, :pswitch_data_0

    move-object v4, v5

    :goto_2
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 234
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    const-string v2, "jstr"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_6
    :goto_3
    return-object v0

    .line 200
    :cond_7
    const-string v1, "DomobSDK"

    const-string v1, "publisher id is null or empty!"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_8
    :try_start_1
    iget-object v3, p1, Lcn/domob/android/ads/DomobReport$ReportInfo;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :pswitch_0
    const-string v4, "ad"

    goto :goto_2

    :pswitch_1
    const-string v4, "app"

    goto :goto_2

    :pswitch_2
    const-string v4, "pkg"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcn/domob/android/ads/DomobReport$ReportInfo;)V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcn/domob/android/ads/DomobReport$1;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/DomobReport$1;-><init>(Lcn/domob/android/ads/DomobReport;Lcn/domob/android/ads/DomobReport$ReportInfo;)V

    .line 135
    invoke-virtual {v0}, Lcn/domob/android/ads/DomobReport$1;->start()V

    .line 136
    return-void
.end method
