.class Lcom/bratolubzet/stlstart/Vertikalno$4;
.super Landroid/content/BroadcastReceiver;
.source "Vertikalno.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bratolubzet/stlstart/Vertikalno;->addSEND7SMS(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/bratolubzet/stlstart/Vertikalno$4;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    .line 569
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x2

    .line 572
    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Vertikalno$4;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 589
    :goto_0
    :pswitch_0
    return-void

    .line 577
    :pswitch_1
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno$4;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {v0, v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$5(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    goto :goto_0

    .line 580
    :pswitch_2
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno$4;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {v0, v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$5(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    goto :goto_0

    .line 583
    :pswitch_3
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno$4;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {v0, v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$5(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    goto :goto_0

    .line 586
    :pswitch_4
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno$4;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {v0, v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$5(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
