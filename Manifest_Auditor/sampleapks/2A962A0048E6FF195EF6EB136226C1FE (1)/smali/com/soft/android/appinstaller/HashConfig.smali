.class public Lcom/soft/android/appinstaller/HashConfig;
.super Ljava/lang/Object;
.source "HashConfig.java"


# instance fields
.field private config:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/soft/android/appinstaller/HashConfig;->config:Ljava/util/HashMap;

    return-void
.end method

.method private parseConfigLine(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 10
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 12
    :cond_1
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 13
    .local v0, "div":I
    if-lez v0, :cond_0

    .line 16
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/soft/android/appinstaller/HashConfig;->config:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soft/android/appinstaller/HashConfig;->config:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/soft/android/appinstaller/HashConfig;->config:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/soft/android/appinstaller/HashConfig;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 64
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 24
    iget-object v3, p0, Lcom/soft/android/appinstaller/HashConfig;->config:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 25
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/soft/android/appinstaller/HashConfig;->config:Ljava/util/HashMap;

    .line 28
    :goto_0
    const/4 v1, 0x0

    .line 29
    .local v1, "div":I
    const/4 v0, 0x0

    .line 30
    .local v0, "dip":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 31
    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 42
    :cond_0
    return-void

    .line 27
    .end local v0    # "dip":I
    .end local v1    # "div":I
    :cond_1
    iget-object v3, p0, Lcom/soft/android/appinstaller/HashConfig;->config:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 35
    .restart local v0    # "dip":I
    .restart local v1    # "div":I
    :cond_2
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 36
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 38
    invoke-direct {p0, v2}, Lcom/soft/android/appinstaller/HashConfig;->parseConfigLine(Ljava/lang/String;)V

    .line 40
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .line 41
    goto :goto_1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/soft/android/appinstaller/HashConfig;->config:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/soft/android/appinstaller/HashConfig;->config:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/soft/android/appinstaller/HashConfig;->config:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
