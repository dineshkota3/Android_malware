.class Lcom/keji/danti/a/st;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ar;


# direct methods
.method private constructor <init>(Lcom/keji/danti/a/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/st;->a:Lcom/keji/danti/a/ar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keji/danti/a/ar;Lcom/keji/danti/a/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/keji/danti/a/st;-><init>(Lcom/keji/danti/a/ar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/keji/danti/a/st;->a:Lcom/keji/danti/a/ar;

    invoke-static {v0}, Lcom/keji/danti/a/ar;->d(Lcom/keji/danti/a/ar;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
