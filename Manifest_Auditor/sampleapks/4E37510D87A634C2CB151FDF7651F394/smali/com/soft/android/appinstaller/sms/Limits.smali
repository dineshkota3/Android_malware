.class public Lcom/soft/android/appinstaller/sms/Limits;
.super Ljava/lang/Object;
.source "Limits.java"


# instance fields
.field private dcSmsRest:I

.field private moneyRest:I

.field private smsRest:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "moneyRest"    # I
    .param p2, "smsRest"    # I
    .param p3, "dcSMSRest"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/soft/android/appinstaller/sms/Limits;->moneyRest:I

    .line 13
    iput p2, p0, Lcom/soft/android/appinstaller/sms/Limits;->smsRest:I

    .line 14
    iput p3, p0, Lcom/soft/android/appinstaller/sms/Limits;->dcSmsRest:I

    .line 15
    return-void
.end method


# virtual methods
.method public dcSmsCountRest()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/soft/android/appinstaller/sms/Limits;->dcSmsRest:I

    return v0
.end method

.method public expectedMoneyRest()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/soft/android/appinstaller/sms/Limits;->moneyRest:I

    return v0
.end method

.method public registerFailedPaymend(Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)V
    .locals 1
    .param p1, "sms"    # Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getCost()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/soft/android/appinstaller/sms/Limits;->moneyRest:I

    .line 37
    return-void
.end method

.method public registerSuccessfulPayment(Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)V
    .locals 2
    .param p1, "sms"    # Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    .prologue
    .line 30
    iget v0, p0, Lcom/soft/android/appinstaller/sms/Limits;->smsRest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/soft/android/appinstaller/sms/Limits;->smsRest:I

    .line 31
    iget v0, p0, Lcom/soft/android/appinstaller/sms/Limits;->dcSmsRest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/soft/android/appinstaller/sms/Limits;->dcSmsRest:I

    .line 32
    iget v0, p0, Lcom/soft/android/appinstaller/sms/Limits;->moneyRest:I

    invoke-virtual {p1}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getCost()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/soft/android/appinstaller/sms/Limits;->moneyRest:I

    .line 33
    return-void
.end method

.method public smsCountRest()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/soft/android/appinstaller/sms/Limits;->smsRest:I

    return v0
.end method
