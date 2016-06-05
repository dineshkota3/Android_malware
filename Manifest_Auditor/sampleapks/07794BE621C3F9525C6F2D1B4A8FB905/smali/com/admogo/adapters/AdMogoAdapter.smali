.class public abstract Lcom/admogo/adapters/AdMogoAdapter;
.super Ljava/lang/Object;
.source "AdMogoAdapter.java"


# static fields
.field static adapter:Lcom/admogo/adapters/AdMogoAdapter;


# instance fields
.field protected final adMogoLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admogo/AdMogoLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected ration:Lcom/admogo/obj/Ration;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 1
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    iput-object v0, p0, Lcom/admogo/adapters/AdMogoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p2, p0, Lcom/admogo/adapters/AdMogoAdapter;->ration:Lcom/admogo/obj/Ration;

    .line 29
    return-void
.end method

.method private static getAdapter(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;
    .locals 3
    .param p0, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p1, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 34
    :try_start_0
    iget v1, p1, Lcom/admogo/obj/Ration;->type:I

    packed-switch v1, :pswitch_data_0

    .line 206
    :pswitch_0
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    .line 36
    :pswitch_1
    const-string v1, "com.google.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "com.admogo.adapters.GoogleAdMobAdsAdapter"

    .line 37
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 45
    :pswitch_2
    const-string v1, "com.inmobi.androidsdk.impl.InMobiAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    const-string v1, "com.admogo.adapters.InMobiAdapter"

    .line 46
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 54
    :pswitch_3
    const-string v1, "com.millennialmedia.android.MMAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    const-string v1, "com.admogo.adapters.MillennialAdapter"

    .line 55
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 63
    :pswitch_4
    const-string v1, "com.zestadz.android.ZestADZAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 65
    const-string v1, "com.admogo.adapters.ZestAdzAdapter"

    .line 64
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_3
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 72
    :pswitch_5
    const-string v1, "com.greystripe.android.sdk.BannerView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 74
    const-string v1, "com.admogo.adapters.GreystripeAdapter"

    .line 73
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_4
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 81
    :pswitch_6
    const-string v1, "com.admogo.adapters.MdotMAdapter"

    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 85
    :pswitch_7
    new-instance v1, Lcom/admogo/adapters/CustomAdapter;

    invoke-direct {v1, p0, p1}, Lcom/admogo/adapters/CustomAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 209
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :pswitch_8
    :try_start_1
    const-string v1, "com.wiyun.ad.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 90
    const-string v1, "com.admogo.adapters.WiyunAdapter"

    .line 89
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 93
    :cond_5
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 98
    :pswitch_9
    const-string v1, "net.youmi.android.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 100
    const-string v1, "com.admogo.adapters.YoumiAdapter"

    .line 99
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 103
    :cond_6
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 107
    :pswitch_a
    const-string v1, "com.wooboo.adlib_android.WoobooAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 109
    const-string v1, "com.admogo.adapters.WoobooAdapter"

    .line 108
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 112
    :cond_7
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 116
    :pswitch_b
    const-string v1, "com.adchina.android.ads.views.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 118
    const-string v1, "com.admogo.adapters.AdChinaAdapter"

    .line 117
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 121
    :cond_8
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 125
    :pswitch_c
    const-string v1, "com.madhouse.android.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 127
    const-string v1, "com.admogo.adapters.SmartMADAdapter"

    .line 126
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 130
    :cond_9
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 134
    :pswitch_d
    const-string v1, "com.casee.adsdk.CaseeAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 136
    const-string v1, "com.admogo.adapters.CaseeAdapter"

    .line 135
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 139
    :cond_a
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 143
    :pswitch_e
    new-instance v1, Lcom/admogo/adapters/MogoAdapter;

    invoke-direct {v1, p0, p1}, Lcom/admogo/adapters/MogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 210
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 211
    .local v0, "e":Ljava/lang/VerifyError;
    const-string v1, "AdMogo"

    const-string v2, "Caught VerifyError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 146
    .end local v0    # "e":Ljava/lang/VerifyError;
    :pswitch_f
    :try_start_2
    const-string v1, "com.energysource.szj.embeded.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 148
    const-string v1, "com.admogo.adapters.AdTouchAdapter"

    .line 147
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 151
    :cond_b
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 155
    :pswitch_10
    const-string v1, "cn.domob.android.ads.DomobAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 157
    const-string v1, "com.admogo.adapters.DomobAdapter"

    .line 156
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 160
    :cond_c
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 164
    :pswitch_11
    const-string v1, "com.vpon.adon.android.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 166
    const-string v1, "com.admogo.adapters.VponCNAdapter"

    .line 165
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 169
    :cond_d
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 173
    :pswitch_12
    const-string v1, "com.adwo.adsdk.AdwoAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 174
    const-string v1, "com.admogo.adapters.AdwoAdapter"

    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 177
    :cond_e
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 180
    :pswitch_13
    const-string v1, "com.l.adlib_android.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 182
    const-string v1, "com.admogo.adapters.LSenseAdapter"

    .line 181
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 185
    :cond_f
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 188
    :pswitch_14
    const-string v1, "com.smaato.SOMA.SOMABanner"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 190
    const-string v1, "com.admogo.adapters.SmaatoAdapter"

    .line 189
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 193
    :cond_10
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 197
    :pswitch_15
    const-string v1, "cn.appmedia.ad.BannerAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 199
    const-string v1, "com.admogo.adapters.AppMediaAdapter"

    .line 198
    invoke-static {v1, p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 202
    :cond_11
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto/16 :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private static getNetworkAdapter(Ljava/lang/String;Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;
    .locals 8
    .param p0, "networkAdapter"    # Ljava/lang/String;
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 223
    .local v1, "adMogoAdapter":Lcom/admogo/adapters/AdMogoAdapter;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 225
    .local v2, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/admogo/adapters/AdMogoAdapter;>;"
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Class;

    .line 226
    .local v5, "parameterTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Lcom/admogo/AdMogoLayout;

    aput-object v7, v5, v6

    .line 227
    const/4 v6, 0x1

    const-class v7, Lcom/admogo/obj/Ration;

    aput-object v7, v5, v6

    .line 229
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 230
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/admogo/adapters/AdMogoAdapter;>;"
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .line 231
    .local v3, "args":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v3, v6

    .line 232
    const/4 v6, 0x1

    aput-object p2, v3, v6

    .line 233
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/admogo/adapters/AdMogoAdapter;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v2    # "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/admogo/adapters/AdMogoAdapter;>;"
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/admogo/adapters/AdMogoAdapter;>;"
    .end local v5    # "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 240
    :catch_0
    move-exception v6

    goto :goto_0

    .line 239
    :catch_1
    move-exception v6

    goto :goto_0

    .line 238
    :catch_2
    move-exception v6

    goto :goto_0

    .line 237
    :catch_3
    move-exception v6

    goto :goto_0

    .line 236
    :catch_4
    move-exception v6

    goto :goto_0

    .line 235
    :catch_5
    move-exception v6

    goto :goto_0
.end method

.method public static handle(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 2
    .param p0, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p1, "ration"    # Lcom/admogo/obj/Ration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lcom/admogo/adapters/AdMogoAdapter;->adapter:Lcom/admogo/adapters/AdMogoAdapter;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/admogo/adapters/AdMogoAdapter;->adapter:Lcom/admogo/adapters/AdMogoAdapter;

    invoke-virtual {v0}, Lcom/admogo/adapters/AdMogoAdapter;->finish()V

    .line 257
    :cond_0
    invoke-static {p0, p1}, Lcom/admogo/adapters/AdMogoAdapter;->getAdapter(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;

    move-result-object v0

    sput-object v0, Lcom/admogo/adapters/AdMogoAdapter;->adapter:Lcom/admogo/adapters/AdMogoAdapter;

    .line 258
    sget-object v0, Lcom/admogo/adapters/AdMogoAdapter;->adapter:Lcom/admogo/adapters/AdMogoAdapter;

    if-eqz v0, :cond_1

    .line 259
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Valid adapter, calling handle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v0, Lcom/admogo/adapters/AdMogoAdapter;->adapter:Lcom/admogo/adapters/AdMogoAdapter;

    invoke-virtual {v0}, Lcom/admogo/adapters/AdMogoAdapter;->handle()V

    .line 264
    return-void

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid adapter"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unknownAdNetwork(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)Lcom/admogo/adapters/AdMogoAdapter;
    .locals 3
    .param p0, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p1, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 248
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported ration type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/admogo/obj/Ration;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract handle()V
.end method
