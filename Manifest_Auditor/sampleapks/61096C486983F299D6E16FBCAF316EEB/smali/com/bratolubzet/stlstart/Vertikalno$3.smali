.class Lcom/bratolubzet/stlstart/Vertikalno$3;
.super Ljava/util/TimerTask;
.source "Vertikalno.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bratolubzet/stlstart/Vertikalno;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bratolubzet/stlstart/Vertikalno;


# direct methods
.method constructor <init>(Lcom/bratolubzet/stlstart/Vertikalno;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bratolubzet/stlstart/Vertikalno$3;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    .line 352
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno$3;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # invokes: Lcom/bratolubzet/stlstart/Vertikalno;->TimerMethod()V
    invoke-static {v0}, Lcom/bratolubzet/stlstart/Vertikalno;->access$17(Lcom/bratolubzet/stlstart/Vertikalno;)V

    .line 356
    return-void
.end method
