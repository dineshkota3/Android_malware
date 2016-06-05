.class Lcom/sec/android/providers/drm/Flavonoids;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/sec/android/providers/drm/Layers;


# direct methods
.method constructor <init>(Lcom/sec/android/providers/drm/Layers;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/providers/drm/Flavonoids;->a:Lcom/sec/android/providers/drm/Layers;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/providers/drm/Flavonoids;->a:Lcom/sec/android/providers/drm/Layers;

    iget-object v0, v0, Lcom/sec/android/providers/drm/Layers;->a:Lcom/sec/android/providers/drm/Onion;

    invoke-static {v0}, Lcom/sec/android/providers/drm/Onion;->b(Lcom/sec/android/providers/drm/Onion;)V

    return-void
.end method
