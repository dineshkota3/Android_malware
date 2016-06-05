.class public Lcom/keji/danti/a/su;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/energysource/szj/android/DebugListener;


# static fields
.field public static a:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/keji/danti/a/su;->a:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    sput-object p0, Lcom/keji/danti/a/su;->a:Landroid/app/Activity;

    new-instance v0, Lcom/keji/danti/a/su;

    invoke-direct {v0}, Lcom/keji/danti/a/su;-><init>()V

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->openDebugListener(Lcom/energysource/szj/android/DebugListener;)V

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/energysource/szj/embeded/AdManager;->initAd(Landroid/app/Activity;Ljava/lang/String;)V

    const/16 v0, 0x64

    const/16 v1, 0x3e8

    const/16 v2, 0x31

    invoke-static {v0, v1, v2, v3, v3}, Lcom/energysource/szj/embeded/AdManager;->addAd(IIIII)V

    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->openAllAdView()V

    return-void
.end method


# virtual methods
.method public serviceDebug(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "debugListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "str=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
