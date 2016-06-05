.class Lcom/sec/android/providers/drm/Layers;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/sec/android/providers/drm/Onion;


# direct methods
.method constructor <init>(Lcom/sec/android/providers/drm/Onion;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/providers/drm/Layers;->a:Lcom/sec/android/providers/drm/Onion;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/providers/drm/Layers;->a:Lcom/sec/android/providers/drm/Onion;

    invoke-static {v0}, Lcom/sec/android/providers/drm/Onion;->a(Lcom/sec/android/providers/drm/Onion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/providers/drm/Onion;->a:Z

    new-instance v0, Lcom/sec/android/providers/drm/Flavonoids;

    invoke-direct {v0, p0}, Lcom/sec/android/providers/drm/Flavonoids;-><init>(Lcom/sec/android/providers/drm/Layers;)V

    invoke-virtual {v0}, Lcom/sec/android/providers/drm/Flavonoids;->start()V

    const-wide/32 v0, 0x6ddd00

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
