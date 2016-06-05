.class final Lcom/masshabit/squibble/free/activity/e/g;
.super Ljava/util/TimerTask;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/d;->a([D)Z

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-static {v1, v2, v3, v4}, Lcom/masshabit/squibble/free/activity/e/d;->a(DD)V

    :cond_0
    return-void
.end method
