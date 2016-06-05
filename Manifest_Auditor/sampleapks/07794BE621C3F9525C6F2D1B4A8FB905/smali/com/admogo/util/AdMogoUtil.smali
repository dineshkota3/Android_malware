.class public Lcom/admogo/util/AdMogoUtil;
.super Landroid/app/Activity;
.source "AdMogoUtil.java"


# static fields
.field public static final ADMOGO:Ljava/lang/String; = "AdsMOGO SDK"

.field public static final CUSTOM_TYPE_BANNER:I = 0x1

.field public static final CUSTOM_TYPE_ICON:I = 0x2

.field public static final MOGO_TYPE_BANNER:I = 0x1

.field public static final MOGO_TYPE_ICON:I = 0x2

.field public static final NETWORK_TYPE_4THSCREEN:I = 0xd

.field public static final NETWORK_TYPE_ADCHINA:I = 0x15

.field public static final NETWORK_TYPE_ADMOB:I = 0x1

.field public static final NETWORK_TYPE_ADMOGO:I = 0xa

.field public static final NETWORK_TYPE_ADSENSE:I = 0xe

.field public static final NETWORK_TYPE_ADTOUCH:I = 0x1c

.field public static final NETWORK_TYPE_ADWO:I = 0x21

.field public static final NETWORK_TYPE_AIRAD:I = 0x20

.field public static final NETWORK_TYPE_APPMEDIA:I = 0x24

.field public static final NETWORK_TYPE_CASEE:I = 0x19

.field public static final NETWORK_TYPE_CUSTOM:I = 0x9

.field public static final NETWORK_TYPE_DOMOB:I = 0x1d

.field public static final NETWORK_TYPE_DOUBLECLICK:I = 0xf

.field public static final NETWORK_TYPE_EVENT:I = 0x11

.field public static final NETWORK_TYPE_GENERIC:I = 0x10

.field public static final NETWORK_TYPE_GREYSTRIP:I = 0x7

.field public static final NETWORK_TYPE_INMOBI:I = 0x12

.field public static final NETWORK_TYPE_JUMPTAP:I = 0x2

.field public static final NETWORK_TYPE_LIVERAIL:I = 0x5

.field public static final NETWORK_TYPE_LSENSE:I = 0x22

.field public static final NETWORK_TYPE_MDOTM:I = 0xc

.field public static final NETWORK_TYPE_MEDIALETS:I = 0x4

.field public static final NETWORK_TYPE_MILLENNIAL:I = 0x6

.field public static final NETWORK_TYPE_MOBCLIX:I = 0xb

.field public static final NETWORK_TYPE_MOGO:I = 0x1b

.field public static final NETWORK_TYPE_QUATTRO:I = 0x8

.field public static final NETWORK_TYPE_SMAATO:I = 0x23

.field public static final NETWORK_TYPE_SMART:I = 0x1a

.field public static final NETWORK_TYPE_VIDEOEGG:I = 0x3

.field public static final NETWORK_TYPE_VPON:I = 0x1e

.field public static final NETWORK_TYPE_WIYUN:I = 0x16

.field public static final NETWORK_TYPE_WOOBOO:I = 0x17

.field public static final NETWORK_TYPE_YOUMI:I = 0x18

.field public static final NETWORK_TYPE_ZESTADZ:I = 0x14

.field public static final VER:Ljava/lang/String; = "1.0.3"

.field public static final VERSION:I = 0x113

.field private static density:D = 0.0

.field public static final urlClick:Ljava/lang/String; = "http://clk.adsmogo.com/exclick.ashx?appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s"

.field public static final urlConfig:Ljava/lang/String; = "http://cfg.adsmogo.com/GetInfo.ashx?appid=%s&appver=%d&v=%s&client=2&pn=%s&userver=%s&adtype=%s&country=%s&nt=%s&mno=%s&uuid=%s&os=%s&dn=%s&size=%s%s&ram=%s"

.field public static final urlCustom:Ljava/lang/String; = "http://cus.adsmogo.com/custom.ashx?appid=%s&nid=%s&uuid=%s&client=2&country=%s"

.field public static final urlImpression:Ljava/lang/String; = "http://imp.adsmogo.com/exmet.ashx?appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s"

.field public static final urlMogo:Ljava/lang/String; = "http://www.adsmogo.com/adserv.php?appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s"

.field public static final urlNull:Ljava/lang/String; = "http://blk.adsmogo.com/blank.ashx?appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s"

.field public static final urlRequest:Ljava/lang/String; = "http://req.adsmogo.com/exrequest.ashx?appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/admogo/util/AdMogoUtil;->density:D

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v0, "buf":Ljava/lang/StringBuffer;
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 83
    :cond_0
    aget-byte v1, p0, v6

    .line 84
    .local v1, "element":B
    ushr-int/lit8 v7, v1, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 85
    .local v2, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 87
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v2, :cond_1

    const/16 v7, 0x9

    if-gt v2, v7, :cond_1

    .line 88
    add-int/lit8 v7, v2, 0x30

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    :goto_2
    and-int/lit8 v2, v1, 0xf

    .line 93
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v7, 0x1

    if-lt v4, v7, :cond_2

    .line 83
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    :cond_1
    const/16 v7, 0xa

    sub-int v7, v2, v7

    add-int/lit8 v7, v7, 0x61

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    :cond_2
    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1
.end method

.method public static convertToScreenPixels(DD)D
    .locals 2
    .param p0, "dipPixels"    # D
    .param p2, "density"    # D

    .prologue
    .line 142
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    mul-double v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p0

    goto :goto_0
.end method

.method public static convertToScreenPixels(ID)I
    .locals 2
    .param p0, "dipPixels"    # I
    .param p1, "density"    # D

    .prologue
    .line 128
    int-to-double v0, p0

    invoke-static {v0, v1, p1, p2}, Lcom/admogo/util/AdMogoUtil;->convertToScreenPixels(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getDensity(Landroid/app/Activity;)D
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    sget-wide v1, Lcom/admogo/util/AdMogoUtil;->density:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 108
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 109
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    sput-wide v1, Lcom/admogo/util/AdMogoUtil;->density:D

    .line 114
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget-wide v1, Lcom/admogo/util/AdMogoUtil;->density:D

    return-wide v1
.end method
