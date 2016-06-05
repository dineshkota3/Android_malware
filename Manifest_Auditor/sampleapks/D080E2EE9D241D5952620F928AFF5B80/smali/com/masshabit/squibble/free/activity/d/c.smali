.class public Lcom/masshabit/squibble/free/activity/d/c;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/masshabit/squibble/free/activity/d/e;

.field private b:Lcom/masshabit/squibble/free/activity/d/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/masshabit/squibble/free/activity/d/e;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->a:[Lcom/masshabit/squibble/free/activity/d/e;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/d/c;->a:[Lcom/masshabit/squibble/free/activity/d/e;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->a:[Lcom/masshabit/squibble/free/activity/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->a:[Lcom/masshabit/squibble/free/activity/d/e;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->a:[Lcom/masshabit/squibble/free/activity/d/e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/masshabit/squibble/free/activity/d/e;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    return-object v0
.end method

.method public final a(Lcom/masshabit/squibble/free/activity/d/e;)V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/d/e;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/d/e;->b()V

    :cond_0
    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/d/e;->c()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/masshabit/squibble/free/activity/d/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->b:Lcom/masshabit/squibble/free/activity/d/e;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/free/activity/d/e;->a(Lcom/masshabit/squibble/free/activity/d/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()[Lcom/masshabit/squibble/free/activity/d/e;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/c;->a:[Lcom/masshabit/squibble/free/activity/d/e;

    return-object v0
.end method
