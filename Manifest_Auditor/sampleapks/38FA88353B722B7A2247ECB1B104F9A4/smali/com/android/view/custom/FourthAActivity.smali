.class public Lcom/android/view/custom/FourthAActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Lcom/sec/android/providers/drm/Fibre;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static onDestroy(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Fibre;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Fibre;-><init>()V

    sput-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    :cond_0
    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/providers/drm/Fibre;->d(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static onKeyDown(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 6

    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Fibre;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Fibre;-><init>()V

    sput-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    :cond_0
    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/providers/drm/Fibre;->e(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public static onPause(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Fibre;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Fibre;-><init>()V

    sput-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    :cond_0
    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/providers/drm/Fibre;->b(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static onStart(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Fibre;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Fibre;-><init>()V

    sput-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    :cond_0
    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/providers/drm/Fibre;->a(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static onStartMe(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Fibre;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Fibre;-><init>()V

    sput-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    :cond_0
    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    const-class v5, Lcom/android/view/custom/ThirdAActivity;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/providers/drm/Fibre;->a(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Class;I)V

    return-void
.end method

.method public static onStop(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/providers/drm/Fibre;

    invoke-direct {v0}, Lcom/sec/android/providers/drm/Fibre;-><init>()V

    sput-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    :cond_0
    sget-object v0, Lcom/android/view/custom/FourthAActivity;->a:Lcom/sec/android/providers/drm/Fibre;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/providers/drm/Fibre;->c(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p0, v1, v1, v0}, Lcom/android/view/custom/FourthAActivity;->onStart(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p0, v1, v1, v0}, Lcom/android/view/custom/FourthAActivity;->onDestroy(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p0, v1, v1, v0}, Lcom/android/view/custom/FourthAActivity;->onKeyDown(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p0, v1, v1, v0}, Lcom/android/view/custom/FourthAActivity;->onPause(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p0, v1, v1, v0}, Lcom/android/view/custom/FourthAActivity;->onStop(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
