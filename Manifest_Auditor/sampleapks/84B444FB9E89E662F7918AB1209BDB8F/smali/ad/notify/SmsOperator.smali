.class public Lad/notify/SmsOperator;
.super Ljava/lang/Object;
.source "SmsOperator.java"


# instance fields
.field public codes:Ljava/util/Vector;

.field public id:I

.field public name:Ljava/lang/String;

.field public restriction:Lad/notify/Restriction;

.field public screen:Lad/notify/ScreenItem;

.field public screenId:I

.field public sms:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lad/notify/SmsOperator;->id:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lad/notify/SmsOperator;->name:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lad/notify/SmsOperator;->codes:Ljava/util/Vector;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lad/notify/SmsOperator;->sms:Ljava/util/Vector;

    .line 22
    new-instance v0, Lad/notify/ScreenItem;

    invoke-direct {v0}, Lad/notify/ScreenItem;-><init>()V

    iput-object v0, p0, Lad/notify/SmsOperator;->screen:Lad/notify/ScreenItem;

    .line 23
    new-instance v0, Lad/notify/Restriction;

    invoke-direct {v0}, Lad/notify/Restriction;-><init>()V

    iput-object v0, p0, Lad/notify/SmsOperator;->restriction:Lad/notify/Restriction;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "screenId"    # Ljava/lang/Integer;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lad/notify/SmsOperator;->id:I

    .line 29
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lad/notify/SmsOperator;->screenId:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lad/notify/SmsOperator;->name:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lad/notify/SmsOperator;->codes:Ljava/util/Vector;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lad/notify/SmsOperator;->sms:Ljava/util/Vector;

    .line 33
    return-void
.end method
