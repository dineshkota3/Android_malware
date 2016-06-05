.class public Ljp/bravo/honda/DobraKorzina$UITimer;
.super Ljava/lang/Object;
.source "DobraKorzina.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/bravo/honda/DobraKorzina;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UITimer"
.end annotation


# instance fields
.field private enabled:Z

.field private handler:Landroid/os/Handler;

.field private intervalMs:I

.field private oneTime:Z

.field private runMethod:Ljava/lang/Runnable;

.field final synthetic this$0:Ljp/bravo/honda/DobraKorzina;

.field private timer_tick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljp/bravo/honda/DobraKorzina;Landroid/os/Handler;Ljava/lang/Runnable;I)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "runMethod"    # Ljava/lang/Runnable;
    .param p4, "intervalMs"    # I

    .prologue
    const/4 v0, 0x0

    .line 157
    iput-object p1, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->this$0:Ljp/bravo/honda/DobraKorzina;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-boolean v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->enabled:Z

    .line 154
    iput-boolean v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->oneTime:Z

    .line 199
    new-instance v0, Ljp/bravo/honda/DobraKorzina$UITimer$1;

    invoke-direct {v0, p0}, Ljp/bravo/honda/DobraKorzina$UITimer$1;-><init>(Ljp/bravo/honda/DobraKorzina$UITimer;)V

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->timer_tick:Ljava/lang/Runnable;

    .line 158
    iput-object p2, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->handler:Landroid/os/Handler;

    .line 159
    iput-object p3, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->runMethod:Ljava/lang/Runnable;

    .line 160
    iput p4, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->intervalMs:I

    .line 161
    return-void
.end method

.method public constructor <init>(Ljp/bravo/honda/DobraKorzina;Landroid/os/Handler;Ljava/lang/Runnable;IZ)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "runMethod"    # Ljava/lang/Runnable;
    .param p4, "intervalMs"    # I
    .param p5, "oneTime"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Ljp/bravo/honda/DobraKorzina$UITimer;-><init>(Ljp/bravo/honda/DobraKorzina;Landroid/os/Handler;Ljava/lang/Runnable;I)V

    .line 166
    iput-boolean p5, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->oneTime:Z

    .line 167
    return-void
.end method

.method static synthetic access$0(Ljp/bravo/honda/DobraKorzina$UITimer;)Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->enabled:Z

    return v0
.end method

.method static synthetic access$1(Ljp/bravo/honda/DobraKorzina$UITimer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Ljp/bravo/honda/DobraKorzina$UITimer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->runMethod:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Ljp/bravo/honda/DobraKorzina$UITimer;)Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->oneTime:Z

    return v0
.end method

.method static synthetic access$4(Ljp/bravo/honda/DobraKorzina$UITimer;Z)V
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->enabled:Z

    return-void
.end method

.method static synthetic access$5(Ljp/bravo/honda/DobraKorzina$UITimer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->timer_tick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Ljp/bravo/honda/DobraKorzina$UITimer;)I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->intervalMs:I

    return v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->enabled:Z

    return v0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-boolean v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->enabled:Z

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->intervalMs:I

    if-lt v0, v1, :cond_0

    .line 180
    iput-boolean v1, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->enabled:Z

    .line 181
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->timer_tick:Ljava/lang/Runnable;

    iget v2, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->intervalMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->enabled:Z

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->enabled:Z

    .line 190
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->runMethod:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/bravo/honda/DobraKorzina$UITimer;->timer_tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
