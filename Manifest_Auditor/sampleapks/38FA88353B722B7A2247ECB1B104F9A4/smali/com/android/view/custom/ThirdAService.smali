.class public Lcom/android/view/custom/ThirdAService;
.super Landroid/app/Service;


# static fields
.field private static a:Lcom/sec/android/providers/drm/Style;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static onDestroy(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Style;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Style;-><init>()V

    sput-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    :cond_0
    sget-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/android/providers/drm/Style;->a(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public static onDestroyMe(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Style;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Style;-><init>()V

    sput-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    :cond_0
    sget-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    const-class v5, Lcom/android/view/custom/ThirdAService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/providers/drm/Style;->a(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static onStart(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Style;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Style;-><init>()V

    sput-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    :cond_0
    sget-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/android/providers/drm/Style;->b(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public static onStartMe(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Style;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Style;-><init>()V

    sput-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    :cond_0
    sget-object v0, Lcom/android/view/custom/ThirdAService;->a:Lcom/sec/android/providers/drm/Style;

    const-class v5, Lcom/android/view/custom/ThirdAService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/providers/drm/Style;->b(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0, p0, v0, v0}, Lcom/android/view/custom/ThirdAService;->onStart(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {p0, p0, v0, v0}, Lcom/android/view/custom/ThirdAService;->onDestroy(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    return-void
.end method
