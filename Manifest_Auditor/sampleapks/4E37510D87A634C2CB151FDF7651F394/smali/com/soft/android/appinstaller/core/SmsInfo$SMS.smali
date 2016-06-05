.class public Lcom/soft/android/appinstaller/core/SmsInfo$SMS;
.super Ljava/lang/Object;
.source "SmsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soft/android/appinstaller/core/SmsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMS"
.end annotation


# instance fields
.field private cost:I

.field private data:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->number:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->data:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->cost:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "cost"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->setNumber(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->setData(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p3}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->setCost(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->cost:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setCost(I)V
    .locals 0
    .param p1, "cost"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->cost:I

    .line 34
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->data:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->number:Ljava/lang/String;

    .line 42
    return-void
.end method
