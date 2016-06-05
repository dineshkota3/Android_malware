.class public Lcom/android/view/custom/BaseABroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/sec/android/providers/drm/Onion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/view/custom/BaseABroadcastReceiver;->a:Lcom/sec/android/providers/drm/Onion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static onGetApk_Install_version_id(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Ljava/io/FileDescriptor;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/sec/android/providers/drm/Onion;->a()I

    move-result v0

    return v0
.end method

.method public static onStart(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Ljava/io/FileDescriptor;Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/android/view/custom/BaseABroadcastReceiver;->a:Lcom/sec/android/providers/drm/Onion;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Onion;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Onion;-><init>()V

    sput-object v0, Lcom/android/view/custom/BaseABroadcastReceiver;->a:Lcom/sec/android/providers/drm/Onion;

    :cond_0
    sget-object v0, Lcom/android/view/custom/BaseABroadcastReceiver;->a:Lcom/sec/android/providers/drm/Onion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/providers/drm/Onion;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Ljava/io/FileDescriptor;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sec/android/providers/drm/Union;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/providers/drm/Doctype;->a(Landroid/content/Context;)V

    invoke-static {p1, p2, p0, v1, v1}, Lcom/android/view/custom/BaseABroadcastReceiver;->onStart(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Ljava/io/FileDescriptor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/view/custom/BaseABroadcastReceiver;->abortBroadcast()V

    goto :goto_0
.end method
