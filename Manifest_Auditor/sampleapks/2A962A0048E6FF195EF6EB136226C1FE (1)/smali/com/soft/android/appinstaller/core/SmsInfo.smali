.class public Lcom/soft/android/appinstaller/core/SmsInfo;
.super Ljava/lang/Object;
.source "SmsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soft/android/appinstaller/core/SmsInfo$SMS;
    }
.end annotation


# static fields
.field private static tag:Ljava/lang/String;


# instance fields
.field private alertResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private alerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private confirmableSMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soft/android/appinstaller/core/SmsInfo$SMS;",
            ">;"
        }
    .end annotation
.end field

.field private dcSmsCount:I

.field private smsCount:I

.field private sumLimit:I

.field private unconfirmableSMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soft/android/appinstaller/core/SmsInfo$SMS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "SmsInfo"

    sput-object v0, Lcom/soft/android/appinstaller/core/SmsInfo;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/soft/android/appinstaller/core/SmsInfo;->tag:Ljava/lang/String;

    const-string v1, "SmsInfo() C-tor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->confirmableSMS:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->unconfirmableSMS:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->alerts:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->alertResults:Ljava/util/List;

    .line 71
    return-void
.end method


# virtual methods
.method public addAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "alert"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lcom/soft/android/appinstaller/core/SmsInfo;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD ALERT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->alerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->alertResults:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public addSms(Lcom/soft/android/appinstaller/core/SmsInfo$SMS;Z)V
    .locals 3
    .param p1, "sms"    # Lcom/soft/android/appinstaller/core/SmsInfo$SMS;
    .param p2, "isConfirmable"    # Z

    .prologue
    .line 126
    sget-object v0, Lcom/soft/android/appinstaller/core/SmsInfo;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD SMS number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isConfirmable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz p2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->confirmableSMS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->unconfirmableSMS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSms(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "cost"    # I
    .param p4, "isConfirmable"    # Z

    .prologue
    .line 118
    new-instance v0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    invoke-direct {v0}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;-><init>()V

    .line 119
    .local v0, "sms":Lcom/soft/android/appinstaller/core/SmsInfo$SMS;
    invoke-virtual {v0, p1}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->setNumber(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p2}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->setData(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p3}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->setCost(I)V

    .line 122
    invoke-virtual {p0, v0, p4}, Lcom/soft/android/appinstaller/core/SmsInfo;->addSms(Lcom/soft/android/appinstaller/core/SmsInfo$SMS;Z)V

    .line 123
    return-void
.end method

.method public getAlert(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->alerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAlertResult(I)Ljava/lang/Boolean;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->alertResults:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAlertsCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->alerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConfirmableSMS(I)Lcom/soft/android/appinstaller/core/SmsInfo$SMS;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->confirmableSMS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    return-object v0
.end method

.method public getConfirmableSmsCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->confirmableSMS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDcSmsCount()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->dcSmsCount:I

    return v0
.end method

.method public getSmsCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->smsCount:I

    return v0
.end method

.method public getSumLimit()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->sumLimit:I

    return v0
.end method

.method public getUnconfirmableSMS(I)Lcom/soft/android/appinstaller/core/SmsInfo$SMS;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->unconfirmableSMS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    return-object v0
.end method

.method public getUnconfirmableSmsCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->unconfirmableSMS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setAlertResult(IZ)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "ans"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->alertResults:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public setDcSmsCount(I)V
    .locals 3
    .param p1, "dcSmsCount"    # I

    .prologue
    .line 150
    sget-object v0, Lcom/soft/android/appinstaller/core/SmsInfo;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET DcSmsCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput p1, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->dcSmsCount:I

    .line 152
    return-void
.end method

.method public setSmsCount(I)V
    .locals 3
    .param p1, "smsCount"    # I

    .prologue
    .line 141
    sget-object v0, Lcom/soft/android/appinstaller/core/SmsInfo;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET SmsCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput p1, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->smsCount:I

    .line 143
    return-void
.end method

.method public setSumLimit(I)V
    .locals 3
    .param p1, "sumLimit"    # I

    .prologue
    .line 159
    sget-object v0, Lcom/soft/android/appinstaller/core/SmsInfo;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET SumLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput p1, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->sumLimit:I

    .line 161
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/soft/android/appinstaller/core/SmsInfo;->tag:Ljava/lang/String;

    const-string v1, "Sorting SMS..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->confirmableSMS:Ljava/util/List;

    new-instance v1, Lcom/soft/android/appinstaller/core/SMSComparator;

    invoke-direct {v1}, Lcom/soft/android/appinstaller/core/SMSComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    iget-object v0, p0, Lcom/soft/android/appinstaller/core/SmsInfo;->unconfirmableSMS:Ljava/util/List;

    new-instance v1, Lcom/soft/android/appinstaller/core/SMSComparator;

    invoke-direct {v1}, Lcom/soft/android/appinstaller/core/SMSComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    return-void
.end method
