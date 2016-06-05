.class Lcom/soft/android/appinstaller/core/SMSComparator;
.super Ljava/lang/Object;
.source "SmsInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/soft/android/appinstaller/core/SmsInfo$SMS;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/soft/android/appinstaller/core/SmsInfo$SMS;Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)I
    .locals 2
    .param p1, "o1"    # Lcom/soft/android/appinstaller/core/SmsInfo$SMS;
    .param p2, "o2"    # Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getCost()I

    move-result v0

    invoke-virtual {p2}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getCost()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 167
    const/4 v0, -0x1

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getCost()I

    move-result v0

    invoke-virtual {p2}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getCost()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 169
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/soft/android/appinstaller/core/SMSComparator;->compare(Lcom/soft/android/appinstaller/core/SmsInfo$SMS;Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)I

    move-result v0

    return v0
.end method
