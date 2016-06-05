.class public Lcom/masshabit/squibble/free/activity/d/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/d;->a:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/d;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/d/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/masshabit/squibble/free/activity/d/d;->c:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/d/d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/d/d;->a:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/d;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/d;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/d;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/d/d;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/d/d;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
