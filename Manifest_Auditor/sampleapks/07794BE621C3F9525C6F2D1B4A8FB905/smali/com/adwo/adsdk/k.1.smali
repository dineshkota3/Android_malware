.class final Lcom/adwo/adsdk/k;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/j;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/k;->a:Lcom/adwo/adsdk/j;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/adwo/adsdk/k;->a:Lcom/adwo/adsdk/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;Z)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
