.class final Lcom/masshabit/squibble/free/activity/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/masshabit/squibble/free/activity/e/m;


# instance fields
.field private a:Lcom/masshabit/squibble/free/activity/c;

.field private synthetic b:Lcom/masshabit/squibble/free/activity/g;


# direct methods
.method public constructor <init>(Lcom/masshabit/squibble/free/activity/g;Lcom/masshabit/squibble/free/activity/Pushable;)V
    .locals 1

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/p;->b:Lcom/masshabit/squibble/free/activity/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/p;->a:Lcom/masshabit/squibble/free/activity/c;

    check-cast p2, Lcom/masshabit/squibble/free/activity/c;

    iput-object p2, p0, Lcom/masshabit/squibble/free/activity/p;->a:Lcom/masshabit/squibble/free/activity/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/p;->b:Lcom/masshabit/squibble/free/activity/g;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/p;->a:Lcom/masshabit/squibble/free/activity/c;

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/g;Lcom/masshabit/squibble/free/activity/c;)V

    return-void
.end method
