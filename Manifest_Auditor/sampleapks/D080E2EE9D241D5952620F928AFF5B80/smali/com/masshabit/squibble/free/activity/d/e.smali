.class public final Lcom/masshabit/squibble/free/activity/d/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:[Lcom/masshabit/squibble/free/activity/d/b;

.field private c:Lcom/masshabit/squibble/free/activity/d/d;

.field private d:Lcom/masshabit/squibble/free/activity/d/d;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;Lcom/masshabit/squibble/free/activity/d/d;Lcom/masshabit/squibble/free/activity/d/d;[Lcom/masshabit/squibble/free/activity/d/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->b:[Lcom/masshabit/squibble/free/activity/d/b;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->c:Lcom/masshabit/squibble/free/activity/d/d;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->d:Lcom/masshabit/squibble/free/activity/d/d;

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/d/e;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcom/masshabit/squibble/free/activity/d/e;->b:[Lcom/masshabit/squibble/free/activity/d/b;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->c:Lcom/masshabit/squibble/free/activity/d/d;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->d:Lcom/masshabit/squibble/free/activity/d/d;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/masshabit/squibble/free/activity/d/a;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->b:[Lcom/masshabit/squibble/free/activity/d/b;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/d/e;->b:[Lcom/masshabit/squibble/free/activity/d/b;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/d/e;->b:[Lcom/masshabit/squibble/free/activity/d/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/masshabit/squibble/free/activity/d/b;->b()Lcom/masshabit/squibble/free/activity/d/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/masshabit/squibble/free/activity/d/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/d/e;->b:[Lcom/masshabit/squibble/free/activity/d/b;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/d/b;->a()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->d:Lcom/masshabit/squibble/free/activity/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->d:Lcom/masshabit/squibble/free/activity/d/d;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/d/d;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->c:Lcom/masshabit/squibble/free/activity/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->c:Lcom/masshabit/squibble/free/activity/d/d;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/d/d;->a()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/e;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
