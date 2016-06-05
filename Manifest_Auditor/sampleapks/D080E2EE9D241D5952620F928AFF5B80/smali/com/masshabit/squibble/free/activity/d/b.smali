.class public Lcom/masshabit/squibble/free/activity/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/masshabit/squibble/free/activity/d/a;

.field private b:Lcom/masshabit/squibble/free/activity/d/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/masshabit/squibble/free/activity/d/a;Lcom/masshabit/squibble/free/activity/d/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/b;->a:Lcom/masshabit/squibble/free/activity/d/a;

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/d/b;->a:Lcom/masshabit/squibble/free/activity/d/a;

    iput-object p2, p0, Lcom/masshabit/squibble/free/activity/d/b;->b:Lcom/masshabit/squibble/free/activity/d/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/b;->b:Lcom/masshabit/squibble/free/activity/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/b;->b:Lcom/masshabit/squibble/free/activity/d/d;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/d/d;->a()V

    :cond_0
    return-void
.end method

.method public final b()Lcom/masshabit/squibble/free/activity/d/a;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/b;->a:Lcom/masshabit/squibble/free/activity/d/a;

    return-object v0
.end method
