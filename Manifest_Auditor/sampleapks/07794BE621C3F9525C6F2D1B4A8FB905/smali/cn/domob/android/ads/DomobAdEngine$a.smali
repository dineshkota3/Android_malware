.class Lcn/domob/android/ads/DomobAdEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;)V
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcn/domob/android/ads/DomobAdEngine;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/d;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 40
    const/16 v5, 0x7530

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;ILjava/lang/String;)Lcn/domob/android/ads/d;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/d;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0, p2, p3, v0}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;)Lcn/domob/android/ads/d;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;)Lcn/domob/android/ads/d;
    .locals 7

    .prologue
    .line 21
    const/16 v5, 0x7530

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;ILjava/lang/String;)Lcn/domob/android/ads/d;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;ILjava/lang/String;)Lcn/domob/android/ads/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/a;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcn/domob/android/ads/d;"
        }
    .end annotation

    .prologue
    .line 10
    new-instance v0, Lcn/domob/android/ads/q;

    const/16 v6, 0x7530

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;ILjava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;Ljava/lang/String;)Lcn/domob/android/ads/d;
    .locals 7

    .prologue
    .line 15
    const/16 v5, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;ILjava/lang/String;)Lcn/domob/android/ads/d;

    move-result-object v0

    .line 16
    return-object v0
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/d;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
