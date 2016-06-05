.class public Lcn/domob/android/ads/DomobAdDataItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMAGE_TYPE:Ljava/lang/String; = "image"

.field public static final TEXT_TYPE:Ljava/lang/String; = "text"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Ljava/lang/String;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/String;

.field private i:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v2, p0, Lcn/domob/android/ads/DomobAdDataItem;->a:Ljava/lang/String;

    .line 23
    const-string v0, "nullad"

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->b:Ljava/lang/String;

    .line 24
    const-string v0, "text"

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->c:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdDataItem;->d:Landroid/graphics/Bitmap;

    .line 26
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdDataItem;->e:Landroid/graphics/Bitmap;

    .line 27
    const-string v0, ""

    iput-object v2, p0, Lcn/domob/android/ads/DomobAdDataItem;->f:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdDataItem;->g:Landroid/graphics/Bitmap;

    .line 29
    const-string v0, ""

    iput-object v2, p0, Lcn/domob/android/ads/DomobAdDataItem;->h:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdDataItem;->i:Lorg/json/JSONObject;

    .line 31
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdDataItem;->d:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method

.method protected final a(Lcn/domob/android/ads/DomobAdEngine;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdDataItem;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdDataItem;->i:Lorg/json/JSONObject;

    .line 169
    return-void
.end method

.method protected final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 159
    :goto_0
    return v0

    .line 149
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->c:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    .line 151
    goto :goto_0

    .line 154
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->c:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    move v0, v2

    .line 156
    goto :goto_0

    .line 159
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final b(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdDataItem;->e:Landroid/graphics/Bitmap;

    .line 104
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdDataItem;->b:Ljava/lang/String;

    .line 67
    return-void
.end method

.method protected final c(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdDataItem;->g:Landroid/graphics/Bitmap;

    .line 129
    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdDataItem;->c:Ljava/lang/String;

    .line 80
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdDataItem;->f:Ljava/lang/String;

    .line 117
    return-void
.end method

.method protected final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdDataItem;->h:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public getAdImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAd_action_icon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAd_icon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAd_identifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAlt_text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isNullAd()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdDataItem;->b:Ljava/lang/String;

    const-string v1, "nullad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
