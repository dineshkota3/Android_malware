.class public Lcom/masshabit/squibble/free/activity/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/b;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
