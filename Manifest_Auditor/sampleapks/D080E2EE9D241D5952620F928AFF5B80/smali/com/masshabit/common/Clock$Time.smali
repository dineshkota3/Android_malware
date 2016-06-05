.class public Lcom/masshabit/common/Clock$Time;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/common/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Time"
.end annotation


# instance fields
.field public final hours:I

.field public final minutes:I

.field public final seconds:I

.field final synthetic this$0:Lcom/masshabit/common/Clock;


# direct methods
.method protected constructor <init>(Lcom/masshabit/common/Clock;J)V
    .locals 3
    .param p2, "total"    # J

    .prologue
    .line 21
    iput-object p1, p0, Lcom/masshabit/common/Clock$Time;->this$0:Lcom/masshabit/common/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v1, 0x3e8

    div-long v1, p2, v1

    long-to-int v0, v1

    .line 23
    .local v0, "s":I
    rem-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lcom/masshabit/common/Clock$Time;->seconds:I

    .line 24
    div-int/lit8 v0, v0, 0x3c

    .line 25
    rem-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lcom/masshabit/common/Clock$Time;->minutes:I

    .line 26
    div-int/lit8 v0, v0, 0x3c

    .line 27
    iput v0, p0, Lcom/masshabit/common/Clock$Time;->hours:I

    .line 28
    return-void
.end method
