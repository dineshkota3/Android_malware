.class public Lcom/energysource/szj/embeded/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "DateUtils.java"

    sput-object v0, Lcom/energysource/szj/embeded/utils/DateUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DateToString(Ljava/util/Date;Ljava/lang/String;II)Ljava/lang/String;
    .locals 11
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "dateDev"    # Ljava/lang/String;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I

    .prologue
    .line 44
    const-string v7, ""

    .line 45
    .local v7, "result":Ljava/lang/String;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 46
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 47
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 48
    .local v6, "iYear":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit8 v4, v9, 0x1

    .line 49
    .local v4, "iMonth":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 50
    .local v1, "iDate":I
    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 51
    .local v2, "iHour":I
    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 52
    .local v3, "iMinute":I
    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 53
    .local v5, "iSecond":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "sYear":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 74
    :goto_0
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    .line 90
    :goto_1
    :pswitch_1
    return-object v7

    .line 58
    :pswitch_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 60
    goto :goto_0

    .line 62
    :pswitch_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    goto :goto_0

    .line 66
    :pswitch_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    goto :goto_0

    .line 78
    :pswitch_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 80
    goto/16 :goto_1

    .line 82
    :pswitch_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 83
    goto/16 :goto_1

    .line 85
    :pswitch_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lcom/energysource/szj/embeded/utils/DateUtils;->addZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 74
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static addZero(I)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # I

    .prologue
    .line 100
    const-string v0, ""

    .line 101
    .local v0, "result":Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formateStringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 23
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, "sf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 28
    .end local v1    # "sf":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 25
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/energysource/szj/embeded/utils/DateUtils;->TAG:Ljava/lang/String;

    const-string v3, "formateStringToDateException:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static getDateNow()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 118
    .local v2, "t":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 119
    .local v0, "da":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getDatebyLong(J)Ljava/lang/String;
    .locals 3
    .param p0, "cur"    # J

    .prologue
    .line 129
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 133
    .local v0, "da":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDistanceDays(Ljava/lang/String;Ljava/lang/String;)J
    .locals 14
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyy-MM-dd"

    invoke-direct {v2, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, "df":Ljava/text/DateFormat;
    const-wide/16 v0, 0x0

    .line 148
    .local v0, "days":J
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 149
    .local v6, "one":Ljava/util/Date;
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 150
    .local v11, "two":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 151
    .local v7, "time1":J
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 153
    .local v9, "time2":J
    cmp-long v12, v7, v9

    if-gez v12, :cond_0

    .line 154
    sub-long v3, v9, v7

    .line 158
    .local v3, "diff":J
    :goto_0
    const-wide/32 v12, 0x5265c00

    div-long v0, v3, v12
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v3    # "diff":J
    .end local v6    # "one":Ljava/util/Date;
    .end local v7    # "time1":J
    .end local v9    # "time2":J
    .end local v11    # "two":Ljava/util/Date;
    :goto_1
    return-wide v0

    .line 156
    .restart local v6    # "one":Ljava/util/Date;
    .restart local v7    # "time1":J
    .restart local v9    # "time2":J
    .restart local v11    # "two":Ljava/util/Date;
    :cond_0
    sub-long v3, v7, v9

    .restart local v3    # "diff":J
    goto :goto_0

    .line 159
    .end local v3    # "diff":J
    .end local v6    # "one":Ljava/util/Date;
    .end local v7    # "time1":J
    .end local v9    # "time2":J
    .end local v11    # "two":Ljava/util/Date;
    :catch_0
    move-exception v12

    move-object v5, v12

    .line 160
    .local v5, "e":Ljava/text/ParseException;
    sget-object v12, Lcom/energysource/szj/embeded/utils/DateUtils;->TAG:Ljava/lang/String;

    const-string v13, "getDistanceDays:"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getDistanceTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 211
    .local v5, "df":Ljava/text/DateFormat;
    const-wide/16 v3, 0x0

    .line 212
    .local v3, "day":J
    const-wide/16 v7, 0x0

    .line 213
    .local v7, "hour":J
    const-wide/16 v9, 0x0

    .line 214
    .local v9, "min":J
    const-wide/16 v11, 0x0

    .line 216
    .local v11, "sec":J
    :try_start_0
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 217
    .local p0, "one":Ljava/util/Date;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 218
    .local v5, "two":Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .line 219
    .end local p1    # "str2":Ljava/lang/String;
    .local p0, "time1":J
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 221
    .local v5, "time2":J
    cmp-long v13, p0, v5

    if-gez v13, :cond_0

    .line 222
    sub-long p0, v5, p0

    .local p0, "diff":J
    move-wide/from16 v5, p0

    .line 226
    .end local p0    # "diff":J
    .local v5, "diff":J
    :goto_0
    const-wide/32 p0, 0x5265c00

    div-long p0, v5, p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v3    # "day":J
    .local p0, "day":J
    const-wide/32 v3, 0x36ee80

    :try_start_1
    div-long v3, v5, v3
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v7, 0x18

    mul-long v7, v7, p0

    sub-long/2addr v3, v7

    .line 228
    .end local v7    # "hour":J
    .local v3, "hour":J
    const-wide/32 v7, 0xea60

    :try_start_2
    div-long v7, v5, v7
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v9, 0x18

    mul-long v9, v9, p0

    const-wide/16 v13, 0x3c

    mul-long/2addr v9, v13

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v3

    sub-long/2addr v7, v9

    .line 229
    .end local v9    # "min":J
    .local v7, "min":J
    const-wide/16 v9, 0x3e8

    :try_start_3
    div-long/2addr v5, v9
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v5    # "diff":J
    const-wide/16 v9, 0x18

    mul-long v9, v9, p0

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    sub-long/2addr v5, v9

    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v3

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    sub-long/2addr v5, v9

    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v7

    sub-long/2addr v5, v9

    .end local v11    # "sec":J
    .local v5, "sec":J
    move-wide v15, v5

    .end local v5    # "sec":J
    .local v15, "sec":J
    move-wide v5, v7

    .end local v7    # "min":J
    .local v5, "min":J
    move-wide v7, v15

    .line 233
    .end local v15    # "sec":J
    .local v7, "sec":J
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v9

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "day":J
    const-string p1, "\u5929"

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u5c0f\u65f6"

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u5206"

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u79d2"

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 224
    .local v3, "day":J
    .local v5, "time2":J
    .local v7, "hour":J
    .restart local v9    # "min":J
    .restart local v11    # "sec":J
    .local p0, "time1":J
    :cond_0
    sub-long p0, p0, v5

    .local p0, "diff":J
    move-wide/from16 v5, p0

    .end local p0    # "diff":J
    .local v5, "diff":J
    goto :goto_0

    .line 230
    .end local v5    # "diff":J
    :catch_0
    move-exception p0

    move-object/from16 v15, p0

    move-wide/from16 p0, v3

    .end local v3    # "day":J
    .local p0, "day":J
    move-wide v4, v7

    .end local v7    # "hour":J
    .local v4, "hour":J
    move-object v3, v15

    move-wide v6, v9

    .line 231
    .end local v9    # "min":J
    .local v3, "e":Ljava/text/ParseException;
    .local v6, "min":J
    :goto_2
    sget-object v8, Lcom/energysource/szj/embeded/utils/DateUtils;->TAG:Ljava/lang/String;

    const-string v9, "getDistanceTime:"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v15, v6

    .end local v6    # "min":J
    .local v15, "min":J
    move-wide v7, v11

    .end local v11    # "sec":J
    .local v7, "sec":J
    move-wide/from16 v17, v4

    .end local v4    # "hour":J
    .local v17, "hour":J
    move-wide/from16 v3, v17

    .end local v17    # "hour":J
    .local v3, "hour":J
    move-wide v5, v15

    .end local v15    # "min":J
    .local v5, "min":J
    goto :goto_1

    .line 230
    .end local v3    # "hour":J
    .local v5, "diff":J
    .local v7, "hour":J
    .restart local v9    # "min":J
    .restart local v11    # "sec":J
    :catch_1
    move-exception v3

    move-wide v4, v7

    .end local v5    # "diff":J
    .end local v7    # "hour":J
    .restart local v4    # "hour":J
    move-wide v6, v9

    .end local v9    # "min":J
    .restart local v6    # "min":J
    goto :goto_2

    .end local v4    # "hour":J
    .end local v6    # "min":J
    .restart local v3    # "hour":J
    .restart local v5    # "diff":J
    .restart local v9    # "min":J
    :catch_2
    move-exception v5

    move-wide v6, v9

    .end local v5    # "diff":J
    .end local v9    # "min":J
    .restart local v6    # "min":J
    move-object v15, v5

    move-wide/from16 v16, v3

    .end local v3    # "hour":J
    .local v16, "hour":J
    move-wide/from16 v4, v16

    .end local v16    # "hour":J
    .restart local v4    # "hour":J
    move-object v3, v15

    goto :goto_2

    .end local v4    # "hour":J
    .end local v6    # "min":J
    .restart local v3    # "hour":J
    .restart local v5    # "diff":J
    .local v7, "min":J
    :catch_3
    move-exception v5

    move-object v15, v5

    move-wide/from16 v16, v7

    .end local v7    # "min":J
    .local v16, "min":J
    move-wide/from16 v6, v16

    .end local v5    # "diff":J
    .end local v16    # "min":J
    .restart local v6    # "min":J
    move-wide/from16 v18, v3

    .end local v3    # "hour":J
    .local v18, "hour":J
    move-wide/from16 v4, v18

    .end local v18    # "hour":J
    .restart local v4    # "hour":J
    move-object v3, v15

    goto :goto_2
.end method

.method public static getDistanceTimes(Ljava/lang/String;Ljava/lang/String;)[J
    .locals 19
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 175
    .local v4, "df":Ljava/text/DateFormat;
    const-wide/16 v2, 0x0

    .line 176
    .local v2, "day":J
    const-wide/16 v6, 0x0

    .line 177
    .local v6, "hour":J
    const-wide/16 v8, 0x0

    .line 178
    .local v8, "min":J
    const-wide/16 v10, 0x0

    .line 180
    .local v10, "sec":J
    :try_start_0
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 181
    .local p0, "one":Ljava/util/Date;
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 182
    .local v4, "two":Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .line 183
    .end local p1    # "str2":Ljava/lang/String;
    .local p0, "time1":J
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 185
    .local v4, "time2":J
    cmp-long v12, p0, v4

    if-gez v12, :cond_0

    .line 186
    sub-long p0, v4, p0

    .local p0, "diff":J
    move-wide/from16 v4, p0

    .line 190
    .end local p0    # "diff":J
    .local v4, "diff":J
    :goto_0
    const-wide/32 p0, 0x5265c00

    div-long p0, v4, p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v2    # "day":J
    .local p0, "day":J
    const-wide/32 v2, 0x36ee80

    :try_start_1
    div-long v2, v4, v2
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v6, 0x18

    mul-long v6, v6, p0

    sub-long/2addr v2, v6

    .line 192
    .end local v6    # "hour":J
    .local v2, "hour":J
    const-wide/32 v6, 0xea60

    :try_start_2
    div-long v6, v4, v6
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v8, 0x18

    mul-long v8, v8, p0

    const-wide/16 v12, 0x3c

    mul-long/2addr v8, v12

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    sub-long/2addr v6, v8

    .line 193
    .end local v8    # "min":J
    .local v6, "min":J
    const-wide/16 v8, 0x3e8

    :try_start_3
    div-long/2addr v4, v8
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v4    # "diff":J
    const-wide/16 v8, 0x18

    mul-long v8, v8, p0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    .end local v10    # "sec":J
    .local v4, "sec":J
    move-wide v14, v4

    .end local v4    # "sec":J
    .local v14, "sec":J
    move-wide v4, v6

    .end local v6    # "min":J
    .local v4, "min":J
    move-wide v6, v14

    .line 197
    .end local v14    # "sec":J
    .local v6, "sec":J
    :goto_1
    const/4 v8, 0x4

    new-array v8, v8, [J

    const/4 v9, 0x0

    aput-wide p0, v8, v9

    const/16 p0, 0x1

    aput-wide v2, v8, p0

    .end local p0    # "day":J
    const/16 p0, 0x2

    aput-wide v4, v8, p0

    const/16 p0, 0x3

    aput-wide v6, v8, p0

    .line 198
    .local v8, "times":[J
    return-object v8

    .line 188
    .local v2, "day":J
    .local v4, "time2":J
    .local v6, "hour":J
    .local v8, "min":J
    .restart local v10    # "sec":J
    .local p0, "time1":J
    :cond_0
    sub-long p0, p0, v4

    .local p0, "diff":J
    move-wide/from16 v4, p0

    .end local p0    # "diff":J
    .local v4, "diff":J
    goto :goto_0

    .line 194
    .end local v4    # "diff":J
    :catch_0
    move-exception p0

    move-object/from16 v14, p0

    move-wide/from16 p0, v2

    .end local v2    # "day":J
    .local p0, "day":J
    move-wide v3, v6

    .end local v6    # "hour":J
    .local v3, "hour":J
    move-object v2, v14

    move-wide v5, v8

    .line 195
    .end local v8    # "min":J
    .local v2, "e":Ljava/text/ParseException;
    .local v5, "min":J
    :goto_2
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    move-wide v14, v5

    .end local v5    # "min":J
    .local v14, "min":J
    move-wide v6, v10

    .end local v10    # "sec":J
    .local v6, "sec":J
    move-wide/from16 v16, v3

    .end local v3    # "hour":J
    .local v16, "hour":J
    move-wide/from16 v2, v16

    .end local v16    # "hour":J
    .local v2, "hour":J
    move-wide v4, v14

    .end local v14    # "min":J
    .local v4, "min":J
    goto :goto_1

    .line 194
    .end local v2    # "hour":J
    .local v4, "diff":J
    .local v6, "hour":J
    .restart local v8    # "min":J
    .restart local v10    # "sec":J
    :catch_1
    move-exception v2

    move-wide v3, v6

    .end local v4    # "diff":J
    .end local v6    # "hour":J
    .restart local v3    # "hour":J
    move-wide v5, v8

    .end local v8    # "min":J
    .restart local v5    # "min":J
    goto :goto_2

    .end local v3    # "hour":J
    .end local v5    # "min":J
    .restart local v2    # "hour":J
    .restart local v4    # "diff":J
    .restart local v8    # "min":J
    :catch_2
    move-exception v4

    move-wide v5, v8

    .end local v4    # "diff":J
    .end local v8    # "min":J
    .restart local v5    # "min":J
    move-object v14, v4

    move-wide v15, v2

    .end local v2    # "hour":J
    .local v15, "hour":J
    move-wide v3, v15

    .end local v15    # "hour":J
    .restart local v3    # "hour":J
    move-object v2, v14

    goto :goto_2

    .end local v3    # "hour":J
    .end local v5    # "min":J
    .restart local v2    # "hour":J
    .restart local v4    # "diff":J
    .local v6, "min":J
    :catch_3
    move-exception v4

    move-object v14, v4

    move-wide v15, v6

    .end local v6    # "min":J
    .local v15, "min":J
    move-wide v5, v15

    .end local v4    # "diff":J
    .end local v15    # "min":J
    .restart local v5    # "min":J
    move-wide/from16 v17, v2

    .end local v2    # "hour":J
    .local v17, "hour":J
    move-wide/from16 v3, v17

    .end local v17    # "hour":J
    .restart local v3    # "hour":J
    move-object v2, v14

    goto :goto_2
.end method
