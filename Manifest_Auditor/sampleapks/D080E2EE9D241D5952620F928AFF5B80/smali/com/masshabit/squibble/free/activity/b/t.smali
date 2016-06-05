.class public final Lcom/masshabit/squibble/free/activity/b/t;
.super Lcom/masshabit/squibble/free/activity/b/a;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/t;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/t;->a:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/t;->b:[Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/t;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/t;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/b/t;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/b/t;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/masshabit/squibble/free/activity/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
