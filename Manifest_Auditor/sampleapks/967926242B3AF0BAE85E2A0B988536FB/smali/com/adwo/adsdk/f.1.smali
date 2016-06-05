.class final Lcom/adwo/adsdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:B

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field i:Lcom/adwo/adsdk/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/adwo/adsdk/f;->b:I

    .line 35
    iput-object v1, p0, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/adwo/adsdk/f;->d:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/adwo/adsdk/f;->h:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static a(Landroid/content/Context;[B)Lcom/adwo/adsdk/f;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-static {p1}, Lcom/adwo/adsdk/L;->a([B)Lcom/adwo/adsdk/f;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    iput-object p0, v0, Lcom/adwo/adsdk/f;->a:Landroid/content/Context;

    .line 61
    iget-object v1, v0, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 74
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-object v1, v0, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, v0, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    const-string v1, "Adwo SDK"

    const-string v2, "Get an ad from Adwo servers."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 72
    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adwo/adsdk/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/adwo/adsdk/g;

    invoke-direct {v0, p0}, Lcom/adwo/adsdk/g;-><init>(Lcom/adwo/adsdk/f;)V

    .line 367
    invoke-virtual {v0}, Lcom/adwo/adsdk/g;->start()V

    .line 370
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 407
    instance-of v0, p1, Lcom/adwo/adsdk/f;

    if-eqz v0, :cond_3

    .line 408
    check-cast p1, Lcom/adwo/adsdk/f;

    .line 417
    iget-object v0, p0, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 427
    :goto_0
    return v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 420
    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/adwo/adsdk/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/adwo/adsdk/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adwo/adsdk/f;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/adwo/adsdk/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 422
    goto :goto_0

    :cond_2
    move v0, v3

    .line 425
    goto :goto_0

    :cond_3
    move v0, v3

    .line 427
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/adwo/adsdk/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;

    .line 402
    return-object v0
.end method
