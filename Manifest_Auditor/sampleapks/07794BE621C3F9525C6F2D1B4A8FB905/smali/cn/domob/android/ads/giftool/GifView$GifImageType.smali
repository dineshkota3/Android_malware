.class public final enum Lcn/domob/android/ads/giftool/GifView$GifImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/giftool/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GifImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/giftool/GifView$GifImageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COVER:Lcn/domob/android/ads/giftool/GifView$GifImageType;

.field public static final enum SYNC_DECODER:Lcn/domob/android/ads/giftool/GifView$GifImageType;

.field public static final enum WAIT_FINISH:Lcn/domob/android/ads/giftool/GifView$GifImageType;

.field private static final synthetic a:[Lcn/domob/android/ads/giftool/GifView$GifImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;

    const-string v1, "WAIT_FINISH"

    invoke-direct {v0, v1, v2, v2}, Lcn/domob/android/ads/giftool/GifView$GifImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;->WAIT_FINISH:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    .line 55
    new-instance v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;

    const-string v1, "SYNC_DECODER"

    invoke-direct {v0, v1, v3, v3}, Lcn/domob/android/ads/giftool/GifView$GifImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;->SYNC_DECODER:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    .line 59
    new-instance v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;

    const-string v1, "COVER"

    invoke-direct {v0, v1, v4, v4}, Lcn/domob/android/ads/giftool/GifView$GifImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;->COVER:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/domob/android/ads/giftool/GifView$GifImageType;

    sget-object v1, Lcn/domob/android/ads/giftool/GifView$GifImageType;->WAIT_FINISH:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/android/ads/giftool/GifView$GifImageType;->SYNC_DECODER:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/android/ads/giftool/GifView$GifImageType;->COVER:Lcn/domob/android/ads/giftool/GifView$GifImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;->a:[Lcn/domob/android/ads/giftool/GifView$GifImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/giftool/GifView$GifImageType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/domob/android/ads/giftool/GifView$GifImageType;

    return-object p0
.end method

.method public static values()[Lcn/domob/android/ads/giftool/GifView$GifImageType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcn/domob/android/ads/giftool/GifView$GifImageType;->a:[Lcn/domob/android/ads/giftool/GifView$GifImageType;

    array-length v1, v0

    new-array v2, v1, [Lcn/domob/android/ads/giftool/GifView$GifImageType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
