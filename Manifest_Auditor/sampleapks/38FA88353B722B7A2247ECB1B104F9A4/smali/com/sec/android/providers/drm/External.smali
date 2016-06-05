.class Lcom/sec/android/providers/drm/External;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/sec/android/providers/drm/Onion;


# direct methods
.method constructor <init>(Lcom/sec/android/providers/drm/Onion;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/providers/drm/External;->a:Lcom/sec/android/providers/drm/Onion;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, 0xb

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v0

    const-string v1, "11pt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/providers/drm/External;->a:Lcom/sec/android/providers/drm/Onion;

    invoke-static {v1, v0}, Lcom/sec/android/providers/drm/Onion;->a(Lcom/sec/android/providers/drm/Onion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/providers/drm/Xhtml;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
