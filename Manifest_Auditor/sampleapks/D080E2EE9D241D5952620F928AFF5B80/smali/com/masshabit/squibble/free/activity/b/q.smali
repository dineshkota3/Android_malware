.class public final Lcom/masshabit/squibble/free/activity/b/q;
.super Lcom/masshabit/squibble/free/activity/b/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/q;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/q;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v3, ";"

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/q;->a:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const-string v2, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/q;->b:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/q;->c:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/q;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/q;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
